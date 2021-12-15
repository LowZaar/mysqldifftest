using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
namespace mysqldifftest
{
    public partial class Form1 : Form
    {
        private String execPath { get; set; }

        private String oAddr { get; set; }

        private String oUser { get; set; }

        private String oPwd { get; set; }

        private String originTable { get; set; }

        private String tAddr { get; set; }

        private String tUser { get; set; }

        private String tPwd { get; set; }

        private String targetTable { get; set; }

        private String cfgPath { get; set; }

        public Form1()
        {
            InitializeComponent();

            //originAddr.Text = "localhost";
            //originUser.Text = "root";
            //originPwd.Text = "m4n5mn45";
            //oTable.Text = "sistemaversatil";

            //targetAddr.Text = "localhost";
            //targetUser.Text = "root";
            //targetPwd.Text = "m4n5mn45";
            //tTable.Text = "sistemaversatil_dbtest";


            execPath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            cfgPath = execPath + @"\config.cfg";


            if (!File.Exists(cfgPath))
            {
                FileStream fileStream = File.Open(cfgPath, FileMode.Create);
                StreamWriter sw = new StreamWriter(fileStream);

                sw.WriteLine("#Arquivo Configuração");
                sw.WriteLine("addrOrigem=");
                sw.WriteLine("userOrigem=");
                sw.WriteLine("pwdOrigem=");
                sw.WriteLine("tableOrigem=");
                sw.WriteLine("addrAlvo=");
                sw.WriteLine("userAlvo=");
                sw.WriteLine("pwdAlvo=");
                sw.WriteLine("tableAlvo=");

                sw.Close();
                fileStream.Close();

            }
            else
            {
                String[] lines = File.ReadAllLines(cfgPath);
                //pegando valores do arquivo 

                oAddr = lines[1].Replace("addrOrigem=", "").Trim();
                oUser = lines[2].Replace("userOrigem=", "").Trim();
                oPwd = lines[3].Replace("pwdOrigem=", "").Trim();
                originTable = lines[4].Replace("tableOrigem=", "").Trim();
                
                tAddr = lines[5].Replace("addrAlvo=", "").Trim();
                tUser = lines[6].Replace("userAlvo=", "").Trim();
                tPwd = lines[7].Replace("pwdAlvo=", "").Trim();
                targetTable = lines[8].Replace("tableAlvo=", "").Trim();

                originAddr.Text = oAddr;
                originUser.Text = oUser;
                originPwd.Text = oPwd;
                oTable.Text = originTable;

                targetAddr.Text = tAddr;
                targetUser.Text = tUser;
                targetPwd.Text = tPwd;
                tTable.Text = targetTable;

            }
        }



