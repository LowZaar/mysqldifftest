
namespace mysqldifftest
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.originAddr = new System.Windows.Forms.TextBox();
            this.originUser = new System.Windows.Forms.TextBox();
            this.originPwd = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.targetAddr = new System.Windows.Forms.TextBox();
            this.targetUser = new System.Windows.Forms.TextBox();
            this.targetPwd = new System.Windows.Forms.TextBox();
            this.textOutput = new System.Windows.Forms.RichTextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.printToFile = new System.Windows.Forms.CheckBox();
            this.oTable = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.tTable = new System.Windows.Forms.TextBox();
            this.disableComms = new System.Windows.Forms.CheckBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // originAddr
            // 
            this.originAddr.Location = new System.Drawing.Point(42, 91);
            this.originAddr.Name = "originAddr";
            this.originAddr.Size = new System.Drawing.Size(191, 20);
            this.originAddr.TabIndex = 1;
            // 
            // originUser
            // 
            this.originUser.Location = new System.Drawing.Point(42, 156);
            this.originUser.Name = "originUser";
            this.originUser.Size = new System.Drawing.Size(127, 20);
            this.originUser.TabIndex = 2;
            // 
            // originPwd
            // 
            this.originPwd.Location = new System.Drawing.Point(198, 156);
            this.originPwd.Name = "originPwd";
            this.originPwd.PasswordChar = '*';
            this.originPwd.Size = new System.Drawing.Size(131, 20);
            this.originPwd.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(42, 31);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(122, 20);
            this.label2.TabIndex = 6;
            this.label2.Text = "Servidor Origem";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(42, 266);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(101, 20);
            this.label3.TabIndex = 7;
            this.label3.Text = "Servidor Alvo";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label4.Location = new System.Drawing.Point(39, 75);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Endereço";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label5.Location = new System.Drawing.Point(39, 140);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(43, 13);
            this.label5.TabIndex = 9;
            this.label5.Text = "Usuário";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label6.Location = new System.Drawing.Point(195, 140);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(38, 13);
            this.label6.TabIndex = 10;
            this.label6.Text = "Senha";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label1.Location = new System.Drawing.Point(195, 363);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 13);
            this.label1.TabIndex = 16;
            this.label1.Text = "Senha";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label7.Location = new System.Drawing.Point(39, 363);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(43, 13);
            this.label7.TabIndex = 15;
            this.label7.Text = "Usuario";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label8.Location = new System.Drawing.Point(39, 298);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(53, 13);
            this.label8.TabIndex = 14;
            this.label8.Text = "Endereço";
            // 
            // targetAddr
            // 
            this.targetAddr.Location = new System.Drawing.Point(42, 314);
            this.targetAddr.Name = "targetAddr";
            this.targetAddr.Size = new System.Drawing.Size(191, 20);
            this.targetAddr.TabIndex = 5;
            // 
            // targetUser
            // 
            this.targetUser.Location = new System.Drawing.Point(42, 379);
            this.targetUser.Name = "targetUser";
            this.targetUser.Size = new System.Drawing.Size(127, 20);
            this.targetUser.TabIndex = 6;
            // 
            // targetPwd
            // 
            this.targetPwd.Location = new System.Drawing.Point(198, 379);
            this.targetPwd.Name = "targetPwd";
            this.targetPwd.PasswordChar = '*';
            this.targetPwd.Size = new System.Drawing.Size(131, 20);
            this.targetPwd.TabIndex = 7;
            // 
            // textOutput
            // 
            this.textOutput.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textOutput.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textOutput.Location = new System.Drawing.Point(470, 91);
            this.textOutput.Name = "textOutput";
            this.textOutput.Size = new System.Drawing.Size(500, 417);
            this.textOutput.TabIndex = 18;
            this.textOutput.Text = "";
            this.textOutput.Click += new System.EventHandler(this.textOutput_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(467, 75);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(39, 13);
            this.label9.TabIndex = 19;
            this.label9.Text = "Output";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(895, 523);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 9;
            this.button1.Text = "Gerar Script";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // printToFile
            // 
            this.printToFile.AutoSize = true;
            this.printToFile.Checked = true;
            this.printToFile.CheckState = System.Windows.Forms.CheckState.Checked;
            this.printToFile.Location = new System.Drawing.Point(448, 35);
            this.printToFile.Name = "printToFile";
            this.printToFile.Size = new System.Drawing.Size(111, 17);
            this.printToFile.TabIndex = 10;
            this.printToFile.Text = "Printar em arquivo";
            this.printToFile.UseVisualStyleBackColor = true;
            // 
            // oTable
            // 
            this.oTable.Location = new System.Drawing.Point(42, 224);
            this.oTable.Name = "oTable";
            this.oTable.Size = new System.Drawing.Size(127, 20);
            this.oTable.TabIndex = 4;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label10.Location = new System.Drawing.Point(39, 208);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(40, 13);
            this.label10.TabIndex = 23;
            this.label10.Text = "Tabela";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label11.Location = new System.Drawing.Point(39, 432);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(40, 13);
            this.label11.TabIndex = 25;
            this.label11.Text = "Tabela";
            // 
            // tTable
            // 
            this.tTable.Location = new System.Drawing.Point(42, 448);
            this.tTable.Name = "tTable";
            this.tTable.Size = new System.Drawing.Size(127, 20);
            this.tTable.TabIndex = 8;
            // 
            // disableComms
            // 
            this.disableComms.AutoSize = true;
            this.disableComms.Checked = true;
            this.disableComms.CheckState = System.Windows.Forms.CheckState.Checked;
            this.disableComms.Location = new System.Drawing.Point(448, 12);
            this.disableComms.Name = "disableComms";
            this.disableComms.Size = new System.Drawing.Size(136, 17);
            this.disableComms.TabIndex = 11;
            this.disableComms.Text = "Desabilitar Comentarios";
            this.disableComms.UseVisualStyleBackColor = true;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ControlLight;
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Location = new System.Drawing.Point(-4, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(446, 576);
            this.panel1.TabIndex = 27;
            // 
            // Form1
            // 
            this.ClientSize = new System.Drawing.Size(1020, 572);
            this.Controls.Add(this.disableComms);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.tTable);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.oTable);
            this.Controls.Add(this.printToFile);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.textOutput);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.targetAddr);
            this.Controls.Add(this.targetUser);
            this.Controls.Add(this.targetPwd);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.originAddr);
            this.Controls.Add(this.originUser);
            this.Controls.Add(this.originPwd);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "Form1";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox originAddr;
        private System.Windows.Forms.TextBox originUser;
        private System.Windows.Forms.TextBox originPwd;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox targetAddr;
        private System.Windows.Forms.TextBox targetUser;
        private System.Windows.Forms.TextBox targetPwd;
        private System.Windows.Forms.RichTextBox textOutput;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.CheckBox printToFile;
        private System.Windows.Forms.TextBox oTable;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox tTable;
        private System.Windows.Forms.CheckBox disableComms;
        private System.Windows.Forms.Panel panel1;
    }
}