        private void button1_Click(object sender, EventArgs e)
        {
            // limpando buffer do textArea
            textOutput.Text = "";

            


            Console.WriteLine(execPath);
            string path = execPath + @"\mysqldiff\mysqldiff.exe";
            string filePath = Path.Combine(Environment.CurrentDirectory, @"mysqldiff\");

            oAddr = originAddr.Text;
            oUser = originUser.Text;
            oPwd = originPwd.Text;
            originTable = oTable.Text;

            tAddr = targetAddr.Text;
            tUser = targetUser.Text;
            tPwd = targetPwd.Text;
            targetTable = tTable.Text;

            String outputPath = execPath + @"\output.sql";
            String createFile = execPath + @"\Script 2.0.sql";

            FileStream fileStream = File.Open(cfgPath, FileMode.Create);
            StreamWriter sw = new StreamWriter(fileStream);

            sw.WriteLine("#Arquivo Configuração");
            sw.WriteLine("addrOrigem=" + oAddr);
            sw.WriteLine("userOrigem=" + oUser);
            sw.WriteLine("pwdOrigem=" + oPwd);
            sw.WriteLine("tableOrigem=" + originTable);
            sw.WriteLine("addrAlvo=" + tAddr);
            sw.WriteLine("userAlvo=" + tUser);
            sw.WriteLine("pwdAlvo=" + tPwd);
            sw.WriteLine("tableAlvo=" + targetTable);

            sw.Close();
            fileStream.Close();

            //string connStr = "server=localhost;user=root;database=TestDB;port=3306;password=******";

            string connStr = "server=" + tAddr + ";user=" + tUser + ";database=" + targetTable + ";port=3306;password=" + tPwd + ";";
            MySqlConnection connect = new MySqlConnection(connStr);

            MySqlCommand createTables = new MySqlCommand(File.ReadAllText(createFile), connect);
            connect.Open();
            createTables.CommandTimeout = 0;
            createTables.ExecuteNonQuery();

            textOutput.Text += "# Criando Tabelas nao existentes";

            connect.Close();

            if (originPwd.Text != "")
            {
                oPwd = ":" + oPwd;
            }

            if (targetPwd.Text != "")
            {
                tPwd = ":" + tPwd;
            }




            //"mysqldiff.exe --force --difftype=sql --server1=root@localhost --server2=root@localhost testdiff:test > test.txt"

            //System.Diagnostics.Process.Start(path, " --force --difftype=sql --server1="+ oUser + oPwd + "@" + oAddr + " " + "--server2=" + tUser + tPwd + "@" + tAddr + " " + tTbl + ":" + oTbl + outputFile);

            ProcessStartInfo process = new ProcessStartInfo(path, "--force --difftype=sql --server1=" + oUser + oPwd +
                "@" + oAddr + " " + "--server2=" + tUser + tPwd + "@" + tAddr + " " + targetTable + ":" + originTable + " --changes-for=server2");

            process.UseShellExecute = false;
            process.ErrorDialog = false;
            process.CreateNoWindow = true;
            process.RedirectStandardError = true;
            process.RedirectStandardInput = true;
            process.RedirectStandardOutput = true;


            Process processCmd = new Process();
            processCmd.StartInfo = process;
            bool processStarted = processCmd.Start();
            StreamReader outputReader = new StreamReader(processCmd.StandardOutput.BaseStream, System.Text.Encoding.UTF8, true);

            // StreamReader outputReader = processCmd.StandardOutput;

            if (!disableComms.Checked)
            {
                textOutput.Text += "#Inicio do script \n";
                textOutput.Text += "#Argumentos: " + process.Arguments + " \n";

            }


            FileStream fs = File.Open(outputPath, FileMode.Create);
            StreamWriter streamw = new StreamWriter(fs);

            while (!outputReader.EndOfStream)
            {

                String line = outputReader.ReadLine() + "\n";
                line = line.Replace("''", "'");

                if(line.Contains("date NULL DEFAULT") )
                {
                    line = line.Replace("'","");
                    textOutput.Text += line;
                    continue;
                }

                if (line.Contains("int"))
                {
                    if(line.Contains("NULL DEFAULT 'NULL'"))
                    {
                        line = line.Replace("'", "");
                        textOutput.Text += line;
                        continue;
                    }
                }

                if (line.Contains("decimal("))
                {
                    line = line.Replace("'", "");
                    textOutput.Text += line;
                    continue;
                }

                if (line.Contains("varchar(2)"))
                {
                    line = line.Replace("'","");
                    textOutput.Text += line;
                    continue;
                }

                if (line.Contains("time NULL DEFAULT"))
                {
                    line = line.Replace("'", "");
                    textOutput.Text += line;
                    continue;
                }

                if (disableComms.Checked)
                {

                    if (line.First() == '#')
                    {
                        continue;
                    }
                    else
                    {
                        textOutput.Text += line;
                    }
                }
                else
                {
                    textOutput.Text += line;
                }

                if (printToFile.Checked)
                {
                    streamw.Write(line);

                }

            }
            streamw.Close();
            fs.Close();

            if (processCmd.HasExited)
            {
                try
                {
                    //var ddl = File.ReadAllText(outputPath);
                    //using (var command = new MySqlCommand(ddl, connect))
                    //{
                    //    connect.Open();
                    //    command.ExecuteNonQuery();

                    //}


                    //connect.Open();
                    //textOutput.SelectionStart = textOutput.Text.Length;
                    //textOutput.ScrollToCaret();
                    //string query = File.ReadAllText(outputPath);
                    //textOutput.Clear();
                    //textOutput.Text += "#Lendo do arquivo";
                    //textOutput.Text += query;
                    //MySqlCommand cmd = new MySqlCommand(query, connect);
                    //cmd.ExecuteNonQuery();

                    //textOutput.Text += "# numero de linhas afetadas >> " + cmd.ExecuteNonQuery();
                    //connect.Close();


                }
                catch (Exception err)
                {
                    textOutput.Text += err.ToString();
                }

            }

        }

        private void textOutput_Click(object sender, EventArgs e)
        {
            textOutput.SelectAll();
            textOutput.Copy();
        }
    }
}
