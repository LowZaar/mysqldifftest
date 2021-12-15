-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- VersÃ£o do servidor:           5.5.21 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL VersÃ£o:              9.4.0.5127
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET GLOBAL innodb_default_row_format='dynamic';
SET SESSION innodb_strict_mode=OFF;

-- Copiando estrutura do banco de dados para sistemaversatil_dbtest_dbtest
CREATE DATABASE IF NOT EXISTS `sistemaversatil_dbtest` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sistemaversatil_dbtest`;

-- Copiando estrutura para tabela sistemaversatil_dbtest.abastecimentos
CREATE TABLE IF NOT EXISTS `abastecimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocentrodecusto` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `postodecombustivel` varchar(50) DEFAULT NULL,
  `odometro` double(10,3) DEFAULT '0.000',
  `litros` double(10,3) DEFAULT '0.000',
  `valorlitro` double(10,3) DEFAULT '0.000',
  `media` double(10,3) DEFAULT '0.000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentoatendimentostmp
CREATE TABLE IF NOT EXISTS `acompanhamentoatendimentostmp` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `obs` varchar(50) DEFAULT NULL,
  `praticado` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentrega
CREATE TABLE IF NOT EXISTS `acompanhamentodeentrega` (
  `codigo` varchar(50) DEFAULT NULL,
  `nomeacompanhamento` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Em Aberto',
  `codigointerno` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) NOT NULL DEFAULT '1',
  `colaborador` varchar(50) DEFAULT NULL,
  `modalidade` varchar(50) DEFAULT NULL,
  `edital` varchar(50) DEFAULT NULL,
  `processo` varchar(50) DEFAULT NULL,
  `dataabertura` date DEFAULT NULL,
  `dataassinatura` date DEFAULT NULL,
  `validadeata` date DEFAULT NULL,
  `objeto` varchar(50) DEFAULT NULL,
  `validadedositens` date DEFAULT NULL,
  `ata` varchar(50) DEFAULT NULL,
  `pregao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigointerno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentregaatendimentos
CREATE TABLE IF NOT EXISTS `acompanhamentodeentregaatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentregaatendimentosentradas
CREATE TABLE IF NOT EXISTS `acompanhamentodeentregaatendimentosentradas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentregaauditoria
CREATE TABLE IF NOT EXISTS `acompanhamentodeentregaauditoria` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `valormercadoria` decimal(10,2) DEFAULT NULL,
  `pesoliquido` decimal(10,2) DEFAULT NULL,
  `quantidadeatual` decimal(10,2) DEFAULT NULL,
  `valormercadoriaatual` decimal(10,2) DEFAULT NULL,
  `pesoliquidoatual` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentregainclusao
CREATE TABLE IF NOT EXISTS `acompanhamentodeentregainclusao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentreganovoatendimento
CREATE TABLE IF NOT EXISTS `acompanhamentodeentreganovoatendimento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `praticado` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentregareposicao
CREATE TABLE IF NOT EXISTS `acompanhamentodeentregareposicao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentregaretiradas
CREATE TABLE IF NOT EXISTS `acompanhamentodeentregaretiradas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentregasaldotmp
CREATE TABLE IF NOT EXISTS `acompanhamentodeentregasaldotmp` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.acompanhamentodeentregatmp
CREATE TABLE IF NOT EXISTS `acompanhamentodeentregatmp` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.agenciasbancarias
CREATE TABLE IF NOT EXISTS `agenciasbancarias` (
  `codigo` varchar(10) NOT NULL,
  `agencia` varchar(25) DEFAULT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `gerente` varchar(130) DEFAULT NULL,
  `telefone` varchar(13) DEFAULT NULL,
  `banco` varchar(65) DEFAULT NULL,
  `observacoes` varchar(130) DEFAULT NULL,
  `cidade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.aliquotascf
CREATE TABLE IF NOT EXISTS `aliquotascf` (
  `impressora` varchar(20) DEFAULT NULL,
  `aliquota` varchar(45) DEFAULT NULL,
  `codigonaimpressora` varchar(45) DEFAULT NULL,
  `codigo` varchar(10) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.apontamentoautomatico
CREATE TABLE IF NOT EXISTS `apontamentoautomatico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `produtoalancar` varchar(50) DEFAULT NULL,
  `setoralancar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.apontamentocontatos
CREATE TABLE IF NOT EXISTS `apontamentocontatos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contato` varchar(50) DEFAULT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `fim` datetime DEFAULT NULL,
  `minutos` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.apontamentoproducaoeventos
CREATE TABLE IF NOT EXISTS `apontamentoproducaoeventos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `apontamento` varchar(50) DEFAULT NULL,
  `evento` varchar(50) DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `fim` datetime DEFAULT NULL,
  `minutos` double DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `datalancamentoevento` date DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `lote` varchar(50) DEFAULT '',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.apontamentoproducaoplanejamento
CREATE TABLE IF NOT EXISTS `apontamentoproducaoplanejamento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `quantidadeplanejada` decimal(10,2) DEFAULT NULL,
  `quantidadeentregue` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  `planejamentoproducao` varchar(50) DEFAULT NULL,
  `mapadecarga` varchar(50) DEFAULT NULL,
  `lote` varchar(50) DEFAULT '',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.arquivodeeventos
CREATE TABLE IF NOT EXISTS `arquivodeeventos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT '0',
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `operacao` varchar(2000) DEFAULT '0',
  `atendimento` varchar(50) DEFAULT '0',
  `colaborador` varchar(50) DEFAULT '0',
  `produto` varchar(50) DEFAULT '0',
  `conta` varchar(50) DEFAULT '0',
  `motivoliberacao` varchar(100) DEFAULT NULL,
  `itematendimento` varchar(50) DEFAULT NULL,
  `codigooperacaointerna` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=18343553 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentos
CREATE TABLE IF NOT EXISTS `atendimentos` (
  `codigo` varchar(50) NOT NULL DEFAULT '',
  `codigocolaborador` varchar(25) DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `horacadastro` time DEFAULT NULL,
  `datafaturamento` date DEFAULT NULL,
  `numeropedido` varchar(25) DEFAULT NULL,
  `observacoes` varchar(5000) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `codigovendedor` varchar(20) DEFAULT NULL,
  `tabelapadrao` varchar(25) DEFAULT NULL,
  `quantidadeitens` decimal(10,4) DEFAULT NULL,
  `quantidadeprodutos` decimal(10,4) DEFAULT NULL,
  `subtotal` decimal(15,4) DEFAULT NULL,
  `valortotal` decimal(15,4) DEFAULT NULL,
  `codigocondicaopagamento` varchar(10) DEFAULT NULL,
  `percentualdesconto` decimal(10,4) DEFAULT NULL,
  `valordesconto` decimal(10,4) DEFAULT NULL,
  `percentualentrada` decimal(10,4) DEFAULT NULL,
  `valorentrada` decimal(10,4) DEFAULT NULL,
  `valorprazo` decimal(10,4) DEFAULT NULL,
  `numeroparcelas` varchar(25) DEFAULT NULL,
  `intervaloparcelas` varchar(50) DEFAULT NULL,
  `codigotipodocumento` varchar(10) DEFAULT NULL,
  `localcobranca` varchar(10) DEFAULT NULL,
  `entradacomoadiantamento` varchar(3) DEFAULT NULL,
  `caixa` varchar(3) DEFAULT NULL,
  `modelonf` varchar(3) DEFAULT NULL,
  `numeronf` varchar(100) DEFAULT NULL,
  `serienf` varchar(4) DEFAULT NULL,
  `codigonaturezaoperacao` varchar(10) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `inscricaoestadualsubstituto` varchar(25) DEFAULT NULL,
  `dataemissao` date DEFAULT NULL,
  `horaemissao` varchar(25) DEFAULT NULL,
  `codigotransportadora` varchar(10) DEFAULT NULL,
  `entregue` varchar(3) DEFAULT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `ufplaca` varchar(2) DEFAULT NULL,
  `frete` varchar(50) DEFAULT NULL,
  `valorfrete` decimal(10,4) DEFAULT NULL,
  `pesoliquido` decimal(10,4) DEFAULT NULL,
  `pesobruto` decimal(10,4) DEFAULT NULL,
  `conhecimento` varchar(25) DEFAULT NULL,
  `basecalculoicms` decimal(10,4) DEFAULT NULL,
  `valoricms` decimal(10,4) DEFAULT NULL,
  `valoricmsst` decimal(10,4) DEFAULT NULL,
  `valorseguro` decimal(10,4) DEFAULT NULL,
  `despesas` decimal(10,4) DEFAULT NULL,
  `totalipi` decimal(10,4) DEFAULT NULL,
  `aliquotaiss` decimal(10,4) DEFAULT NULL,
  `totalnf` decimal(15,4) DEFAULT NULL,
  `quantidade` varchar(25) DEFAULT NULL,
  `especie` varchar(25) DEFAULT NULL,
  `marca` varchar(25) DEFAULT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `totalprodutos` decimal(15,4) DEFAULT NULL,
  `totalservicos` decimal(15,4) DEFAULT NULL,
  `observacoesnota` varchar(2000) DEFAULT NULL,
  `substitutoitens` varchar(300) DEFAULT NULL,
  `prazoentrega` varchar(25) DEFAULT NULL,
  `prazopagamento` varchar(25) DEFAULT NULL,
  `operacao` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `dataes` date DEFAULT NULL,
  `observacoesdocumentos` text,
  `datapedido` date DEFAULT NULL,
  `colaboradoratendimentorapido` varchar(165) DEFAULT NULL,
  `tipooperacaofinanceira` varchar(10) DEFAULT NULL,
  `centrodecustos` varchar(10) DEFAULT NULL,
  `contadebito` varchar(10) DEFAULT NULL,
  `contacredito` varchar(10) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `motivodocancelamento` varchar(100) DEFAULT NULL,
  `detalhamentoparcelas` varchar(600) DEFAULT NULL COMMENT 'usado para gerar relatrio e mostrar as parcelas',
  `nfechavedeacesso` varchar(50) DEFAULT NULL,
  `nfelote` varchar(10) DEFAULT NULL,
  `nferecibo` varchar(50) DEFAULT NULL,
  `nfeprotocolo` varchar(50) DEFAULT NULL,
  `nfeprotocolocancelamento` varchar(50) DEFAULT NULL,
  `nfedatageracao` date DEFAULT NULL,
  `nfedatacancelamento` date DEFAULT NULL,
  `osprevisaotecnico` varchar(20) DEFAULT NULL,
  `osstatustecnico` varchar(30) DEFAULT NULL,
  `osgarantia` varchar(3) DEFAULT NULL,
  `osfuncionarioresponsavel` varchar(10) DEFAULT NULL,
  `osacessoriosaparencia` varchar(100) DEFAULT NULL,
  `osresumodoproblema` varchar(1500) DEFAULT NULL,
  `oslaudotecnico` varchar(1000) DEFAULT NULL,
  `ostipoatendimento` varchar(30) DEFAULT NULL,
  `osautorizadopelocliente` varchar(3) DEFAULT NULL,
  `oshorastrabalhadas` varchar(10) DEFAULT NULL,
  `osquilometragemveiculo` varchar(10) DEFAULT NULL,
  `oscodigoveiculo` varchar(10) DEFAULT NULL,
  `osquilometragemdeslocamento` varchar(10) DEFAULT NULL,
  `fretetransporte` decimal(10,4) DEFAULT NULL,
  `contrato` varchar(25) DEFAULT NULL,
  `fornecedor` varchar(25) DEFAULT NULL,
  `localizador` varchar(50) DEFAULT NULL,
  `trecho` varchar(50) DEFAULT NULL,
  `horario` varchar(50) DEFAULT NULL,
  `taxaembarque` decimal(10,2) DEFAULT NULL,
  `outrastaxas` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `calculodanotamanual` tinytext,
  `descricaodosservicos` text,
  `statusinterno` varchar(10) DEFAULT NULL,
  `comanda` varchar(25) DEFAULT NULL,
  `descricaocondicaopagamento` varchar(50) DEFAULT NULL,
  `calcularcomissao` tinyint(1) unsigned DEFAULT NULL,
  `nfefinalidadeemissao` varchar(25) DEFAULT NULL,
  `nfechavedeacessoreferenciada` varchar(50) DEFAULT NULL,
  `descontoadicional1` varchar(10) DEFAULT NULL,
  `descontoadicional2` varchar(10) DEFAULT NULL,
  `descontoadicional3` varchar(10) DEFAULT NULL,
  `descontoadicional4` varchar(10) DEFAULT NULL,
  `descontoadicional5` varchar(10) DEFAULT NULL,
  `codigotipodocumentoavista` varchar(10) DEFAULT NULL,
  `formatura` varchar(20) DEFAULT NULL,
  `tipocontratoformatura` varchar(20) DEFAULT NULL,
  `especificardescontonanota` tinyint(1) unsigned DEFAULT NULL,
  `setor` varchar(20) DEFAULT NULL,
  `cpfconsumidor` varchar(20) DEFAULT NULL,
  `enderecoconsumidor` varchar(50) DEFAULT NULL,
  `cidadeconsumidor` varchar(50) DEFAULT NULL,
  `imovel` varchar(20) DEFAULT NULL,
  `observacoesnotareferenteacreditodeicms` varchar(500) DEFAULT NULL,
  `niveldesatisfacao` decimal(10,0) DEFAULT NULL,
  `formaturanumerodobaile` varchar(3) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `enviodoxml` varchar(3) DEFAULT NULL,
  `idorigem` int(11) DEFAULT NULL,
  `_idorigem` int(11) DEFAULT NULL,
  `iddispositivo` varchar(50) DEFAULT NULL,
  `dataagendada` date DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horatermino` time DEFAULT NULL,
  `produtorserie` varchar(50) DEFAULT NULL,
  `produtornumero` varchar(50) DEFAULT NULL,
  `produtormesano` varchar(50) DEFAULT NULL,
  `produtormodelo` varchar(50) DEFAULT NULL,
  `tipodanota` varchar(2) DEFAULT NULL,
  `tipoemissaonota` varchar(20) DEFAULT NULL,
  `modelodocumentofiscal` varchar(2) DEFAULT NULL,
  `bcicmsst` decimal(10,2) DEFAULT NULL,
  `totalpis` decimal(10,2) DEFAULT NULL,
  `totalcofins` decimal(10,2) DEFAULT NULL,
  `totalpisst` decimal(10,2) DEFAULT NULL,
  `totalcofinsst` decimal(10,2) DEFAULT NULL,
  `ordemdecompra` varchar(50) DEFAULT NULL,
  `geodiancasterleantes` varchar(50) DEFAULT NULL,
  `geodianinccamberleantes` varchar(50) DEFAULT NULL,
  `geodiancasterldantes` varchar(50) DEFAULT NULL,
  `geodianinccamberldantes` varchar(50) DEFAULT NULL,
  `geodianconvergenciaantes` varchar(50) DEFAULT NULL,
  `geodiancasterledepois` varchar(50) DEFAULT NULL,
  `geodianinccamberledepois` varchar(50) DEFAULT NULL,
  `geodiancasterlddepois` varchar(50) DEFAULT NULL,
  `geodianinccamberlddepois` varchar(50) DEFAULT NULL,
  `geodianconvergenciadepois` varchar(50) DEFAULT NULL,
  `geotrasinccamberleantes` varchar(50) DEFAULT NULL,
  `geotrasinccamberldantes` varchar(50) DEFAULT NULL,
  `geotrasconvergenciaantes` varchar(50) DEFAULT NULL,
  `geotrasinccamberledepois` varchar(50) DEFAULT NULL,
  `geotrasinccamberlddepois` varchar(50) DEFAULT NULL,
  `geotrasconvergenciadepois` varchar(50) DEFAULT NULL,
  `geoendcolunale` varchar(50) DEFAULT NULL,
  `geobalrodasdiant` varchar(50) DEFAULT NULL,
  `geoserveixotraseiro` varchar(50) DEFAULT NULL,
  `geoendcolld` varchar(50) DEFAULT NULL,
  `geobalrodastraseiras` varchar(50) DEFAULT NULL,
  `bcpis` decimal(15,2) DEFAULT NULL,
  `bccofins` decimal(15,2) DEFAULT NULL,
  `selecionado` varchar(50) DEFAULT NULL,
  `comissaop` decimal(10,4) DEFAULT '0.0000',
  `descontoaposcobranca` decimal(10,4) DEFAULT '0.0000',
  `operador` varchar(50) DEFAULT NULL,
  `descontomaximoliberado` varchar(50) DEFAULT NULL,
  `ecf` varchar(50) DEFAULT NULL,
  `veiculodescricao` varchar(50) DEFAULT NULL,
  `placadescricao` varchar(50) DEFAULT NULL,
  `anoveiculodescricao` varchar(50) DEFAULT NULL,
  `corveiculodescricao` varchar(50) DEFAULT NULL,
  `safra` varchar(50) DEFAULT NULL,
  `piloto` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cultura` varchar(50) DEFAULT NULL,
  `vazao` varchar(50) DEFAULT NULL,
  `haservicovoo` decimal(10,4) DEFAULT NULL,
  `faixavoo` varchar(50) DEFAULT NULL,
  `numerodevoos` decimal(10,0) DEFAULT NULL,
  `obsvoos` varchar(50) DEFAULT NULL,
  `transladoinicial` decimal(10,2) DEFAULT '0.00',
  `transladofinal` decimal(10,2) DEFAULT '0.00',
  `servicoinicial` decimal(10,2) DEFAULT '0.00',
  `servicofinal` decimal(10,2) DEFAULT '0.00',
  `retornoinicial` decimal(10,2) DEFAULT '0.00',
  `retornofinal` decimal(10,2) DEFAULT '0.00',
  `valorha` decimal(10,2) DEFAULT '0.00',
  `dataexecucao` date DEFAULT NULL,
  `aviacaovaloravista` decimal(10,2) DEFAULT '0.00',
  `aviacaovaloraprazo` decimal(10,2) DEFAULT '0.00',
  `aviacaonumerorelatorioaplicacao` varchar(50) DEFAULT NULL,
  `aviacaotipo` varchar(50) DEFAULT NULL,
  `aviacaolitrosoleo` decimal(10,2) DEFAULT '0.00',
  `aviacaovaloroleo` decimal(10,2) DEFAULT '0.00',
  `translado` decimal(10,2) DEFAULT '0.00',
  `transladoservico` decimal(10,2) DEFAULT '0.00',
  `transladoretorno` decimal(10,2) DEFAULT '0.00',
  `materiaprimabaixada` varchar(10) DEFAULT '',
  `centrodecustocontrapartida` varchar(50) DEFAULT '',
  `atendimentolincado` varchar(50) DEFAULT '',
  `dataprevisao` date DEFAULT NULL,
  `dataentrega` date DEFAULT NULL,
  `aluno` varchar(50) DEFAULT NULL,
  `turma` varchar(50) DEFAULT NULL,
  `posvendarealizado` varchar(3) DEFAULT 'NÃO',
  `equipamento` varchar(200) DEFAULT NULL,
  `horaprevisao` time DEFAULT NULL,
  `tipoentrega` varchar(50) DEFAULT NULL,
  `incc` decimal(10,3) DEFAULT NULL,
  `valoraproximadotributos` decimal(10,2) DEFAULT NULL,
  `percentualvaloraproximadotributos` decimal(10,2) DEFAULT NULL,
  `codigoverificacaonfse` varchar(50) DEFAULT NULL,
  `inss` decimal(10,2) DEFAULT NULL,
  `csll` decimal(10,2) DEFAULT NULL,
  `ir` decimal(10,2) DEFAULT NULL,
  `observacoesnaoimpressas` varchar(500) DEFAULT NULL,
  `ultimoprocesso` varchar(50) DEFAULT NULL,
  `agencia` varchar(50) DEFAULT NULL,
  `tmpfilial` varchar(50) DEFAULT NULL,
  `iss` decimal(10,2) DEFAULT NULL,
  `issretido` decimal(10,2) DEFAULT NULL,
  `municipioincidenciaiss` varchar(50) DEFAULT 'Prestador',
  `numeronfsubstituida` varchar(50) DEFAULT NULL,
  `autorizado` varchar(50) DEFAULT 'NÃO',
  `competenciainicial` date DEFAULT NULL,
  `competenciafinal` date DEFAULT NULL,
  `servicosproprios` decimal(10,2) DEFAULT NULL,
  `talhao` varchar(50) DEFAULT NULL,
  `gasolina` decimal(10,2) DEFAULT NULL,
  `oleomotor` decimal(10,2) DEFAULT NULL,
  `tmpvalorpago` decimal(10,2) DEFAULT NULL,
  `tmpvaloraberto` decimal(10,2) DEFAULT NULL,
  `tmpdatapagamento` date DEFAULT NULL,
  `creditos` decimal(10,2) DEFAULT NULL,
  `tmpprazomedio` decimal(10,2) DEFAULT NULL,
  `nomedoevento` varchar(200) DEFAULT NULL,
  `telefonedoevento` varchar(20) DEFAULT NULL,
  `emaildoevento` varchar(100) DEFAULT NULL,
  `tipodoevento` varchar(100) DEFAULT NULL,
  `datadoevento` date DEFAULT NULL,
  `horadoevento` datetime DEFAULT NULL,
  `enderecocompletodoevento` varchar(200) DEFAULT NULL,
  `contatoagenda` varchar(50) DEFAULT NULL,
  `horasaida` varchar(50) DEFAULT NULL,
  `numeronfservico` varchar(50) DEFAULT NULL,
  `statusitens` varchar(50) DEFAULT NULL,
  `veiculo` varchar(50) DEFAULT NULL,
  `iniciodaprestacaocte` varchar(50) DEFAULT NULL,
  `terminoprestacaocte` varchar(50) DEFAULT NULL,
  `tomadorcte` varchar(50) DEFAULT NULL,
  `remetentecte` varchar(50) DEFAULT NULL,
  `destinatoriocte` varchar(50) DEFAULT NULL,
  `valorcarga` varchar(50) DEFAULT NULL,
  `produtopredominante` varchar(50) DEFAULT NULL,
  `modalcte` varchar(50) DEFAULT NULL,
  `responsabilidadesegurocte` varchar(50) DEFAULT NULL,
  `rntrc` varchar(50) DEFAULT NULL,
  `dataprevistaentregacte` varchar(50) DEFAULT NULL,
  `finalidadeemissaocte` varchar(50) DEFAULT NULL,
  `lotacao` varchar(50) DEFAULT NULL,
  `quantidadecarga` varchar(50) DEFAULT NULL,
  `unidademedida` varchar(50) DEFAULT NULL,
  `chavesdeacesso` varchar(500) DEFAULT NULL,
  `validadedositens` varchar(100) DEFAULT NULL,
  `modalidade` varchar(100) DEFAULT NULL,
  `edital` varchar(100) DEFAULT NULL,
  `processo` varchar(100) DEFAULT NULL,
  `abertura` varchar(100) DEFAULT NULL,
  `objeto` varchar(100) DEFAULT NULL,
  `codigounidade` varchar(50) DEFAULT NULL,
  `chavecte` varchar(50) DEFAULT NULL,
  `statusorcamento` varchar(50) DEFAULT 'Em NegociaÃ§Ã£o',
  `nomecondicaoespecial` varchar(50) DEFAULT NULL,
  `percentualcondicaoespecial` decimal(10,2) DEFAULT NULL,
  `fretedatasaida` date DEFAULT NULL,
  `fretedatachegada` date DEFAULT NULL,
  `odometroinicial` decimal(10,2) DEFAULT NULL,
  `odometrofinal` decimal(10,2) DEFAULT NULL,
  `fretequantidadecombustivel` decimal(10,2) DEFAULT NULL,
  `fretearla` decimal(10,2) DEFAULT NULL,
  `despesasatendimento` decimal(10,2) DEFAULT NULL,
  `contratodescricao` varchar(10000) DEFAULT NULL,
  `numerocontrato` varchar(50) DEFAULT NULL,
  `tmpprocesso` varchar(50) DEFAULT NULL,
  `motorista` varchar(50) DEFAULT NULL,
  `dataconclusao` date DEFAULT NULL,
  `motivostatusorcamento` varchar(250) DEFAULT NULL,
  `tmpnumeronf` decimal(10,2) DEFAULT NULL,
  `fretecustokm` decimal(10,2) DEFAULT NULL,
  `fretelucrokm` decimal(10,2) DEFAULT NULL,
  `produtopromocao` varchar(3) DEFAULT NULL,
  `municipioincidenciaissoutro` varchar(20) DEFAULT NULL,
  `municipioprestacaoservico` varchar(20) DEFAULT NULL,
  `ceiobra` varchar(20) DEFAULT NULL,
  `rps` varchar(10) DEFAULT NULL,
  `datamovimento` date DEFAULT NULL,
  `descontonota` decimal(10,2) DEFAULT NULL,
  `ccecorrecao` varchar(700) DEFAULT NULL,
  `ccemotivo` varchar(50) DEFAULT NULL,
  `ccedata` date DEFAULT NULL,
  `titulocontrato` varchar(50) DEFAULT NULL,
  `pessoas` varchar(10) DEFAULT NULL,
  `valorcomissaopaga` decimal(10,2) DEFAULT NULL,
  `valorcomissaopagapiloto` decimal(10,2) DEFAULT NULL,
  `valorcomissaopagatecnico` decimal(10,2) DEFAULT NULL,
  `modificadoaposautorizacao` varchar(50) DEFAULT NULL,
  `simularnota` tinyint(1) DEFAULT NULL,
  `valordifal` decimal(10,2) DEFAULT NULL,
  `bciss` decimal(10,2) DEFAULT NULL,
  `reducaoiss` decimal(10,2) DEFAULT NULL,
  `parausoeconsumo` tinyint(1) DEFAULT NULL,
  `solicitante` varchar(50) DEFAULT NULL,
  `revisao` varchar(2) DEFAULT NULL,
  `localentrega` varchar(100) DEFAULT NULL,
  `valoraproximadotributosservicos` decimal(10,2) DEFAULT NULL,
  `percentualvaloraproximadotributosservicos` decimal(10,2) DEFAULT NULL,
  `receitaagronomica` varchar(15) DEFAULT NULL,
  `ufembarque` varchar(2) DEFAULT NULL,
  `localembarque` varchar(50) DEFAULT NULL,
  `localdespacho` varchar(50) DEFAULT NULL,
  `totalicmspartilharemetente` decimal(10,2) DEFAULT NULL,
  `totalicmspartilhadestinatario` decimal(10,2) DEFAULT NULL,
  `totalicmsfcpdestinatario` decimal(10,2) DEFAULT NULL,
  `notacomst` tinyint(1) DEFAULT NULL,
  `contratocompra` varchar(20) DEFAULT NULL,
  `controle` decimal(10,0) DEFAULT NULL,
  `modelodocumentoreferenciado` varchar(2) DEFAULT NULL,
  `veiculoutilizado` varchar(15) DEFAULT NULL,
  `veiculoutilizadokminicial` decimal(10,3) DEFAULT NULL,
  `veiculoutilizadokmfinal` decimal(10,3) DEFAULT NULL,
  `codigopedidosite` varchar(10) DEFAULT NULL,
  `comissaoliquidez` decimal(10,2) DEFAULT NULL,
  `tipocontrato` varchar(15) DEFAULT NULL,
  `indice` varchar(15) DEFAULT NULL,
  `tipodocalculo` varchar(15) DEFAULT NULL,
  `tipoatendimento` varchar(1) DEFAULT NULL,
  `expedidorcte` varchar(20) DEFAULT NULL,
  `receberdorcte` varchar(20) DEFAULT NULL,
  `valorcobradocte` decimal(10,2) DEFAULT NULL,
  `colaboradortomadorcte` varchar(20) DEFAULT NULL,
  `ctepicms` decimal(10,2) DEFAULT NULL,
  `ctecsticms` varchar(2) DEFAULT NULL,
  `ctetiposervico` varchar(20) DEFAULT NULL,
  `descricaonaturezaoperacao` varchar(100) DEFAULT NULL,
  `trocopara` varchar(10) DEFAULT NULL,
  `ultimaalteracao` date DEFAULT NULL,
  `nsu` varchar(20) DEFAULT NULL,
  `percentualreducaobaseicms` decimal(10,2) DEFAULT NULL,
  `percentualicmsst` decimal(10,2) DEFAULT NULL,
  `valorcreditooutorgado` decimal(10,2) DEFAULT NULL,
  `valorpedagio` decimal(10,2) DEFAULT NULL,
  `pet` varchar(20) DEFAULT NULL,
  `ordemservico` varchar(20) DEFAULT NULL,
  `pedido` varchar(20) DEFAULT NULL,
  `clientecontatado` varchar(3) DEFAULT NULL,
  `statusordemproducao` varchar(20) DEFAULT NULL,
  `ordemproducao` varchar(20) DEFAULT NULL,
  `dataorcamento` date DEFAULT NULL,
  `datacondicional` date DEFAULT NULL,
  `dataordemproducao` date DEFAULT NULL,
  `recibolocacaobemmovel` varchar(20) DEFAULT NULL,
  `nfselote` varchar(20) DEFAULT NULL,
  `textoautorizacao` varchar(5000) DEFAULT NULL,
  `municipioprestacaoprestadoroutomador` varchar(10) DEFAULT NULL,
  `titular` varchar(20) DEFAULT NULL,
  `curso` varchar(15) DEFAULT NULL,
  `taxamatricula` decimal(10,2) DEFAULT NULL,
  `periodo` varchar(50) DEFAULT NULL,
  `periodocurso` varchar(50) DEFAULT NULL,
  `valorcurso` decimal(10,2) DEFAULT NULL,
  `parcelascurso` varchar(10) DEFAULT NULL,
  `valorparcelacurso` decimal(10,2) DEFAULT NULL,
  `valormaterial` decimal(10,2) DEFAULT NULL,
  `parcelasmaterial` varchar(10) DEFAULT NULL,
  `valorparcelasmaterial` decimal(10,2) DEFAULT NULL,
  `percentuallocacao` varchar(10) DEFAULT NULL,
  `orcamentosequencial` varchar(10) DEFAULT NULL,
  `papeltomador` varchar(20) DEFAULT NULL,
  `tmppessoas` decimal(10,0) DEFAULT NULL,
  `empresatransferencia` varchar(20) DEFAULT NULL,
  `datareceitaagronomica` date DEFAULT NULL,
  `fidelidadegerada` tinyint(1) DEFAULT NULL,
  `descontoorgaopublico` decimal(10,2) DEFAULT NULL,
  `codigovale` varchar(20) DEFAULT NULL,
  `valorvale` decimal(10,2) DEFAULT NULL,
  `nfseprotocolo` varchar(50) DEFAULT NULL,
  `prioridade` tinyint(1) DEFAULT '0',
  `destacar` varchar(20) DEFAULT NULL,
  `variacao` varchar(1) DEFAULT '1',
  `percentualdeprodutosnoservico` decimal(10,2) DEFAULT NULL,
  `jornada` varchar(10) DEFAULT NULL,
  `horafaturamento` time DEFAULT NULL,
  `pedidoapp` varchar(10) DEFAULT NULL,
  `substatus` varchar(20) DEFAULT NULL,
  `codigoautorizado` varchar(20) DEFAULT NULL,
  `icmsretidoporsubstituicaotributaria` decimal(10,2) DEFAULT NULL,
  `destacarretencoesobsnota` tinyint(1) DEFAULT '0',
  `infdeclaraoservicoid` varchar(10) DEFAULT NULL,
  `ata` varchar(20) DEFAULT NULL,
  `pregao` varchar(20) DEFAULT NULL,
  `dataassinatura` date DEFAULT NULL,
  `estoquebaixa` varchar(2) DEFAULT '1',
  `estoquetransferencia` varchar(2) DEFAULT NULL,
  `dataperda` date DEFAULT NULL,
  `datafechamentoorcamento` date DEFAULT NULL,
  `dataalerta` date DEFAULT NULL,
  `valoripidevolucao` decimal(10,2) DEFAULT NULL,
  `validadeata` date DEFAULT NULL,
  `descontosemaspromocoes` varchar(50) DEFAULT NULL,
  `cteassociadoacompra` decimal(50,0) DEFAULT NULL,
  `statusgarantia` varchar(50) DEFAULT NULL,
  `auxiliarcustofixo` decimal(10,2) DEFAULT NULL,
  `auxiliarcustoadicional` decimal(10,2) DEFAULT NULL,
  `percentualfunrural` decimal(10,2) DEFAULT NULL,
  `termodeconformidade` varchar(50) DEFAULT NULL,
  `datahorafaturamento` datetime DEFAULT NULL,
  `colaboradornfe` varchar(50) DEFAULT NULL,
  `colaboradornfse` varchar(50) DEFAULT NULL,
  `boletosgerados` varchar(3) DEFAULT NULL,
  `atencao` tinyint(1) DEFAULT '0',
  `aproveitamentosimples` decimal(10,2) DEFAULT '0.00',
  `ctetipo` varchar(50) DEFAULT NULL,
  `ctechaveacessoreferenciada` varchar(50) DEFAULT NULL,
  `ctedataemissaodeclaracao` date DEFAULT NULL,
  `ctechavedeacessoanulacao` varchar(50) DEFAULT NULL,
  `mapadecarga` varchar(50) DEFAULT NULL,
  `diretor` varchar(50) DEFAULT NULL,
  `numerofaturamentoauxiliar` varchar(50) DEFAULT NULL,
  `multiplicador` decimal(10,2) DEFAULT NULL,
  `tmpminutosapontados` decimal(10,2) DEFAULT NULL,
  `naoarredondar` tinyint(1) DEFAULT '0',
  `prazovalidade` varchar(25) DEFAULT NULL,
  `origemdavenda` varchar(11) DEFAULT NULL,
  `fretestatus` varchar(10) DEFAULT NULL,
  `codigoenderecocobranca` varchar(50) DEFAULT NULL,
  `percentualprodutos` decimal(10,2) DEFAULT NULL,
  `percentualservicos` decimal(10,2) DEFAULT NULL,
  `competencia` date DEFAULT NULL,
  `avalista` varchar(20) DEFAULT NULL,
  `valorfcpst` decimal(10,2) DEFAULT NULL,
  `tmpnumeroparcelas` decimal(10,0) DEFAULT NULL,
  `nfsededucoes` decimal(10,2) DEFAULT NULL,
  `nfseart` varchar(20) DEFAULT NULL,
  `nfseissretido` tinyint(1) DEFAULT '0',
  `totalnfseemitida` varchar(20) DEFAULT NULL,
  `nfsestatus` varchar(20) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `importacaoxml` int(1) DEFAULT '0',
  `entregadevendafutura` int(1) DEFAULT '0',
  `comissaoagenciap` decimal(10,2) DEFAULT '0.00',
  `placareboque` varchar(10) DEFAULT NULL,
  `ufreboque` varchar(2) DEFAULT NULL,
  `observacoes2` varchar(300) DEFAULT NULL,
  `calculartotalcombasenositens` int(1) DEFAULT '0',
  `pisservicos` decimal(15,2) DEFAULT NULL,
  `cofinsservicos` decimal(15,2) DEFAULT NULL,
  `tipocontribuinte` varchar(50) DEFAULT NULL,
  `valordevolucoes` decimal(15,2) DEFAULT NULL,
  `enviadoecommerce` tinyint(4) DEFAULT '0',
  `tagfinanceiromanual` varchar(3) DEFAULT NULL,
  `juros` decimal(10,2) DEFAULT NULL,
  `endereconota` varchar(50) DEFAULT NULL,
  `codigoedinotifis` varchar(50) DEFAULT NULL,
  `dataultimaalteracao` datetime DEFAULT NULL,
  `indintermed` varchar(100) DEFAULT NULL,
  `codigointermediador` varchar(20) DEFAULT NULL,
  `tmptotalvmv` decimal(10,2) DEFAULT NULL,
  `ctepercentualfrete` decimal(10,2) DEFAULT NULL,
  `ctevencimento` date DEFAULT NULL,
  `cubagem` decimal(15,5) DEFAULT NULL,
  `nfseserie` varchar(10) DEFAULT NULL,
  `mostrarpainel` tinyint(1) DEFAULT '0',
  `valorfunrural` decimal(20,6) DEFAULT NULL,
  `usoutabelaigualatabelacd` varchar(3) DEFAULT 'NÃO',
  `tributacaoemitente` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `codigocolaborador` (`codigocolaborador`),
  KEY `status` (`status`),
  KEY `comanda` (`comanda`),
  KEY `codigovendedor` (`codigovendedor`),
  KEY `tabelapadrao` (`tabelapadrao`),
  KEY `codigotipodocumento` (`codigotipodocumento`),
  KEY `localcobranca` (`localcobranca`),
  KEY `codigonaturezaoperacao` (`codigonaturezaoperacao`),
  KEY `codigotransportadora` (`codigotransportadora`),
  KEY `tipooperacaofinanceira` (`tipooperacaofinanceira`),
  KEY `centrodecustos` (`centrodecustos`),
  KEY `contadebito` (`contadebito`),
  KEY `contacredito` (`contacredito`),
  KEY `osfuncionarioresponsavel` (`osfuncionarioresponsavel`),
  KEY `oscodigoveiculo` (`oscodigoveiculo`),
  KEY `fornecedor` (`fornecedor`),
  KEY `codigotipodocumentoavista` (`codigotipodocumentoavista`),
  KEY `tipocontratoformatura` (`tipocontratoformatura`),
  KEY `setor` (`setor`),
  KEY `imovel` (`imovel`),
  KEY `empresa` (`empresa`),
  KEY `safra` (`safra`),
  KEY `piloto` (`piloto`),
  KEY `endereco` (`endereco`),
  KEY `cultura` (`cultura`),
  KEY `centrodecustocontrapartida` (`centrodecustocontrapartida`),
  KEY `aluno` (`aluno`),
  KEY `turma` (`turma`),
  KEY `agencia` (`agencia`),
  KEY `talhao` (`talhao`),
  KEY `motorista` (`motorista`),
  KEY `solicitante` (`solicitante`),
  KEY `codigopedidosite` (`codigopedidosite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosacademico
CREATE TABLE IF NOT EXISTS `atendimentosacademico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `datarecebimentocertificados` date DEFAULT NULL,
  `dataenviocertificados` date DEFAULT NULL,
  `observacoescertificados` varchar(500) DEFAULT NULL,
  `documentoenviadocancelamento` varchar(50) DEFAULT NULL,
  `documentorecebidocancelamento` varchar(50) DEFAULT NULL,
  `datacancelamento` date DEFAULT NULL,
  `motivocancelamento` varchar(500) DEFAULT NULL,
  `documentoenviadotrancamento` varchar(50) DEFAULT NULL,
  `documentorecebidotrancamento` varchar(50) DEFAULT NULL,
  `datatrancamento` date DEFAULT NULL,
  `dataretornotrancamento` date DEFAULT NULL,
  `retornotrancamento` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Cursando',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosanexos
CREATE TABLE IF NOT EXISTS `atendimentosanexos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `nomeanexo` varchar(50) DEFAULT NULL,
  `arquivo` varchar(500) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosauxiliarfaturamento
CREATE TABLE IF NOT EXISTS `atendimentosauxiliarfaturamento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `numeroauxiliarfaturamento` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `creditos` decimal(10,2) DEFAULT NULL,
  `outrosvalores` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentoscartadecorrecao
CREATE TABLE IF NOT EXISTS `atendimentoscartadecorrecao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `sequencia` varchar(50) DEFAULT NULL,
  `correcao` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentoscomplementos
CREATE TABLE IF NOT EXISTS `atendimentoscomplementos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(20) DEFAULT NULL,
  `codigocomplemento` varchar(20) DEFAULT NULL,
  `informacao` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentoscontratos
CREATE TABLE IF NOT EXISTS `atendimentoscontratos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `entrada` decimal(10,2) DEFAULT NULL,
  `financiado` decimal(10,2) DEFAULT NULL,
  `subsidio` decimal(10,2) DEFAULT NULL,
  `fgts` decimal(10,2) DEFAULT NULL,
  `valorproprio` decimal(12,2) DEFAULT NULL,
  `observacoesnegociacao` varchar(500) DEFAULT NULL,
  `dataliberacao` date DEFAULT NULL,
  `dataassinaturacontrato` date DEFAULT NULL,
  `comissaopaga` varchar(50) DEFAULT 'NÃO',
  `valorparcela` decimal(12,2) DEFAULT NULL,
  `parcelaemincc` decimal(12,2) DEFAULT NULL,
  `parcelaatualizada` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `atendimento` (`atendimento`)
) ENGINE=InnoDB AUTO_INCREMENT=252472 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentoscontratosadendos
CREATE TABLE IF NOT EXISTS `atendimentoscontratosadendos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `dataliberacao` date DEFAULT NULL,
  `valorfinanciado` decimal(10,2) DEFAULT NULL,
  `valorsubsidio` decimal(10,2) DEFAULT NULL,
  `valorfgts` decimal(10,2) DEFAULT NULL,
  `valorentrada` decimal(10,2) DEFAULT NULL,
  `valorproprio` decimal(10,2) DEFAULT NULL,
  `dataassinatura` date DEFAULT NULL,
  `comissaopaga` varchar(50) DEFAULT NULL,
  `pcomissao` decimal(10,2) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentoscotacoesfretes
CREATE TABLE IF NOT EXISTS `atendimentoscotacoesfretes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `codigocolaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosdescricaodescontos
CREATE TABLE IF NOT EXISTS `atendimentosdescricaodescontos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `descricaodesconto` varchar(50) DEFAULT NULL,
  `desconto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosdespesas
CREATE TABLE IF NOT EXISTS `atendimentosdespesas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `despesa` varchar(50) DEFAULT NULL,
  `codigocontacontabil` varchar(50) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosfaturamento
CREATE TABLE IF NOT EXISTS `atendimentosfaturamento` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `contacontabil` varchar(50) DEFAULT NULL,
  `codigopdv` varchar(20) DEFAULT NULL,
  `observacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosmateriaprima
CREATE TABLE IF NOT EXISTS `atendimentosmateriaprima` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidadeproduto` decimal(20,2) DEFAULT NULL,
  `materiaprima` varchar(50) DEFAULT NULL,
  `quantidademateriaprima` decimal(20,6) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `quantidadetotal` decimal(20,6) DEFAULT NULL,
  `percentualadicionalcusto` decimal(10,6) DEFAULT '0.000000',
  `setor` varchar(50) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  `hierarquiapai` varchar(50) DEFAULT NULL,
  `temfilho` varchar(50) DEFAULT NULL,
  `imprimirop` varchar(50) DEFAULT 'Sim',
  `tmpmapacarga` varchar(50) DEFAULT NULL,
  `itematendimento` varchar(50) DEFAULT NULL,
  `qntauxiliarexibicaogrupo` decimal(10,6) DEFAULT NULL,
  `descricaomateriaprima` varchar(255) DEFAULT NULL,
  `produtoacabado` varchar(50) DEFAULT NULL,
  `expedicao` tinyint(1) DEFAULT NULL,
  `ordenacao` int(11) DEFAULT NULL,
  `produzir` varchar(50) DEFAULT 'NÃO',
  `obs` varchar(2000) DEFAULT NULL,
  `materiaprimanivel2` varchar(50) DEFAULT NULL,
  `quantidademateriaprimanivel2` decimal(20,6) DEFAULT NULL,
  `materiaprimanivel3` varchar(50) DEFAULT NULL,
  `quantidademateriaprimanivel3` decimal(20,6) DEFAULT NULL,
  `itemmateriaprima` decimal(11,0) DEFAULT NULL,
  `itemmateriaprimanivel2` decimal(11,0) DEFAULT NULL,
  `produzirmateriaprima` varchar(50) DEFAULT 'NÃO',
  `produzirmateriaprimanivel2` varchar(50) DEFAULT 'NÃO',
  `produzirmateriaprimanivel3` varchar(50) DEFAULT 'NÃO',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=116175 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosnfechavesdeacesso
CREATE TABLE IF NOT EXISTS `atendimentosnfechavesdeacesso` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(10) DEFAULT NULL,
  `chavedeacesso` varchar(44) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosobservacoesnota
CREATE TABLE IF NOT EXISTS `atendimentosobservacoesnota` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(20) DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosobservacoesproducao
CREATE TABLE IF NOT EXISTS `atendimentosobservacoesproducao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `observacoes` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosprocessos
CREATE TABLE IF NOT EXISTS `atendimentosprocessos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT '',
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `processo` varchar(50) DEFAULT '',
  `observacao` varchar(200) DEFAULT '',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosqualificacoes
CREATE TABLE IF NOT EXISTS `atendimentosqualificacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `qualificacao` varchar(50) DEFAULT NULL,
  `conformidade` varchar(50) DEFAULT NULL,
  `tipoqualificacao` varchar(50) DEFAULT 'Produtos' COMMENT 'Produtos ou ServiÃ§os',
  `valorqualificacao` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosrateio
CREATE TABLE IF NOT EXISTS `atendimentosrateio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `contacontabil` varchar(50) DEFAULT NULL,
  `percentual` decimal(10,5) DEFAULT NULL,
  `valor` decimal(10,5) DEFAULT '0.00000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosresponsaveis
CREATE TABLE IF NOT EXISTS `atendimentosresponsaveis` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(20) DEFAULT NULL,
  `responsavel` varchar(20) DEFAULT NULL,
  `tempo` decimal(10,4) DEFAULT NULL,
  `valortempo` decimal(10,4) DEFAULT NULL,
  `total` decimal(10,4) DEFAULT NULL,
  `comissaomoeda` decimal(10,4) DEFAULT NULL,
  `percentualparticipacao` decimal(10,4) DEFAULT NULL,
  `pcomissao` decimal(10,4) DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `termino` datetime DEFAULT NULL,
  `tmptempovendido` decimal(10,4) DEFAULT NULL,
  `tmptempoapontado` decimal(10,4) DEFAULT NULL,
  `tmptempoatendimento` decimal(10,4) DEFAULT NULL,
  `tmpapontadototal` decimal(10,4) DEFAULT NULL,
  `tmppercentualapontamento` decimal(10,4) DEFAULT NULL,
  `tmptempocobradoproporcional` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentostrocas
CREATE TABLE IF NOT EXISTS `atendimentostrocas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `valor` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atendimentosunidos
CREATE TABLE IF NOT EXISTS `atendimentosunidos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimentoorigem` varchar(50) DEFAULT NULL,
  `atendimentodestino` varchar(50) DEFAULT NULL,
  `datauniao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.atributos
CREATE TABLE IF NOT EXISTS `atributos` (
  `codigo` varchar(10) NOT NULL,
  `atributo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.auditoriaajustes
CREATE TABLE IF NOT EXISTS `auditoriaajustes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `auditoria` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.auditoriaestoque
CREATE TABLE IF NOT EXISTS `auditoriaestoque` (
  `codigo` varchar(50) NOT NULL DEFAULT '',
  `data` date DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  `grupoproduto` varchar(50) DEFAULT NULL,
  `estoqueatualgravado` varchar(50) DEFAULT NULL,
  `statusauditoria` varchar(50) DEFAULT NULL,
  `datainicial` date DEFAULT NULL,
  `datafinal` date DEFAULT NULL,
  `empresa` varchar(50) DEFAULT '1',
  `marca` varchar(50) DEFAULT NULL,
  `departamentoproduto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.auditoriaestoqueanterior
CREATE TABLE IF NOT EXISTS `auditoriaestoqueanterior` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `auditoria` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `tmpmarca` varchar(50) DEFAULT NULL,
  `tmpcor` varchar(50) DEFAULT NULL,
  `tmptamanho` varchar(50) DEFAULT NULL,
  `tmppraticado` decimal(10,2) DEFAULT NULL,
  `tmpdescricao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.auditoriaestoqueitens
CREATE TABLE IF NOT EXISTS `auditoriaestoqueitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `auditoria` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.auditoriaestoqueposterior
CREATE TABLE IF NOT EXISTS `auditoriaestoqueposterior` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `auditoria` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `tmpmarca` varchar(50) DEFAULT NULL,
  `tmpcor` varchar(50) DEFAULT NULL,
  `tmptamanho` varchar(50) DEFAULT NULL,
  `tmppraticado` decimal(10,2) DEFAULT NULL,
  `tmpdescricao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.autoajuste
CREATE TABLE IF NOT EXISTS `autoajuste` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `operacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.autorizados
CREATE TABLE IF NOT EXISTS `autorizados` (
  `codigo` varchar(10) NOT NULL,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `nomeautorizado` varchar(100) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `limite` decimal(12,2) DEFAULT NULL,
  `tmptextoautorizacao` varchar(5000) DEFAULT NULL,
  `relacao` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `codigogrupo` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `codigoultimoevento` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.autorizadosatendimento
CREATE TABLE IF NOT EXISTS `autorizadosatendimento` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` int(20) DEFAULT NULL,
  `autorizado` int(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.autorizadoseventos
CREATE TABLE IF NOT EXISTS `autorizadoseventos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoautorizado` varchar(10) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `codigoevento` varchar(10) DEFAULT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.bairros
CREATE TABLE IF NOT EXISTS `bairros` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `bairro` varchar(50) DEFAULT NULL,
  `taxa` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.balancopatrimonial
CREATE TABLE IF NOT EXISTS `balancopatrimonial` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `ativocirculante` decimal(10,2) DEFAULT NULL,
  `disponivel` decimal(10,2) DEFAULT NULL,
  `caixa` decimal(10,2) DEFAULT NULL,
  `bancos` decimal(10,2) DEFAULT NULL,
  `aplicacoesimediatas` decimal(10,2) DEFAULT NULL,
  `clientescontasareceber` decimal(10,2) DEFAULT NULL,
  `clientescurtoprazo` decimal(10,2) DEFAULT NULL,
  `clienteslongoprazo` decimal(10,2) DEFAULT NULL,
  `estoques` decimal(10,2) DEFAULT NULL,
  `ativonaocirculante` decimal(10,2) DEFAULT NULL,
  `ativoimobilizado` decimal(10,2) DEFAULT NULL,
  `moveiseutensilios` decimal(10,2) DEFAULT NULL,
  `maquinaseequipamentos` decimal(10,2) DEFAULT NULL,
  `veiculos` decimal(10,2) DEFAULT NULL,
  `aplicacoespermanentes` decimal(10,2) DEFAULT NULL,
  `totaldoativo` decimal(10,2) DEFAULT NULL,
  `passivocirculante` decimal(10,2) DEFAULT NULL,
  `obrigacoesfornecedores` decimal(10,2) DEFAULT NULL,
  `emprestimosefinanciamentos` decimal(10,2) DEFAULT NULL,
  `outrasobrigacoes` decimal(10,2) DEFAULT NULL,
  `patrimonioliquido` decimal(10,2) DEFAULT NULL,
  `totaldopassivo` decimal(10,2) DEFAULT NULL,
  `imoveis` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.bancos
CREATE TABLE IF NOT EXISTS `bancos` (
  `codigo` varchar(10) NOT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `banco` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.beneficiofiscal
CREATE TABLE IF NOT EXISTS `beneficiofiscal` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigobeneficio` varchar(50) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.boletossolicitacaodebaixa
CREATE TABLE IF NOT EXISTS `boletossolicitacaodebaixa` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emissao` date DEFAULT NULL,
  `horaemissao` time DEFAULT NULL,
  `colaborador` varchar(20) DEFAULT NULL,
  `numerodocumento` varchar(50) DEFAULT NULL,
  `notaorigem` varchar(50) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `quitacao` date DEFAULT NULL,
  `origem` varchar(25) DEFAULT NULL,
  `parcela` varchar(25) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `vendedor` varchar(10) DEFAULT NULL,
  `atendimento` varchar(25) DEFAULT NULL,
  `tipodocumento` varchar(10) DEFAULT NULL,
  `formaquitacao` varchar(25) DEFAULT NULL,
  `tipooperacao` varchar(25) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `valorinicial` decimal(10,2) DEFAULT NULL,
  `valorquitacao` decimal(10,2) DEFAULT NULL,
  `multa` decimal(10,2) DEFAULT NULL,
  `valorjuros` decimal(10,2) DEFAULT NULL,
  `valordesconto` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `percentualcomissao` decimal(10,2) DEFAULT NULL,
  `valorcomissao` decimal(10,2) DEFAULT NULL,
  `valorprodutos` decimal(10,2) DEFAULT NULL,
  `comissaopaga` varchar(3) DEFAULT NULL,
  `localcobranca` varchar(10) DEFAULT NULL,
  `tipodaconta` varchar(10) DEFAULT NULL,
  `cartorio` decimal(10,2) DEFAULT NULL,
  `outras` decimal(10,2) DEFAULT NULL,
  `selecionada` varchar(1) DEFAULT NULL COMMENT 'usado na quitacao',
  `diadasemanavencimento` varchar(45) DEFAULT NULL,
  `centrodecusto` varchar(10) DEFAULT NULL,
  `empresa` varchar(10) DEFAULT '1',
  `contacontabil` varchar(10) DEFAULT NULL,
  `seunumerosicredi` varchar(25) DEFAULT NULL,
  `formatura` varchar(20) DEFAULT NULL,
  `boletogerado` varchar(3) DEFAULT NULL,
  `contaquitacao` varchar(20) DEFAULT NULL,
  `recebido` varchar(20) DEFAULT NULL,
  `boletobanco` varchar(100) DEFAULT NULL,
  `boletonossonumero` varchar(100) DEFAULT NULL,
  `boletoinformativo` varchar(100) DEFAULT NULL,
  `boletonumeroremessa` varchar(100) DEFAULT NULL,
  `boletonumeroretorno` varchar(100) DEFAULT NULL,
  `boletolinhadigitavel` varchar(100) DEFAULT NULL,
  `boletocodigodebarras` varchar(100) DEFAULT NULL,
  `boletotipocobranca` varchar(100) DEFAULT NULL,
  `boletodataprocessamento` date DEFAULT NULL,
  `statusdocheque` varchar(50) DEFAULT 'Caixa',
  `dataantecipacao` date DEFAULT NULL,
  `cultura` varchar(50) DEFAULT NULL,
  `boletodiasprotesto` varchar(10) DEFAULT NULL,
  `boletomulta` varchar(10) DEFAULT NULL,
  `boletojuros` varchar(10) DEFAULT NULL,
  `incc` decimal(10,3) DEFAULT NULL,
  `inccpago` decimal(10,3) DEFAULT NULL,
  `valorservicos` decimal(10,2) DEFAULT NULL,
  `perspectivaderecebimento` varchar(3) DEFAULT 'Sim',
  `motivocancelamento` varchar(100) DEFAULT NULL,
  `contrapartida` varchar(20) DEFAULT NULL,
  `valortodosservicos` decimal(10,2) DEFAULT NULL,
  `boletosolicitacaobaixa` varchar(50) DEFAULT NULL,
  `remessasolicitacaobaixa` varchar(50) DEFAULT NULL,
  `contaorigemrenegociada` varchar(100) DEFAULT NULL,
  `boletotipoimpressao` varchar(50) DEFAULT NULL,
  `motivodevolucao` varchar(50) DEFAULT NULL,
  `motivoestorno` varchar(50) DEFAULT NULL,
  `datadevolucao` date DEFAULT NULL,
  `dataestorno` date DEFAULT NULL,
  `destacar` varchar(50) DEFAULT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `atendimentorelacionado` varchar(50) DEFAULT NULL,
  `titular` varchar(50) DEFAULT NULL,
  `pedido` varchar(50) DEFAULT NULL,
  `tmpvalor` decimal(10,2) DEFAULT NULL,
  `tmpcodigoconta` varchar(50) DEFAULT NULL,
  `boletonossonumero2` varchar(50) DEFAULT NULL,
  `selecionado` varchar(1) DEFAULT NULL COMMENT 'usado para selecao geral',
  `boletopagador` varchar(20) DEFAULT NULL COMMENT 'Titular - Colaborador',
  `boletodiasdevolucao` varchar(10) DEFAULT NULL,
  `boletonumeroremessabaixa` varchar(100) DEFAULT NULL,
  `codigocontaorigem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `vendedor` (`vendedor`),
  KEY `atendimento` (`atendimento`),
  KEY `tipodocumento` (`tipodocumento`),
  KEY `formaquitacao` (`formaquitacao`),
  KEY `tipooperacao` (`tipooperacao`),
  KEY `localcobranca` (`localcobranca`),
  KEY `tipodaconta` (`tipodaconta`),
  KEY `centrodecusto` (`centrodecusto`),
  KEY `empresa` (`empresa`),
  KEY `contacontabil` (`contacontabil`),
  KEY `colaborador` (`colaborador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.campospersonalizados
CREATE TABLE IF NOT EXISTS `campospersonalizados` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `origem` varchar(50) DEFAULT NULL,
  `nomedocampo` varchar(50) DEFAULT NULL,
  `valordocampo` varchar(255) DEFAULT NULL,
  `codigodaorigem` varchar(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `livro` varchar(50) DEFAULT NULL,
  `notaprova1escrita` decimal(10,2) DEFAULT NULL,
  `notaprova1oral` decimal(10,2) DEFAULT NULL,
  `notaprova2escrita` decimal(10,2) DEFAULT NULL,
  `notaprova2oral` decimal(10,2) DEFAULT NULL,
  `notaprova3escrita` decimal(10,2) DEFAULT NULL,
  `notaprova3oral` decimal(10,2) DEFAULT NULL,
  `notaprova4escrita` decimal(10,2) DEFAULT NULL,
  `notaprova4oral` decimal(10,2) DEFAULT NULL,
  `mediaescrita` decimal(10,2) DEFAULT NULL,
  `mediaoral` decimal(10,2) DEFAULT NULL,
  `mediafinal` decimal(10,2) DEFAULT NULL,
  `certificados` varchar(300) DEFAULT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `datatermino` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `turma` varchar(50) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `reforco1` decimal(10,2) DEFAULT NULL,
  `reforco2` decimal(10,2) DEFAULT NULL,
  `reforco3` decimal(10,2) DEFAULT NULL,
  `reforco4` decimal(10,2) DEFAULT NULL,
  `horas` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.campospersonalizadosopticas
CREATE TABLE IF NOT EXISTS `campospersonalizadosopticas` (
  `codigo` int(10) NOT NULL DEFAULT '0',
  `colaborador` varchar(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `longeodesf` varchar(50) DEFAULT NULL,
  `longeodcil` varchar(50) DEFAULT NULL,
  `longeodeixo` varchar(50) DEFAULT NULL,
  `longeoeesf` varchar(50) DEFAULT NULL,
  `longeoecil` varchar(50) DEFAULT NULL,
  `longeoeeixo` varchar(50) DEFAULT NULL,
  `pertoodesf` varchar(50) DEFAULT NULL,
  `pertoodcil` varchar(50) DEFAULT NULL,
  `pertoodeixo` varchar(50) DEFAULT NULL,
  `pertooeesf` varchar(50) DEFAULT NULL,
  `pertooecil` varchar(50) DEFAULT NULL,
  `pertooeeixo` varchar(50) DEFAULT NULL,
  `dnpod` varchar(50) DEFAULT NULL,
  `dnpoe` varchar(50) DEFAULT NULL,
  `altura` varchar(50) DEFAULT NULL,
  `lentes` varchar(200) DEFAULT NULL,
  `medico` varchar(50) DEFAULT NULL,
  `observacoes` varchar(300) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `numeroos` varchar(50) DEFAULT NULL,
  `longeoddnpdp` varchar(50) DEFAULT NULL,
  `longeoednpdp` varchar(50) DEFAULT NULL,
  `pertooddnpdp` varchar(50) DEFAULT NULL,
  `pertooednpdp` varchar(50) DEFAULT NULL,
  `osmontagem` varchar(200) DEFAULT NULL,
  `vertical` varchar(50) DEFAULT NULL,
  `horizontal` varchar(50) DEFAULT NULL,
  `diagonalmaior` varchar(50) DEFAULT NULL,
  `ponte` varchar(50) DEFAULT NULL,
  `tipoarmacao` varchar(50) DEFAULT NULL,
  `longeodadc` varchar(50) DEFAULT NULL,
  `longeoeadc` varchar(50) DEFAULT NULL,
  `pertoodadc` varchar(50) DEFAULT NULL,
  `pertooeadc` varchar(50) DEFAULT NULL,
  `longeodaltura` varchar(50) DEFAULT NULL,
  `longeoealtura` varchar(50) DEFAULT NULL,
  `pertoodaltura` varchar(50) DEFAULT NULL,
  `pertooealtura` varchar(50) DEFAULT NULL,
  `tratamento` varchar(50) DEFAULT NULL,
  `tamanho` varchar(50) DEFAULT NULL,
  `valortratamento` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustos
CREATE TABLE IF NOT EXISTS `centrodecustos` (
  `codigo` varchar(10) NOT NULL DEFAULT '',
  `centrodecusto` varchar(200) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `pontodereferencia` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `cnpj` varchar(100) DEFAULT NULL,
  `area` decimal(10,2) DEFAULT NULL,
  `unidades` decimal(10,2) DEFAULT NULL,
  `prazofinal` date DEFAULT NULL,
  `selecionado` varchar(1) DEFAULT NULL,
  `situacao` varchar(10) DEFAULT 'Ativo',
  `tipo` varchar(20) DEFAULT NULL,
  `valororcado` decimal(12,4) DEFAULT '0.0000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustosanexos
CREATE TABLE IF NOT EXISTS `centrodecustosanexos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocentrodecusto` varchar(50) DEFAULT NULL,
  `nomeanexo` varchar(50) DEFAULT NULL,
  `arquivo` varchar(500) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustosexecucao
CREATE TABLE IF NOT EXISTS `centrodecustosexecucao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `centrodecustos` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `percentualexecutado` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustosgrupo
CREATE TABLE IF NOT EXISTS `centrodecustosgrupo` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `valororcado` decimal(15,2) DEFAULT '0.00',
  `quantidade` decimal(15,2) DEFAULT NULL,
  `valounitario` decimal(15,2) DEFAULT NULL,
  `unidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustosorcamento
CREATE TABLE IF NOT EXISTS `centrodecustosorcamento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  `hierarquiaformatada` varchar(200) DEFAULT NULL,
  `codigogrupo` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `descricaoformatada` varchar(200) DEFAULT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `quantidade` decimal(15,2) DEFAULT NULL,
  `valorunitario` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `tmpquantidade` decimal(20,7) DEFAULT NULL,
  `tmpvalorunitario` decimal(20,7) DEFAULT NULL,
  `tmpvalortotal` decimal(20,7) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustosorcamentoshoras
CREATE TABLE IF NOT EXISTS `centrodecustosorcamentoshoras` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `centrodecusto` char(50) DEFAULT NULL,
  `centrodecustoorcamento` varchar(50) DEFAULT NULL,
  `quantidade` decimal(20,7) DEFAULT '0.0000000',
  `vunitario` decimal(20,7) DEFAULT '0.0000000',
  `vtotal` decimal(20,7) DEFAULT '0.0000000',
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustosorcamentositens
CREATE TABLE IF NOT EXISTS `centrodecustosorcamentositens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `centrodecustoorcamento` varchar(50) DEFAULT NULL,
  `codigoitem` varchar(50) DEFAULT NULL,
  `quantidade` decimal(20,7) DEFAULT '0.0000000',
  `vunitario` decimal(20,7) DEFAULT '0.0000000',
  `vtotal` decimal(20,7) DEFAULT '0.0000000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustospecas
CREATE TABLE IF NOT EXISTS `centrodecustospecas` (
  `codigointerno` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) DEFAULT NULL,
  `codigocentrodecustos` varchar(20) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `subtipo` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `qnt` decimal(20,5) DEFAULT NULL,
  `tipocabeca` varchar(50) DEFAULT NULL,
  `alturacabeca` decimal(20,5) DEFAULT NULL,
  `secao` decimal(20,5) DEFAULT NULL,
  `comprimentocorpo` decimal(20,5) DEFAULT NULL,
  `secaoplatibanda` decimal(20,5) DEFAULT NULL,
  `comprimentoplatibanda` decimal(20,5) DEFAULT NULL,
  `console1` decimal(20,5) DEFAULT NULL,
  `qntconsole1` decimal(20,5) DEFAULT NULL,
  `console2` decimal(20,5) DEFAULT NULL,
  `qntconsole2` decimal(20,5) DEFAULT NULL,
  `console3` decimal(20,5) DEFAULT NULL,
  `qntconsole3` decimal(20,5) DEFAULT NULL,
  `volumeplatibanda` decimal(20,5) DEFAULT NULL,
  `volumecabeca` decimal(20,5) DEFAULT NULL,
  `volumecorpo` decimal(20,5) DEFAULT NULL,
  `volumeconsole` decimal(20,5) DEFAULT NULL,
  `volumeelemento` decimal(20,5) DEFAULT NULL,
  `tipolongarina` varchar(50) DEFAULT NULL,
  `vao` decimal(20,5) DEFAULT NULL,
  `beiral` tinyint(1) DEFAULT '0',
  `comprimento` decimal(20,5) DEFAULT NULL,
  `volumebeiral` decimal(20,5) DEFAULT NULL,
  `volumebase` decimal(20,5) DEFAULT NULL,
  `largura` decimal(20,5) DEFAULT NULL,
  `areamesa` decimal(20,5) DEFAULT NULL,
  `qntnervuras` decimal(20,5) DEFAULT NULL,
  `volumemesa` decimal(20,5) DEFAULT NULL,
  `volumenervuras` decimal(20,5) DEFAULT NULL,
  `areaplacas` decimal(20,5) DEFAULT NULL,
  `volumetotalelementos` decimal(20,5) DEFAULT NULL,
  `item` bigint(20) DEFAULT NULL,
  `codigosetoratual` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigointerno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustospecassetores
CREATE TABLE IF NOT EXISTS `centrodecustospecassetores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopeca` varchar(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `codigosetor` varchar(20) DEFAULT NULL,
  `responsavel` varchar(150) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.centrodecustosveiculos
CREATE TABLE IF NOT EXISTS `centrodecustosveiculos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocentrodecustos` varchar(20) DEFAULT NULL,
  `codigomarca` varchar(20) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `chassi` varchar(20) DEFAULT NULL,
  `numeromotor` varchar(20) DEFAULT NULL,
  `combustivel` varchar(10) DEFAULT NULL,
  `odometro` varchar(10) DEFAULT NULL,
  `anofabricacao` varchar(4) DEFAULT NULL,
  `anomodelo` varchar(4) DEFAULT NULL,
  `potencia` varchar(10) DEFAULT NULL,
  `cilindradas` varchar(10) DEFAULT NULL,
  `codigocor` varchar(20) DEFAULT NULL,
  `portas` varchar(2) DEFAULT NULL,
  `renavam` varchar(20) DEFAULT NULL,
  `acessorios` varchar(500) DEFAULT NULL,
  `direcao` varchar(20) DEFAULT NULL,
  `recall` tinyint(1) DEFAULT '0',
  `indiciosinistro` tinyint(1) DEFAULT '0',
  `gravame` tinyint(1) DEFAULT '0',
  `leilao` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cepfaixas
CREATE TABLE IF NOT EXISTS `cepfaixas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cepinicial` varchar(50) DEFAULT NULL,
  `cepfinal` varchar(50) DEFAULT NULL,
  `dr` varchar(50) DEFAULT NULL,
  `unitizador` varchar(50) DEFAULT NULL,
  `centralizador` varchar(50) DEFAULT NULL,
  `soma` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cfop
CREATE TABLE IF NOT EXISTS `cfop` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text,
  `cfop` varchar(10) DEFAULT NULL,
  `destacar` varchar(10) DEFAULT 'NÃO',
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklist
CREATE TABLE IF NOT EXISTS `checklist` (
  `codigo` varchar(50) NOT NULL DEFAULT '',
  `nome` varchar(100) DEFAULT NULL,
  `informacoesadicionais` varchar(200) DEFAULT NULL,
  `cliente` varchar(20) DEFAULT NULL,
  `nota` varchar(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklistcolaboradores
CREATE TABLE IF NOT EXISTS `checklistcolaboradores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `checklist` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(50) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `termino` date DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `equipe` varchar(50) DEFAULT NULL,
  `localdeinspecao` varchar(50) DEFAULT NULL,
  `amostragem` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklistcolaboradoresinspecoes
CREATE TABLE IF NOT EXISTS `checklistcolaboradoresinspecoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cheklistitem` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklistcolaboradoresitens
CREATE TABLE IF NOT EXISTS `checklistcolaboradoresitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `checklist` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `codigoitemchecklist` varchar(50) DEFAULT NULL,
  `itemchecklist` varchar(200) DEFAULT NULL,
  `resposta` varchar(200) DEFAULT NULL,
  `checklistcolaborador` int(11) DEFAULT NULL,
  `nota` decimal(10,2) DEFAULT '0.00',
  `selecionado` varchar(50) DEFAULT NULL,
  `situacao` varchar(50) DEFAULT NULL,
  `reinspecao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklistcolaboradoressubitens
CREATE TABLE IF NOT EXISTS `checklistcolaboradoressubitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `checklistcolaborador` varchar(50) DEFAULT NULL,
  `pergunta` varchar(50) DEFAULT NULL,
  `resposta` varchar(50) DEFAULT NULL,
  `nota` decimal(10,2) DEFAULT '0.00',
  `selecionado` varchar(50) DEFAULT NULL,
  `simnao` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklistitens
CREATE TABLE IF NOT EXISTS `checklistitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `checklist` varchar(50) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `tolerancia` varchar(100) DEFAULT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `diasparaagendamento` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklistposvendas
CREATE TABLE IF NOT EXISTS `checklistposvendas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `checklist` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(50) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `termino` date DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `equipe` varchar(50) DEFAULT NULL,
  `localdeinspecao` varchar(50) DEFAULT NULL,
  `amostragem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklistposvendasitens
CREATE TABLE IF NOT EXISTS `checklistposvendasitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `checklist` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `codigoitemchecklist` varchar(50) DEFAULT NULL,
  `itemchecklist` varchar(200) DEFAULT NULL,
  `resposta` varchar(200) DEFAULT NULL,
  `checklistcolaborador` int(11) DEFAULT NULL,
  `nota` decimal(10,2) DEFAULT '0.00',
  `selecionado` varchar(50) DEFAULT NULL,
  `situacao` varchar(50) DEFAULT NULL,
  `reinspecao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklistposvendassubitens
CREATE TABLE IF NOT EXISTS `checklistposvendassubitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `checklistcolaborador` varchar(50) DEFAULT NULL,
  `pergunta` varchar(50) DEFAULT NULL,
  `resposta` varchar(50) DEFAULT NULL,
  `nota` decimal(10,2) DEFAULT '0.00',
  `selecionado` varchar(50) DEFAULT NULL,
  `simnao` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.checklistsubitens
CREATE TABLE IF NOT EXISTS `checklistsubitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `checklist` varchar(50) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `checklistitem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cheques
CREATE TABLE IF NOT EXISTS `cheques` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `datarecebimento` date DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `numerocheque` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `bompara` date DEFAULT NULL,
  `codigocolaborador` varchar(11) DEFAULT NULL,
  `notafiscal` varchar(20) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cidades
CREATE TABLE IF NOT EXISTS `cidades` (
  `codigo` varchar(50) NOT NULL DEFAULT '0',
  `cidade` varchar(65) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `codigoibge` varchar(7) DEFAULT NULL,
  `codigovendedor` varchar(10) DEFAULT NULL,
  `situacao` varchar(10) DEFAULT NULL,
  `iss` varchar(10) DEFAULT NULL,
  `reducaopessoajuridica` varchar(10) DEFAULT NULL,
  `issretido` varchar(10) DEFAULT NULL,
  `rota` varchar(20) DEFAULT NULL,
  `transportadora` varchar(20) DEFAULT NULL,
  `valorfrete` decimal(10,2) DEFAULT '0.00',
  `mensagemalerta` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cidadescoordenadas
CREATE TABLE IF NOT EXISTS `cidadescoordenadas` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `capital` tinyint(1) NOT NULL,
  `codigouf` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cidadestransportadoras
CREATE TABLE IF NOT EXISTS `cidadestransportadoras` (
  `codigo` varchar(10) NOT NULL,
  `codigocidade` varchar(45) DEFAULT NULL,
  `codigotransportadora` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cincowdoish
CREATE TABLE IF NOT EXISTS `cincowdoish` (
  `codigo` varchar(50) NOT NULL,
  `data` date DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `resumo` varchar(200) DEFAULT NULL,
  `objetivo` varchar(200) DEFAULT NULL,
  `justificativa` varchar(200) DEFAULT NULL,
  `oque` varchar(200) DEFAULT NULL,
  `porque` varchar(200) DEFAULT NULL,
  `onde` varchar(200) DEFAULT NULL,
  `quando` varchar(200) DEFAULT NULL,
  `quem` varchar(200) DEFAULT NULL,
  `como` varchar(200) DEFAULT NULL,
  `quanto` varchar(200) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'NÃO ConcluÃ­do',
  `atendimento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cincowdoishetapas
CREATE TABLE IF NOT EXISTS `cincowdoishetapas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cincowdoish` varchar(50) DEFAULT NULL,
  `etapa` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `dataprevisao` date DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `stakeholders` varchar(255) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `dataprojeto` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.codigodeservicos
CREATE TABLE IF NOT EXISTS `codigodeservicos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigosped` varchar(50) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradores
CREATE TABLE IF NOT EXISTS `colaboradores` (
  `codigo` varchar(100) NOT NULL,
  `tipo` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `nomerazaosocial` varchar(200) DEFAULT NULL,
  `nomefantasia` varchar(130) DEFAULT NULL,
  `situacao` varchar(25) DEFAULT NULL,
  `controleinterno` varchar(25) DEFAULT NULL,
  `cpfcnpj` varchar(18) DEFAULT NULL,
  `rg` varchar(18) DEFAULT NULL,
  `inscricaoestadual` varchar(18) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `bairro` varchar(65) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `pessoacontato` varchar(65) DEFAULT NULL,
  `ultimacompra` datetime DEFAULT NULL,
  `datanascimento` datetime DEFAULT NULL,
  `idade` varchar(25) DEFAULT NULL,
  `nomepai` varchar(130) DEFAULT NULL,
  `nomemae` varchar(130) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `renda` varchar(13) DEFAULT NULL,
  `avalista` varchar(130) DEFAULT NULL,
  `cpfavalista` varchar(18) DEFAULT NULL,
  `telefoneavalista` varchar(13) DEFAULT NULL,
  `enderecoavalista` varchar(65) DEFAULT NULL,
  `localtrabalho` varchar(65) DEFAULT NULL,
  `enderecotrabalho` varchar(65) DEFAULT NULL,
  `telefonetrabalho` varchar(20) DEFAULT NULL,
  `nomevizinho` varchar(65) DEFAULT NULL,
  `telefonevizinho` varchar(20) DEFAULT NULL,
  `enderecovizinho` varchar(65) DEFAULT NULL,
  `estadocivil` varchar(25) DEFAULT NULL,
  `nomeconjuge` varchar(130) DEFAULT NULL,
  `localtrabalhoconjuge` varchar(65) DEFAULT NULL,
  `rendaconjuge` varchar(13) DEFAULT NULL,
  `telefonetrabalhoconjuge` varchar(20) DEFAULT NULL,
  `numeropromocao` varchar(25) DEFAULT NULL,
  `pontos` decimal(12,2) DEFAULT NULL,
  `pontosreceber` decimal(12,2) DEFAULT NULL,
  `site` varchar(65) DEFAULT NULL,
  `comprador` varchar(65) DEFAULT NULL,
  `condicaofretepadrao` varchar(25) DEFAULT NULL,
  `tabelapadrao` varchar(25) DEFAULT NULL,
  `alterartabelavenda` varchar(3) DEFAULT NULL,
  `nivelconfianca` varchar(3) DEFAULT NULL,
  `revenda` varchar(3) DEFAULT NULL,
  `ultimavisita` datetime DEFAULT NULL,
  `msn` varchar(65) DEFAULT NULL,
  `pontoreferencia` varchar(65) DEFAULT NULL,
  `tipopreferencialcontato` varchar(25) DEFAULT NULL,
  `tipocadastro` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `mensagemalerta` varchar(130) DEFAULT NULL,
  `corgerenciadorcontatos` varchar(25) DEFAULT NULL,
  `diasparacontato` varchar(3) DEFAULT NULL,
  `observacoes` varchar(9000) DEFAULT NULL,
  `descontomaximo` varchar(3) DEFAULT NULL,
  `bloqueado` varchar(15) DEFAULT NULL,
  `motivobloqueio` varchar(65) DEFAULT NULL,
  `informacoespsiquicas` varchar(65) DEFAULT NULL,
  `time` varchar(25) DEFAULT NULL,
  `quantidadefuncionarios` decimal(12,0) DEFAULT NULL,
  `consumofuncionarios` decimal(12,2) DEFAULT NULL,
  `consumototal` decimal(12,2) DEFAULT NULL,
  `enviarmaladireta` varchar(3) DEFAULT NULL,
  `motivobloqueiomaladireta` varchar(65) DEFAULT NULL,
  `limitecredito` decimal(12,2) DEFAULT NULL,
  `limiteutilizado` decimal(12,2) DEFAULT NULL,
  `limitedisponivel` decimal(12,2) DEFAULT NULL,
  `rendafamiliar` varchar(13) DEFAULT NULL,
  `consultaspc` varchar(25) DEFAULT NULL,
  `dataconsultaspc` datetime DEFAULT NULL,
  `resultadoconsultaspc` varchar(65) DEFAULT NULL,
  `titulosatrasados` varchar(3) DEFAULT NULL,
  `mediadiasatraso` decimal(10,2) DEFAULT NULL,
  `necessidadeconsulta` varchar(3) DEFAULT NULL,
  `intervaloconsulta` varchar(13) DEFAULT NULL,
  `datanegativacaospc` varchar(13) DEFAULT NULL,
  `valornegativacaospc` varchar(13) DEFAULT NULL,
  `datacadastro` datetime DEFAULT NULL,
  `codigocidade` varchar(100) DEFAULT NULL,
  `telefone0800` varchar(14) DEFAULT NULL,
  `codigoprofissao` varchar(10) DEFAULT NULL,
  `ultimocontato` datetime DEFAULT NULL,
  `codigoramoatividadeprincipal` varchar(10) DEFAULT NULL,
  `codigovendedorgercontatos` varchar(10) DEFAULT NULL,
  `codigovendedorpadrao` varchar(10) DEFAULT NULL,
  `codigotransportadorapreferencial` varchar(10) DEFAULT NULL,
  `codigocondicaopagamentopadrao` varchar(10) DEFAULT NULL,
  `codigogrupo` varchar(10) DEFAULT NULL,
  `codigosubgrupo` varchar(10) DEFAULT NULL,
  `cpfconjuge` varchar(18) DEFAULT NULL,
  `enderecoconjuge` varchar(65) DEFAULT NULL,
  `codigoprofissaoconjuge` varchar(10) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `mesaniversario` varchar(18) DEFAULT NULL,
  `diaaniversario` varchar(10) DEFAULT NULL,
  `comoconheceuaempresa` varchar(45) DEFAULT NULL,
  `valormensalidade` decimal(12,2) DEFAULT NULL,
  `diavencimentomensalidade` varchar(2) DEFAULT NULL,
  `auxilioadministrativo` varchar(10) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  `cidadenaturalidade` varchar(10) DEFAULT NULL,
  `quantidadefilhos` varchar(10) DEFAULT NULL,
  `moradia` varchar(10) DEFAULT NULL,
  `valoraluguelparcelamoradia` varchar(10) DEFAULT NULL,
  `rota` varchar(10) DEFAULT NULL,
  `codigodopais` varchar(10) DEFAULT NULL,
  `suframa` varchar(10) DEFAULT NULL,
  `tmpindividualformatura` decimal(10,2) DEFAULT NULL,
  `nacionalidade` varchar(50) DEFAULT NULL,
  `naturalidade` varchar(50) DEFAULT NULL,
  `estadonaturalidade` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `nascimentoconjuge` date DEFAULT NULL,
  `rendacomplementar` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `nomepaiconjuge` varchar(100) DEFAULT NULL,
  `nomemaeconjuge` varchar(100) DEFAULT NULL,
  `ctps` varchar(100) DEFAULT NULL,
  `entradahorario` varchar(100) DEFAULT NULL,
  `intervalorefeicao` varchar(100) DEFAULT NULL,
  `saidahorario` varchar(100) DEFAULT NULL,
  `funcaofuncionario` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `tmpconceitofinanceiro` varchar(50) DEFAULT NULL,
  `enquadramentotributacao` varchar(50) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `ufplaca` varchar(50) DEFAULT NULL,
  `funcionariocontratacao` date DEFAULT NULL,
  `funcionariodesligamento` date DEFAULT NULL,
  `funcionariomotivodesligamento` varchar(200) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `nascimentopai` date DEFAULT NULL,
  `nascimentomae` date DEFAULT NULL,
  `entradahorariotarde` varchar(50) DEFAULT NULL,
  `saidahorariotarde` varchar(50) DEFAULT NULL,
  `inscricaomunicipal` varchar(50) DEFAULT NULL,
  `padraoipi` varchar(50) DEFAULT NULL,
  `padraofrete` varchar(50) DEFAULT NULL,
  `padraost` varchar(50) DEFAULT NULL,
  `padraooutrasdespesas` varchar(50) DEFAULT NULL,
  `padraodiferencaicms` varchar(50) DEFAULT NULL,
  `padraolucrodesejado` varchar(50) DEFAULT NULL,
  `valetransporte` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT '1058',
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `cadastrosite` tinyint(1) DEFAULT '0',
  `devolucaocorreios` tinyint(1) DEFAULT '0',
  `vip` tinyint(1) DEFAULT '0',
  `whatsapp` varchar(50) DEFAULT NULL,
  `cnpj` varchar(50) DEFAULT NULL,
  `marcapadrao` varchar(50) DEFAULT NULL,
  `emailnfe` varchar(200) DEFAULT NULL,
  `datainativacao` date DEFAULT NULL,
  `sincronizarcom` varchar(100) DEFAULT NULL,
  `natureza` varchar(20) DEFAULT NULL,
  `fabricante` varchar(20) DEFAULT NULL,
  `dcb` varchar(20) DEFAULT NULL,
  `certidaonascimento` varchar(25) DEFAULT NULL,
  `mensalidadecomplementar` decimal(10,2) DEFAULT NULL,
  `telefoneconjuge2` varchar(20) DEFAULT NULL,
  `anuidade` decimal(10,2) DEFAULT NULL,
  `vencimentoanuidade` varchar(20) DEFAULT NULL,
  `usuarioultimocontato` varchar(50) DEFAULT NULL,
  `ultimamaladireta` date DEFAULT NULL,
  `ultimaposvenda` date DEFAULT NULL,
  `diasposvendas` varchar(10) DEFAULT NULL,
  `condicional` tinyint(1) DEFAULT '1',
  `ultimovendedor` varchar(20) DEFAULT NULL,
  `comissaocliente` decimal(10,2) DEFAULT NULL,
  `horariopreferencial` varchar(50) DEFAULT NULL,
  `numeracao` varchar(50) DEFAULT NULL,
  `codigosubgrupo2` varchar(10) DEFAULT NULL,
  `telefonepai` varchar(15) DEFAULT NULL,
  `celularpai` varchar(15) DEFAULT NULL,
  `enderecopai` varchar(50) DEFAULT NULL,
  `telefonemae` varchar(15) DEFAULT NULL,
  `celulamae` varchar(15) DEFAULT NULL,
  `enderecomae` varchar(50) DEFAULT NULL,
  `tmpquantidadereunioes` decimal(10,2) DEFAULT NULL,
  `usuarioposvendas` varchar(50) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `gratificacao` decimal(10,2) DEFAULT NULL,
  `conjugerg` varchar(20) DEFAULT NULL,
  `entradasabado` varchar(10) DEFAULT NULL,
  `saidasabado` varchar(10) DEFAULT NULL,
  `notrabalhodesde` date DEFAULT NULL,
  `notrabalhodesdeconjuge` date DEFAULT NULL,
  `codigofarsul` varchar(20) DEFAULT NULL,
  `nivelmatricula` varchar(20) DEFAULT NULL,
  `itr` varchar(20) DEFAULT NULL,
  `incra` varchar(20) DEFAULT NULL,
  `modelotalao` varchar(20) DEFAULT NULL,
  `datafiliacao` date DEFAULT NULL,
  `areatotal` decimal(10,2) DEFAULT NULL,
  `codigoregiao` varchar(20) DEFAULT NULL,
  `codigocontrato` varchar(20) DEFAULT NULL,
  `bancodebitoautomatico` varchar(20) DEFAULT NULL,
  `agenciadebitoautomatico` varchar(20) DEFAULT NULL,
  `contadebitoautomatico` varchar(20) DEFAULT NULL,
  `atividadeprincipal` varchar(20) DEFAULT NULL,
  `observacoesfinanceiras` varchar(500) DEFAULT NULL,
  `regimecasamento` varchar(50) DEFAULT NULL,
  `registrocivil` varchar(50) DEFAULT NULL,
  `flsregistrocivil` varchar(50) DEFAULT NULL,
  `livroregistrocivil` varchar(50) DEFAULT NULL,
  `dataregistrocivil` date DEFAULT NULL,
  `cartorioregistrocivil` varchar(50) DEFAULT NULL,
  `tituloeleitor` varchar(50) DEFAULT NULL,
  `zonatituloeleitor` varchar(50) DEFAULT NULL,
  `datatituloeleitor` date DEFAULT NULL,
  `alfabetizado` varchar(50) DEFAULT NULL,
  `tipoproprietario` varchar(50) DEFAULT NULL,
  `localizacaodapropriedade` varchar(200) DEFAULT NULL,
  `codigomunicipiodapropriedade` varchar(100) DEFAULT NULL,
  `areacultivavel` decimal(10,2) DEFAULT NULL,
  `areagramada` decimal(10,2) DEFAULT NULL,
  `areademato` decimal(10,2) DEFAULT NULL,
  `areadecriacao` decimal(10,2) DEFAULT NULL,
  `datarg` date DEFAULT NULL,
  `pedido` tinyint(1) DEFAULT '1',
  `crea` varchar(10) DEFAULT NULL,
  `numeroart` varchar(10) DEFAULT NULL,
  `valorhora` decimal(10,2) DEFAULT NULL,
  `titulacao` varchar(20) DEFAULT NULL,
  `codigoinstituicao` varchar(20) DEFAULT NULL,
  `orgaoemissor` varchar(20) DEFAULT NULL,
  `codigograduacao` varchar(20) DEFAULT NULL,
  `ordemproducao` tinyint(1) DEFAULT '1',
  `tmpidade` int(11) DEFAULT NULL,
  `tmpmeta` decimal(10,2) DEFAULT NULL,
  `usuariopadrao` varchar(50) DEFAULT NULL,
  `dataalteracao` date DEFAULT NULL,
  `autorizador` varchar(200) DEFAULT NULL,
  `associado` tinyint(1) DEFAULT '1',
  `codigoresponsavel` varchar(11) DEFAULT NULL,
  `posvenda` tinyint(1) DEFAULT '1',
  `documentopadraomensalidade` varchar(50) DEFAULT NULL,
  `titularpagador` varchar(20) DEFAULT NULL,
  `valorhoraextra` decimal(10,2) DEFAULT NULL,
  `ir` decimal(10,2) DEFAULT NULL,
  `inss` decimal(10,2) DEFAULT NULL,
  `fgts` decimal(10,2) DEFAULT NULL,
  `tmptipo` varchar(50) DEFAULT NULL,
  `numerocnh` varchar(30) DEFAULT NULL,
  `validadecnh` date DEFAULT NULL,
  `sponsor` varchar(200) DEFAULT NULL,
  `grupolead` varchar(50) DEFAULT NULL,
  `usuariocadastro` varchar(20) DEFAULT NULL,
  `renasem` varchar(20) DEFAULT NULL,
  `databloqueiocondicional` date DEFAULT NULL,
  `codigoapp` varchar(20) DEFAULT NULL,
  `primeiracompra` date DEFAULT NULL,
  `cnpjraiz` varchar(15) DEFAULT NULL,
  `codigoecommerce` varchar(200) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `altura` decimal(10,2) DEFAULT NULL,
  `tiposanguineo` varchar(3) DEFAULT NULL,
  `tmpultimoatendimento` varchar(20) DEFAULT NULL,
  `observacoesnota` varchar(50) DEFAULT NULL,
  `tmpsaldoanterior` decimal(15,2) DEFAULT NULL,
  `grupocomercial` varchar(20) DEFAULT NULL,
  `observacoesdois` text,
  `descricaoservicopadrao` varchar(200) DEFAULT NULL,
  `servicopadrao` varchar(20) DEFAULT NULL,
  `empresamensalidade` varchar(2) DEFAULT NULL,
  `percentualfretetomador` decimal(10,2) DEFAULT NULL,
  `codigocolaboradorindicacao` varchar(20) DEFAULT NULL,
  `id_opencart` varchar(20) DEFAULT NULL,
  `enviar_opencart` tinyint(1) DEFAULT '0',
  `enviarwhats` varchar(20) DEFAULT NULL,
  `codigocontribuinte` varchar(20) DEFAULT NULL,
  `codigoequipe` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresanexos
CREATE TABLE IF NOT EXISTS `colaboradoresanexos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `nomeanexo` varchar(50) DEFAULT NULL,
  `arquivo` varchar(500) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresanotacoes
CREATE TABLE IF NOT EXISTS `colaboradoresanotacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `codigocolaborador` varchar(50) DEFAULT NULL,
  `anotacao` varchar(500) DEFAULT NULL,
  `especificacao` varchar(500) DEFAULT NULL,
  `especificacao2` varchar(500) DEFAULT NULL,
  `anexo` varchar(500) DEFAULT NULL,
  `contrato` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradorescomissoes
CREATE TABLE IF NOT EXISTS `colaboradorescomissoes` (
  `codigo` varchar(50) NOT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `contadebito` varchar(50) DEFAULT NULL,
  `contacredito` varchar(50) DEFAULT NULL,
  `observacoes` varchar(100) DEFAULT NULL,
  `tipocolaborador` varchar(50) DEFAULT NULL,
  `safra` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresconceitofinanceiro
CREATE TABLE IF NOT EXISTS `colaboradoresconceitofinanceiro` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeconceito` varchar(50) DEFAULT NULL,
  `valorinicial` decimal(10,0) DEFAULT NULL,
  `valorfinal` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresconsultaspc
CREATE TABLE IF NOT EXISTS `colaboradoresconsultaspc` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocolaborador` varchar(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `resultadoconsulta` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradorescontasbancarias
CREATE TABLE IF NOT EXISTS `colaboradorescontasbancarias` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) NOT NULL DEFAULT '0',
  `banco` varchar(50) DEFAULT NULL,
  `agencia` varchar(50) DEFAULT NULL,
  `conta` varchar(50) DEFAULT NULL,
  `favorecido` varchar(200) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresdatasdiversas
CREATE TABLE IF NOT EXISTS `colaboradoresdatasdiversas` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(20) DEFAULT '0',
  `data` date DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `dataalerta` date DEFAULT NULL,
  `evento` varchar(50) DEFAULT NULL,
  `lido` varchar(50) DEFAULT 'N',
  `status` varchar(20) DEFAULT 'NÃO ConcluÃ­do',
  `dataliberacao` date DEFAULT NULL,
  `datavencimento` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresdependentes
CREATE TABLE IF NOT EXISTS `colaboradoresdependentes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `dependente` varchar(50) DEFAULT NULL,
  `concatenar` varchar(50) DEFAULT '00',
  `relacionamento` varchar(50) DEFAULT 'Dependente',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresdocumentos
CREATE TABLE IF NOT EXISTS `colaboradoresdocumentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresepi
CREATE TABLE IF NOT EXISTS `colaboradoresepi` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `ca` varchar(100) DEFAULT NULL,
  `datadevolucao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresequipamentos
CREATE TABLE IF NOT EXISTS `colaboradoresequipamentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `equipamento` varchar(50) DEFAULT NULL,
  `numerodeserie` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `ocorrencia` varchar(2000) DEFAULT NULL,
  `valorlocacao` decimal(10,2) DEFAULT NULL,
  `patrimonio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresferias
CREATE TABLE IF NOT EXISTS `colaboradoresferias` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `datainicial` date DEFAULT NULL,
  `datafinal` date DEFAULT NULL,
  `totaldias` decimal(10,2) DEFAULT NULL,
  `referencia` varchar(200) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoreslancamentocontabeis
CREATE TABLE IF NOT EXISTS `colaboradoreslancamentocontabeis` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `contadebito` varchar(20) DEFAULT NULL,
  `valorfixo` decimal(15,5) DEFAULT '0.00000',
  `percentualsobresalario` decimal(15,5) DEFAULT '0.00000',
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresmensalidadesespecificas
CREATE TABLE IF NOT EXISTS `colaboradoresmensalidadesespecificas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(20) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresponto
CREATE TABLE IF NOT EXISTS `colaboradoresponto` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `manhaentrada` datetime DEFAULT NULL,
  `manhasaida` datetime DEFAULT NULL,
  `tardeentrada` datetime DEFAULT NULL,
  `tardesaida` datetime DEFAULT NULL,
  `extraentrada` datetime DEFAULT NULL,
  `extrasaida` datetime DEFAULT NULL,
  `falta` varchar(3) DEFAULT 'NÃO',
  `obervacoes` varchar(50) DEFAULT 'NÃO',
  `minutosmanha` decimal(10,2) DEFAULT NULL,
  `minutostarde` decimal(10,2) DEFAULT NULL,
  `minutosextra` decimal(10,2) DEFAULT NULL,
  `tipohoras` varchar(50) DEFAULT 'Trabalhadas',
  `padraoentradamanha` datetime DEFAULT NULL,
  `padraosaidamanha` datetime DEFAULT NULL,
  `padraentradatarde` datetime DEFAULT NULL,
  `padraosaidatarde` datetime DEFAULT NULL,
  `diadasemana` varchar(20) DEFAULT NULL,
  `codigodiarioobra` varchar(11) DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradorespresenca
CREATE TABLE IF NOT EXISTS `colaboradorespresenca` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `evento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresqualificacoes
CREATE TABLE IF NOT EXISTS `colaboradoresqualificacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `qualificacao` varchar(50) DEFAULT NULL,
  `conformidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoressetores
CREATE TABLE IF NOT EXISTS `colaboradoressetores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradoresvaloresadicionais
CREATE TABLE IF NOT EXISTS `colaboradoresvaloresadicionais` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(20) DEFAULT NULL,
  `datainicial` date DEFAULT NULL,
  `datafinal` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `situacao` varchar(20) DEFAULT '',
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colaboradores_copy
CREATE TABLE IF NOT EXISTS `colaboradores_copy` (
  `codigo` varchar(100) NOT NULL,
  `tipo` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `nomerazaosocial` varchar(200) DEFAULT NULL,
  `nomefantasia` varchar(130) DEFAULT NULL,
  `situacao` varchar(25) DEFAULT NULL,
  `controleinterno` varchar(25) DEFAULT NULL,
  `cpfcnpj` varchar(18) DEFAULT NULL,
  `rg` varchar(18) DEFAULT NULL,
  `inscricaoestadual` varchar(18) DEFAULT NULL,
  `endereco` varchar(65) DEFAULT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `complemento` varchar(25) DEFAULT NULL,
  `bairro` varchar(65) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `pessoacontato` varchar(65) DEFAULT NULL,
  `ultimacompra` datetime DEFAULT NULL,
  `datanascimento` datetime DEFAULT NULL,
  `idade` varchar(25) DEFAULT NULL,
  `nomepai` varchar(130) DEFAULT NULL,
  `nomemae` varchar(130) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `renda` varchar(13) DEFAULT NULL,
  `avalista` varchar(130) DEFAULT NULL,
  `cpfavalista` varchar(18) DEFAULT NULL,
  `telefoneavalista` varchar(13) DEFAULT NULL,
  `enderecoavalista` varchar(65) DEFAULT NULL,
  `localtrabalho` varchar(65) DEFAULT NULL,
  `enderecotrabalho` varchar(65) DEFAULT NULL,
  `telefonetrabalho` varchar(20) DEFAULT NULL,
  `nomevizinho` varchar(65) DEFAULT NULL,
  `telefonevizinho` varchar(20) DEFAULT NULL,
  `enderecovizinho` varchar(65) DEFAULT NULL,
  `estadocivil` varchar(25) DEFAULT NULL,
  `nomeconjuge` varchar(130) DEFAULT NULL,
  `localtrabalhoconjuge` varchar(65) DEFAULT NULL,
  `rendaconjuge` varchar(13) DEFAULT NULL,
  `telefonetrabalhoconjuge` varchar(20) DEFAULT NULL,
  `numeropromocao` varchar(25) DEFAULT NULL,
  `pontos` decimal(12,2) DEFAULT NULL,
  `pontosreceber` decimal(12,2) DEFAULT NULL,
  `site` varchar(65) DEFAULT NULL,
  `comprador` varchar(65) DEFAULT NULL,
  `condicaofretepadrao` varchar(25) DEFAULT NULL,
  `tabelapadrao` varchar(25) DEFAULT NULL,
  `alterartabelavenda` varchar(3) DEFAULT NULL,
  `nivelconfianca` varchar(3) DEFAULT NULL,
  `revenda` varchar(3) DEFAULT NULL,
  `ultimavisita` datetime DEFAULT NULL,
  `msn` varchar(65) DEFAULT NULL,
  `pontoreferencia` varchar(65) DEFAULT NULL,
  `tipopreferencialcontato` varchar(25) DEFAULT NULL,
  `tipocadastro` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `mensagemalerta` varchar(130) DEFAULT NULL,
  `corgerenciadorcontatos` varchar(25) DEFAULT NULL,
  `diasparacontato` varchar(3) DEFAULT NULL,
  `observacoes` varchar(9000) DEFAULT NULL,
  `descontomaximo` varchar(3) DEFAULT NULL,
  `bloqueado` varchar(15) DEFAULT NULL,
  `motivobloqueio` varchar(65) DEFAULT NULL,
  `informacoespsiquicas` varchar(65) DEFAULT NULL,
  `time` varchar(25) DEFAULT NULL,
  `quantidadefuncionarios` decimal(12,0) DEFAULT NULL,
  `consumofuncionarios` decimal(12,2) DEFAULT NULL,
  `consumototal` decimal(12,2) DEFAULT NULL,
  `enviarmaladireta` varchar(3) DEFAULT NULL,
  `motivobloqueiomaladireta` varchar(65) DEFAULT NULL,
  `limitecredito` decimal(12,2) DEFAULT NULL,
  `limiteutilizado` decimal(12,2) DEFAULT NULL,
  `limitedisponivel` decimal(12,2) DEFAULT NULL,
  `rendafamiliar` varchar(13) DEFAULT NULL,
  `consultaspc` varchar(25) DEFAULT NULL,
  `dataconsultaspc` datetime DEFAULT NULL,
  `resultadoconsultaspc` varchar(65) DEFAULT NULL,
  `titulosatrasados` varchar(3) DEFAULT NULL,
  `mediadiasatraso` decimal(10,2) DEFAULT NULL,
  `necessidadeconsulta` varchar(3) DEFAULT NULL,
  `intervaloconsulta` varchar(13) DEFAULT NULL,
  `datanegativacaospc` varchar(13) DEFAULT NULL,
  `valornegativacaospc` varchar(13) DEFAULT NULL,
  `datacadastro` datetime DEFAULT NULL,
  `codigocidade` varchar(100) DEFAULT NULL,
  `telefone0800` varchar(14) DEFAULT NULL,
  `codigoprofissao` varchar(10) DEFAULT NULL,
  `ultimocontato` datetime DEFAULT NULL,
  `codigoramoatividadeprincipal` varchar(10) DEFAULT NULL,
  `codigovendedorgercontatos` varchar(10) DEFAULT NULL,
  `codigovendedorpadrao` varchar(10) DEFAULT NULL,
  `codigotransportadorapreferencial` varchar(10) DEFAULT NULL,
  `codigocondicaopagamentopadrao` varchar(10) DEFAULT NULL,
  `codigogrupo` varchar(10) DEFAULT NULL,
  `codigosubgrupo` varchar(10) DEFAULT NULL,
  `cpfconjuge` varchar(18) DEFAULT NULL,
  `enderecoconjuge` varchar(65) DEFAULT NULL,
  `codigoprofissaoconjuge` varchar(10) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `mesaniversario` varchar(18) DEFAULT NULL,
  `diaaniversario` varchar(10) DEFAULT NULL,
  `comoconheceuaempresa` varchar(45) DEFAULT NULL,
  `valormensalidade` decimal(12,2) DEFAULT NULL,
  `diavencimentomensalidade` varchar(2) DEFAULT NULL,
  `auxilioadministrativo` varchar(10) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  `cidadenaturalidade` varchar(10) DEFAULT NULL,
  `quantidadefilhos` varchar(10) DEFAULT NULL,
  `moradia` varchar(10) DEFAULT NULL,
  `valoraluguelparcelamoradia` varchar(10) DEFAULT NULL,
  `rota` varchar(10) DEFAULT NULL,
  `codigodopais` varchar(10) DEFAULT NULL,
  `suframa` varchar(10) DEFAULT NULL,
  `tmpindividualformatura` decimal(10,2) DEFAULT NULL,
  `nacionalidade` varchar(50) DEFAULT NULL,
  `naturalidade` varchar(50) DEFAULT NULL,
  `estadonaturalidade` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `nascimentoconjuge` date DEFAULT NULL,
  `rendacomplementar` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `nomepaiconjuge` varchar(100) DEFAULT NULL,
  `nomemaeconjuge` varchar(100) DEFAULT NULL,
  `ctps` varchar(100) DEFAULT NULL,
  `entradahorario` varchar(100) DEFAULT NULL,
  `intervalorefeicao` varchar(100) DEFAULT NULL,
  `saidahorario` varchar(100) DEFAULT NULL,
  `funcaofuncionario` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `tmpconceitofinanceiro` varchar(50) DEFAULT NULL,
  `enquadramentotributacao` varchar(50) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `ufplaca` varchar(50) DEFAULT NULL,
  `funcionariocontratacao` date DEFAULT NULL,
  `funcionariodesligamento` date DEFAULT NULL,
  `funcionariomotivodesligamento` varchar(200) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `nascimentopai` date DEFAULT NULL,
  `nascimentomae` date DEFAULT NULL,
  `entradahorariotarde` varchar(50) DEFAULT NULL,
  `saidahorariotarde` varchar(50) DEFAULT NULL,
  `inscricaomunicipal` varchar(50) DEFAULT NULL,
  `padraoipi` varchar(50) DEFAULT NULL,
  `padraofrete` varchar(50) DEFAULT NULL,
  `padraost` varchar(50) DEFAULT NULL,
  `padraooutrasdespesas` varchar(50) DEFAULT NULL,
  `padraodiferencaicms` varchar(50) DEFAULT NULL,
  `padraolucrodesejado` varchar(50) DEFAULT NULL,
  `valetransporte` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT '1058',
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `cadastrosite` tinyint(1) DEFAULT '0',
  `devolucaocorreios` tinyint(1) DEFAULT '0',
  `vip` tinyint(1) DEFAULT '0',
  `whatsapp` varchar(50) DEFAULT NULL,
  `cnpj` varchar(50) DEFAULT NULL,
  `marcapadrao` varchar(50) DEFAULT NULL,
  `emailnfe` varchar(200) DEFAULT NULL,
  `datainativacao` date DEFAULT NULL,
  `sincronizarcom` varchar(100) DEFAULT NULL,
  `natureza` varchar(20) DEFAULT NULL,
  `fabricante` varchar(20) DEFAULT NULL,
  `dcb` varchar(20) DEFAULT NULL,
  `certidaonascimento` varchar(25) DEFAULT NULL,
  `mensalidadecomplementar` decimal(10,2) DEFAULT NULL,
  `telefoneconjuge2` varchar(20) DEFAULT NULL,
  `anuidade` decimal(10,2) DEFAULT NULL,
  `vencimentoanuidade` varchar(20) DEFAULT NULL,
  `usuarioultimocontato` varchar(50) DEFAULT NULL,
  `ultimamaladireta` date DEFAULT NULL,
  `ultimaposvenda` date DEFAULT NULL,
  `diasposvendas` varchar(10) DEFAULT NULL,
  `condicional` tinyint(1) DEFAULT '1',
  `ultimovendedor` varchar(20) DEFAULT NULL,
  `comissaocliente` decimal(10,2) DEFAULT NULL,
  `horariopreferencial` varchar(50) DEFAULT NULL,
  `numeracao` varchar(50) DEFAULT NULL,
  `codigosubgrupo2` varchar(10) DEFAULT NULL,
  `telefonepai` varchar(15) DEFAULT NULL,
  `celularpai` varchar(15) DEFAULT NULL,
  `enderecopai` varchar(50) DEFAULT NULL,
  `telefonemae` varchar(15) DEFAULT NULL,
  `celulamae` varchar(15) DEFAULT NULL,
  `enderecomae` varchar(50) DEFAULT NULL,
  `tmpquantidadereunioes` decimal(10,2) DEFAULT NULL,
  `usuarioposvendas` varchar(50) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `gratificacao` decimal(10,2) DEFAULT NULL,
  `conjugerg` varchar(20) DEFAULT NULL,
  `entradasabado` varchar(10) DEFAULT NULL,
  `saidasabado` varchar(10) DEFAULT NULL,
  `notrabalhodesde` date DEFAULT NULL,
  `notrabalhodesdeconjuge` date DEFAULT NULL,
  `codigofarsul` varchar(20) DEFAULT NULL,
  `nivelmatricula` varchar(20) DEFAULT NULL,
  `itr` varchar(20) DEFAULT NULL,
  `incra` varchar(20) DEFAULT NULL,
  `modelotalao` varchar(20) DEFAULT NULL,
  `datafiliacao` date DEFAULT NULL,
  `areatotal` decimal(10,2) DEFAULT NULL,
  `codigoregiao` varchar(20) DEFAULT NULL,
  `codigocontrato` varchar(20) DEFAULT NULL,
  `bancodebitoautomatico` varchar(20) DEFAULT NULL,
  `agenciadebitoautomatico` varchar(20) DEFAULT NULL,
  `contadebitoautomatico` varchar(20) DEFAULT NULL,
  `atividadeprincipal` varchar(20) DEFAULT NULL,
  `observacoesfinanceiras` varchar(500) DEFAULT NULL,
  `regimecasamento` varchar(50) DEFAULT NULL,
  `registrocivil` varchar(50) DEFAULT NULL,
  `flsregistrocivil` varchar(50) DEFAULT NULL,
  `livroregistrocivil` varchar(50) DEFAULT NULL,
  `dataregistrocivil` date DEFAULT NULL,
  `cartorioregistrocivil` varchar(50) DEFAULT NULL,
  `tituloeleitor` varchar(50) DEFAULT NULL,
  `zonatituloeleitor` varchar(50) DEFAULT NULL,
  `datatituloeleitor` date DEFAULT NULL,
  `alfabetizado` varchar(50) DEFAULT NULL,
  `tipoproprietario` varchar(50) DEFAULT NULL,
  `localizacaodapropriedade` varchar(200) DEFAULT NULL,
  `codigomunicipiodapropriedade` varchar(100) DEFAULT NULL,
  `areacultivavel` decimal(10,2) DEFAULT NULL,
  `areagramada` decimal(10,2) DEFAULT NULL,
  `areademato` decimal(10,2) DEFAULT NULL,
  `areadecriacao` decimal(10,2) DEFAULT NULL,
  `datarg` date DEFAULT NULL,
  `pedido` tinyint(1) DEFAULT '1',
  `crea` varchar(10) DEFAULT NULL,
  `numeroart` varchar(10) DEFAULT NULL,
  `valorhora` decimal(10,2) DEFAULT NULL,
  `titulacao` varchar(20) DEFAULT NULL,
  `codigoinstituicao` varchar(20) DEFAULT NULL,
  `orgaoemissor` varchar(20) DEFAULT NULL,
  `codigograduacao` varchar(20) DEFAULT NULL,
  `ordemproducao` tinyint(1) DEFAULT '1',
  `tmpidade` int(11) DEFAULT NULL,
  `tmpmeta` decimal(10,2) DEFAULT NULL,
  `usuariopadrao` varchar(50) DEFAULT NULL,
  `dataalteracao` date DEFAULT NULL,
  `autorizador` varchar(200) DEFAULT NULL,
  `associado` tinyint(1) DEFAULT '1',
  `codigoresponsavel` varchar(11) DEFAULT NULL,
  `posvenda` tinyint(1) DEFAULT '1',
  `documentopadraomensalidade` varchar(50) DEFAULT NULL,
  `titularpagador` varchar(20) DEFAULT NULL,
  `valorhoraextra` decimal(10,2) DEFAULT NULL,
  `ir` decimal(10,2) DEFAULT NULL,
  `inss` decimal(10,2) DEFAULT NULL,
  `fgts` decimal(10,2) DEFAULT NULL,
  `tmptipo` varchar(50) DEFAULT NULL,
  `numerocnh` varchar(30) DEFAULT NULL,
  `validadecnh` date DEFAULT NULL,
  `sponsor` varchar(200) DEFAULT NULL,
  `grupolead` varchar(50) DEFAULT NULL,
  `usuariocadastro` varchar(20) DEFAULT NULL,
  `renasem` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.colecoes
CREATE TABLE IF NOT EXISTS `colecoes` (
  `codigo` varchar(10) NOT NULL,
  `colecao` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.comandas
CREATE TABLE IF NOT EXISTS `comandas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `comanda` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `dataabertura` date DEFAULT NULL,
  `horaabertura` time DEFAULT NULL,
  `pessoas` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.comandasitens
CREATE TABLE IF NOT EXISTS `comandasitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  `comanda` varchar(50) DEFAULT NULL,
  `modo` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `impressora` varchar(50) DEFAULT NULL,
  `valoradicional` decimal(10,2) DEFAULT '0.00',
  `itemcomanda` varchar(50) DEFAULT NULL,
  `tabela` decimal(10,2) DEFAULT NULL,
  `paralevar` varchar(50) DEFAULT NULL,
  `atendente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `codigoproduto` (`codigoproduto`),
  KEY `comanda` (`comanda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.comandasitenscomplementos
CREATE TABLE IF NOT EXISTS `comandasitenscomplementos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itemcomanda` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `adicional` decimal(10,2) DEFAULT NULL,
  `comanda` varchar(50) DEFAULT NULL,
  `codigocomplemento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `itemcomanda` (`itemcomanda`),
  KEY `comanda` (`comanda`),
  KEY `codigocomplemento` (`codigocomplemento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.comandaspagamentos
CREATE TABLE IF NOT EXISTS `comandaspagamentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `comanda` varchar(50) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  `codigodocumento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.comandaspagamentositens
CREATE TABLE IF NOT EXISTS `comandaspagamentositens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `valorunitario` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `quantidadepaga` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `atendimento` (`atendimento`),
  KEY `codigoproduto` (`codigoproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.comandaspagamentositenspessoa
CREATE TABLE IF NOT EXISTS `comandaspagamentositenspessoa` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `comandapagamento` int(11) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `pessoa` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.comandossqlaoiniciar
CREATE TABLE IF NOT EXISTS `comandossqlaoiniciar` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `comando` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.comissoes
CREATE TABLE IF NOT EXISTS `comissoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descontoinicial` decimal(10,2) DEFAULT NULL,
  `descontofinal` decimal(10,2) DEFAULT NULL,
  `descontocomissao` decimal(10,2) DEFAULT NULL,
  `valorinicial` decimal(10,2) DEFAULT NULL,
  `valorfinal` decimal(10,2) DEFAULT NULL,
  `percentualcomissao` decimal(10,2) DEFAULT NULL,
  `valorfixo` decimal(10,2) DEFAULT NULL,
  `quantidadeatendimentosinicial` decimal(10,2) DEFAULT NULL,
  `quantidadeatendimentosfinal` decimal(10,2) DEFAULT NULL,
  `vendedor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.complementodecadastros
CREATE TABLE IF NOT EXISTS `complementodecadastros` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `tipodocomplemento` varchar(50) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `complemento2` varchar(50) DEFAULT NULL,
  `informacoesextras` varchar(10000) DEFAULT NULL,
  `situacao` varchar(10) DEFAULT 'Ativo',
  `cor` varchar(20) DEFAULT 'Ativo',
  `ecommerce` tinyint(1) DEFAULT '0',
  `valorinicial` decimal(10,2) DEFAULT NULL,
  `valorfinal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.composicaoitensatendimentos
CREATE TABLE IF NOT EXISTS `composicaoitensatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itematendimento` int(11) DEFAULT NULL,
  `codigomateriaprima` varchar(50) DEFAULT NULL,
  `quantidade` decimal(12,8) DEFAULT NULL,
  `operacaomateria` varchar(50) DEFAULT NULL,
  `valormercadoria` decimal(10,4) DEFAULT NULL,
  `quantidadetotal` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `itematendimento` (`itematendimento`),
  KEY `codigomateriaprima` (`codigomateriaprima`)
) ENGINE=InnoDB AUTO_INCREMENT=1232 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.composicaoitensatendimentos2
CREATE TABLE IF NOT EXISTS `composicaoitensatendimentos2` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itematendimento` varchar(50) DEFAULT NULL,
  `codigopai` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,6) DEFAULT NULL,
  `hierarquia` varchar(1000) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `hierarquiapai` varchar(1000) DEFAULT NULL,
  `quantidadetotal` decimal(10,6) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `imprimirop` varchar(50) DEFAULT 'Sim',
  `tmpmapacarga` varchar(50) DEFAULT NULL,
  `expedicao` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.composicaoprocessos
CREATE TABLE IF NOT EXISTS `composicaoprocessos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `processo` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.composicaoprodutos
CREATE TABLE IF NOT EXISTS `composicaoprodutos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `codigocomponente` varchar(20) DEFAULT NULL,
  `quantidade` decimal(12,6) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT 'Diminuir',
  `unidadeprodutopronto` varchar(20) DEFAULT NULL,
  `conversor` decimal(10,4) DEFAULT NULL,
  `quantidadeinicial` decimal(10,4) DEFAULT NULL,
  `quebra` decimal(10,4) DEFAULT NULL,
  `processo` varchar(20) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `variacao` varchar(50) DEFAULT NULL,
  `imprimirop` varchar(50) DEFAULT '1',
  `expedicao` tinyint(1) DEFAULT '1',
  `configuracao` varchar(50) DEFAULT NULL,
  `valorvariacao` varchar(50) DEFAULT NULL,
  `estavariacaoepartede` varchar(50) DEFAULT NULL,
  `exibirnacomposicao` tinyint(1) DEFAULT '1',
  `formula` tinyint(1) DEFAULT '0',
  `formulaexcel` varchar(5000) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10712 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.composicaoprodutosvariacoes
CREATE TABLE IF NOT EXISTS `composicaoprodutosvariacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `codigocomponente` varchar(20) DEFAULT NULL,
  `quantidade` decimal(10,6) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT 'Diminuir',
  `unidadeprodutopronto` varchar(20) DEFAULT NULL,
  `conversor` decimal(10,4) DEFAULT NULL,
  `quantidadeinicial` decimal(10,4) DEFAULT NULL,
  `quebra` decimal(10,4) DEFAULT NULL,
  `processo` varchar(20) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `codigodavariacaoproducao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.condicoespagamento
CREATE TABLE IF NOT EXISTS `condicoespagamento` (
  `codigo` varchar(10) NOT NULL DEFAULT '',
  `condicao` varchar(45) DEFAULT NULL,
  `pentrada` varchar(45) DEFAULT NULL,
  `pdesconto` varchar(45) DEFAULT NULL,
  `parcelasprazo` varchar(45) DEFAULT NULL,
  `documentopadraoprazo` varchar(45) DEFAULT NULL,
  `documentopadraovista` varchar(45) DEFAULT NULL,
  `diapadraovencimento` varchar(45) DEFAULT NULL,
  `intervaloparcelas` varchar(45) DEFAULT NULL,
  `comissaofaturamento` decimal(10,2) DEFAULT NULL,
  `comissaoliquidez` decimal(10,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Ativo',
  `despesa` decimal(10,2) DEFAULT NULL,
  `atalhopdv` varchar(10) DEFAULT NULL,
  `valorminimo` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.condicoespagamentovendedores
CREATE TABLE IF NOT EXISTS `condicoespagamentovendedores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `condicao` varchar(20) DEFAULT NULL,
  `vendedor` varchar(20) DEFAULT NULL,
  `comissaofaturamento` decimal(10,4) DEFAULT NULL,
  `comissaoliquidez` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.conferenciapacotes
CREATE TABLE IF NOT EXISTS `conferenciapacotes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `venda` decimal(10,2) DEFAULT NULL,
  `conferencia` decimal(10,2) DEFAULT '0.00',
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.configuracoes
CREATE TABLE IF NOT EXISTS `configuracoes` (
	
  `codigoempresa` varchar(10) NOT NULL DEFAULT '0',
  `cabecalhorelatoriolinha1` varchar(130) DEFAULT NULL,
  `cabecalhorelatoriolinha2` varchar(130) DEFAULT NULL,
  `cabecalhorelatoriolinha3` varchar(130) DEFAULT NULL,
  `cabecalhorelatoriolinha4` varchar(130) DEFAULT NULL,
  `cabecalhoimagem1` longblob,
  `cabecalhoimagem2` longblob,
  `aceitarcpfcnpjemduplicidadeparaclientes` tinyint(1) DEFAULT NULL,
  `aceitarcpfcnpjemduplicidadeparafornecedores` tinyint(1) unsigned DEFAULT NULL,
  `cpfcnpjobrigatorioparaclientes` tinyint(1) unsigned DEFAULT NULL,
  `cpfcnpjobrigatorioparafornecedores` tinyint(1) unsigned DEFAULT NULL,
  `ieobrigatoriaparaclientes` tinyint(1) unsigned DEFAULT NULL,
  `ieobrigatoriaparafornecedores` tinyint(1) unsigned DEFAULT NULL,
  `rgobrigatoriaparaclientes` tinyint(1) unsigned DEFAULT NULL,
  `rgobrigatoriaparafornecedores` tinyint(1) unsigned DEFAULT NULL,
  `diasparaconsiderarclienteinativo` varchar(10) DEFAULT NULL,
  `nomedoclientepadrao` varchar(45) DEFAULT NULL,
  `formadecontatopadrao` varchar(45) DEFAULT NULL,
  `tipodecontatopadrao` varchar(45) DEFAULT NULL,
  `statusdecontatopadrao` varchar(45) DEFAULT NULL,
  `sitedepesquisaspc` varchar(100) DEFAULT NULL,
  `unidadedemedidapadrao` varchar(2) DEFAULT NULL,
  `situacaotributariapadrao` varchar(3) DEFAULT NULL,
  `origempadraodamercadoria` varchar(1) DEFAULT NULL,
  `ipipadrao` varchar(10) DEFAULT NULL,
  `creditoicmspadrao` varchar(10) DEFAULT NULL,
  `aliquotaicmspadrao` varchar(10) DEFAULT NULL,
  `comissaopadrao` varchar(10) DEFAULT NULL,
  `lucropadrao` varchar(10) DEFAULT NULL,
  `tipodemarkuppadrao` varchar(50) DEFAULT NULL,
  `usarsugestao` varchar(3) DEFAULT NULL,
  `usartabelas` varchar(3) DEFAULT NULL,
  `gerarcodigoprodutoautomaticamente` varchar(3) DEFAULT NULL,
  `diretoriodeimagensdosprodutos` varchar(200) DEFAULT NULL,
  `tabulacaopesquisaprodutos` varchar(25) DEFAULT NULL,
  `categoriadeimpostos` varchar(45) DEFAULT NULL,
  `aliquotasimples` varchar(10) DEFAULT NULL,
  `aliquotadeaproveitamentodecredito` varchar(10) DEFAULT NULL,
  `custofixo` varchar(10) DEFAULT NULL,
  `tipodocomprovanterecebimento` varchar(100) DEFAULT NULL,
  `destinodocomprovante` varchar(100) DEFAULT NULL,
  `caminhoimpressoramatricialcomprovante` varchar(100) DEFAULT NULL,
  `observacaopadraodocomprovante` varchar(100) DEFAULT NULL,
  `tipodocarne` varchar(45) DEFAULT NULL,
  `valordamulta` varchar(10) DEFAULT NULL,
  `juromensal` varchar(10) DEFAULT NULL,
  `diastolerancia` varchar(10) DEFAULT NULL,
  `textopadraoboletopreimpresso` varchar(100) DEFAULT NULL,
  `codigodaempresanospc` varchar(10) DEFAULT NULL,
  `textocartaspc` varchar(100) DEFAULT NULL,
  `textodeclaracaonocarne` varchar(100) DEFAULT NULL,
  `calculalimitesaoiniciarosistema` tinyint(1) unsigned DEFAULT NULL,
  `metadiariadaempresa` varchar(10) DEFAULT NULL,
  `metamensaldaempresa` varchar(10) DEFAULT NULL,
  `nomedoresponsavel` varchar(45) DEFAULT NULL,
  `cpfdoresponsavel` varchar(14) DEFAULT NULL,
  `backupaosairdosistema` varchar(3) DEFAULT NULL,
  `diretoriopadraobackup` varchar(100) DEFAULT NULL,
  `usuariorazaosocial` varchar(100) DEFAULT NULL,
  `usuarionomefantasia` varchar(100) DEFAULT NULL,
  `usuariocnpj` varchar(18) DEFAULT NULL,
  `usuarioie` varchar(20) DEFAULT NULL,
  `usuarioendereco` varchar(60) DEFAULT NULL,
  `usuarionumeroendereco` varchar(10) DEFAULT NULL,
  `usuariocomplementoendereco` varchar(10) DEFAULT NULL,
  `usuariocidade` varchar(45) DEFAULT NULL,
  `usuariouf` varchar(2) DEFAULT NULL,
  `usuariocep` varchar(10) DEFAULT NULL,
  `usuariobairro` varchar(45) DEFAULT NULL,
  `usuarioemail` varchar(60) DEFAULT NULL,
  `usuariotelefone` varchar(13) DEFAULT NULL,
  `usuarioim` varchar(20) DEFAULT NULL,
  `usuariocnae` varchar(20) DEFAULT NULL,
  `usuarioobservacoes` varchar(60) DEFAULT NULL,
  `usuariosite` varchar(60) DEFAULT NULL,
  `usuarioibge` varchar(10) DEFAULT NULL,
  `usuariocodigopais` varchar(4) DEFAULT NULL,
  `usuarionomepais` varchar(20) DEFAULT NULL,
  `nfeversaoxml` varchar(5) DEFAULT NULL,
  `usuariocodigouf` varchar(2) DEFAULT NULL,
  `nfemodelodocfiscal` varchar(2) DEFAULT NULL,
  `nfeseriedocfiscal` varchar(3) DEFAULT NULL,
  `nfeformatodanfe` varchar(1) DEFAULT NULL,
  `nfeformaemissao` varchar(1) DEFAULT NULL,
  `nfeambiente` varchar(1) DEFAULT NULL,
  `nfeversaoemissor` varchar(10) DEFAULT NULL,
  `nfediretorioexportacaotxt` varchar(100) DEFAULT NULL,
  `unimakediretoriouninfecomcnpj` varchar(100) DEFAULT NULL,
  `unimakediretoriounidanfe` varchar(100) DEFAULT NULL,
  `nfesitedepesquisaautenticidade` varchar(100) DEFAULT NULL,
  `impressorafiscalmarcamodelo` varchar(50) DEFAULT NULL,
  `impressorafiscalnumeroserie` varchar(20) DEFAULT NULL,
  `impressorafiscalnumeroequipamento` varchar(20) DEFAULT NULL,
  `pagamentocontacreditopadrao` varchar(10) DEFAULT NULL,
  `pagamentohistoricopadrao` varchar(10) DEFAULT NULL,
  `pagamentocontajurospagos` varchar(10) DEFAULT NULL,
  `pagamentohistoricojurospagos` varchar(10) DEFAULT NULL,
  `pagamentocontamultaspagas` varchar(10) DEFAULT NULL,
  `pagamentohistoricomultaspagas` varchar(10) DEFAULT NULL,
  `pagamentocontadescontosobtidos` varchar(10) DEFAULT NULL,
  `pagamentohistoricodescontosobtidos` varchar(10) DEFAULT NULL,
  `pagamentocontacartorio` varchar(10) DEFAULT NULL,
  `pagamentohistoricocartorio` varchar(10) DEFAULT NULL,
  `pagamentocontaoutrasdespesas` varchar(10) DEFAULT NULL,
  `pagamentohistoricooutrasdespesas` varchar(10) DEFAULT NULL,
  `recebimentocontadebitopadrao` varchar(10) DEFAULT NULL,
  `recebimentohistoricopadrao` varchar(10) DEFAULT NULL,
  `recebimentocontajuros` varchar(10) DEFAULT NULL,
  `recebimentohistoricojuros` varchar(10) DEFAULT NULL,
  `recebimentocontamultas` varchar(10) DEFAULT NULL,
  `recebimentohistoricomultas` varchar(10) DEFAULT NULL,
  `recebimentocontadescontos` varchar(10) DEFAULT NULL,
  `recebimentohistoricodescontos` varchar(10) DEFAULT NULL,
  `recebimentocontacartorio` varchar(10) DEFAULT NULL,
  `recebimentohistoricocartorio` varchar(10) DEFAULT NULL,
  `recebimentocontaoutrasdespesas` varchar(10) DEFAULT NULL,
  `recebimentohistoricooutrasdespesas` varchar(10) DEFAULT NULL,
  `emitircomprovanteautomaticamenteaoreceber` tinyint(1) unsigned DEFAULT NULL,
  `atendimentoadditemautomaticoaposcodigo` tinyint(1) unsigned DEFAULT NULL,
  `atendimentoqntcomfoco` tinyint(1) unsigned DEFAULT NULL,
  `localcobrancapadrao` varchar(10) DEFAULT NULL,
  `centrodecustopadrao` varchar(10) DEFAULT NULL,
  `tipooperacaopadrao` varchar(10) DEFAULT NULL,
  `tipodocumentopadrao` varchar(10) DEFAULT NULL,
  `vendedorobrigatorio` tinyint(1) unsigned DEFAULT NULL,
  `vendedorpadrao` varchar(10) DEFAULT NULL,
  `contacreditopadraoatendimento` varchar(10) DEFAULT NULL,
  `contadebitopadraoatendimento` varchar(10) DEFAULT NULL,
  `pesquisacolaboradorautomaticamenteatendimentodetalhado` tinyint(1) unsigned DEFAULT NULL,
  `focodiretamentenocodigoaoclicaremnovoatendimentorapido` tinyint(1) unsigned DEFAULT NULL,
  `tipoatendimentonota` varchar(10) DEFAULT NULL,
  `tipoatendimentopedido` varchar(10) DEFAULT NULL,
  `tipoatendimentocondicional` varchar(10) DEFAULT NULL,
  `tipoatendimentoorcamento` varchar(10) DEFAULT NULL,
  `tipoatendimentoproducao` varchar(10) DEFAULT NULL,
  `tipoatendimentoordemdeservico` varchar(10) DEFAULT NULL,
  `tipoatendimentopromocao` varchar(10) DEFAULT NULL,
  `tipoatendimentoentregadematerial` varchar(10) DEFAULT NULL,
  `tipoatendimentocontrato` varchar(20) DEFAULT NULL,
  `tipoatendimentoproposta` varchar(10) DEFAULT NULL,
  `tipoatendimentolicitacao` varchar(10) DEFAULT NULL,
  `tipoatendimentoamostra` varchar(10) DEFAULT NULL,
  `tipoatendimentoemprestimo` varchar(10) DEFAULT NULL,
  `tipoatendimentoprevenda` varchar(10) DEFAULT NULL,
  `tipoatendimentoordem` varchar(10) DEFAULT NULL,
  `tipoatendimentoreserva` varchar(10) DEFAULT NULL,
  `tipoatendimentooutras` varchar(10) DEFAULT NULL,
  `tipoimpressaonota` varchar(50) DEFAULT NULL,
  `tipoimpressaopedido` varchar(50) DEFAULT NULL,
  `tipoimpressaocondicional` varchar(50) DEFAULT NULL,
  `tipoimpressaoorcamento` varchar(50) DEFAULT NULL,
  `tipoimpressaoproducao` varchar(50) DEFAULT NULL,
  `tipoimpressaoordemdeservico` varchar(50) DEFAULT NULL,
  `tipoimpressaopromocao` varchar(50) DEFAULT NULL,
  `tipoimpressaoentregadematerial` varchar(50) DEFAULT NULL,
  `tipoimpressaocontrato` varchar(50) DEFAULT NULL,
  `tipoimpressaoproposta` varchar(50) DEFAULT NULL,
  `tipoimpressaolicitacao` varchar(50) DEFAULT NULL,
  `tipoimpressaoamostra` varchar(50) DEFAULT NULL,
  `tipoimpressaoemprestimo` varchar(50) DEFAULT NULL,
  `tipoimpressaoprevenda` varchar(50) DEFAULT NULL,
  `tipoimpressaoordem` varchar(50) DEFAULT NULL,
  `tipoimpressaoreserva` varchar(50) DEFAULT NULL,
  `tipoimpressaooutras` varchar(50) DEFAULT NULL,
  `destinoimpressaonota` varchar(100) DEFAULT NULL,
  `destinoimpressaopedido` varchar(100) DEFAULT NULL,
  `destinoimpressaocondicional` varchar(100) DEFAULT NULL,
  `destinoimpressaoorcamento` varchar(100) DEFAULT NULL,
  `destinoimpressaoproducao` varchar(100) DEFAULT NULL,
  `destinoimpressaoordemdeservico` varchar(100) DEFAULT NULL,
  `destinoimpressaopromocao` varchar(100) DEFAULT NULL,
  `destinoimpressaoentregadematerial` varchar(100) DEFAULT NULL,
  `destinoimpressaocontrato` varchar(100) DEFAULT NULL,
  `destinoimpressaoproposta` varchar(100) DEFAULT NULL,
  `destinoimpressaolicitacao` varchar(100) DEFAULT NULL,
  `destinoimpressaoamostra` varchar(100) DEFAULT NULL,
  `destinoimpressaoemprestimo` varchar(100) DEFAULT NULL,
  `destinoimpressaoprevenda` varchar(100) DEFAULT NULL,
  `destinoimpressaoordem` varchar(100) DEFAULT NULL,
  `destinoimpressaoreserva` varchar(100) DEFAULT NULL,
  `destinoimpressaooutras` varchar(100) DEFAULT NULL,
  `codigopagamentoaprazoepson` varchar(10) DEFAULT NULL,
  `diretorioexportacaoxmlnfe` varchar(100) DEFAULT NULL,
  `naturezaoperacaopadrao` varchar(10) DEFAULT NULL,
  `preencherdataesaogerarnumeronota` varchar(3) DEFAULT NULL,
  `preencherhoraesaogerarnumeronota` varchar(3) DEFAULT NULL,
  `especiepadraonota` varchar(25) DEFAULT NULL,
  `marcapadraonota` varchar(25) DEFAULT NULL,
  `obspadraonota` varchar(600) DEFAULT NULL,
  `fretepadraonota` varchar(25) DEFAULT NULL,
  `calcularpesonanotafiscal` varchar(3) DEFAULT NULL,
  `calcularqntnanotafiscal` varchar(3) DEFAULT NULL,
  `transportadoraobrigatorianotafiscal` varchar(3) DEFAULT NULL,
  `Column 197` varchar(10) DEFAULT NULL,
  `transportadorapadrao` varchar(10) DEFAULT NULL,
  `historicovendavistaatendimento` varchar(10) DEFAULT NULL,
  `historicovendaprazoatendimento` varchar(10) DEFAULT NULL,
  `diretoriodeimagensdoscolaboradores` varchar(200) DEFAULT NULL,
  `kmveiculoobrigatoriaimprimiros` tinyint(1) unsigned DEFAULT NULL,
  `exibirdatadodianapesquisaatendimento` tinyint(1) unsigned DEFAULT NULL,
  `nomebackup` varchar(100) DEFAULT NULL,
  `tipodocomprovanteatendimento` varchar(45) DEFAULT NULL,
  `destinocomprovanteatendimento` varchar(45) DEFAULT NULL,
  `tipocarnevenda` varchar(45) DEFAULT NULL,
  `destinocarnevenda` varchar(45) DEFAULT NULL,
  `textocarnepagamento` varchar(1000) DEFAULT NULL,
  `optionpesquisaatendimentodetalhado` varchar(10) DEFAULT NULL,
  `textoordemdeservico` varchar(1000) DEFAULT NULL,
  `notificarossemservico` tinyint(1) unsigned DEFAULT NULL,
  `tipodadescricaoautomatica` varchar(50) DEFAULT NULL,
  `statuspreferencialnoatendimento` varchar(30) DEFAULT NULL,
  `exibirplacaeveiculonalistadeatendimento` tinyint(1) unsigned DEFAULT NULL,
  `diretoriobancocobrancasicredi` varchar(255) DEFAULT NULL,
  `valorpadraomensalidade` varchar(10) DEFAULT NULL,
  `diapadraomensalidade` varchar(2) DEFAULT NULL,
  `diretorioretornosicredi` varchar(255) DEFAULT NULL,
  `abapreferencialnocolaborador` varchar(3) DEFAULT NULL,
  `telefonenalistaatendimentos` tinyint(1) unsigned DEFAULT NULL,
  `notificaprodutoexistentenoatendimento` tinyint(1) unsigned DEFAULT NULL,
  `vendedorcomfoconavendarapida` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab1visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab2visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab3visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab4visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab5visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab6visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab7visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab8visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab9visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab10visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab11visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab12visivel` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab13visivel` tinyint(1) unsigned DEFAULT NULL,
  `exibirreferencialistaprodutos` tinyint(1) unsigned DEFAULT NULL,
  `tipoordemservico` varchar(50) DEFAULT NULL,
  `sistemabloqueado` varchar(3) DEFAULT NULL,
  `pesquisaraoabrirtela` varchar(3) DEFAULT NULL,
  `qntpadraonota` varchar(3) DEFAULT NULL,
  `exibirnumeropedidoatendimento` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab14visivel` tinyint(1) unsigned DEFAULT NULL,
  `entradacomoparcelaquitadanodia` tinyint(1) unsigned DEFAULT NULL,
  `colaboradortab15visivel` tinyint(1) unsigned DEFAULT NULL,
  `descricaotab15` varchar(10) DEFAULT NULL,
  `fococomissaoaoadicionaritens` tinyint(1) unsigned DEFAULT NULL,
  `contacontabilvenda` varchar(10) DEFAULT NULL,
  `contacontabilcompra` varchar(10) DEFAULT NULL,
  `historicocompra` varchar(10) DEFAULT NULL,
  `enviarxmltransportadora` tinyint(1) unsigned DEFAULT NULL,
  `exibirnumeroatendimento` tinyint(1) unsigned DEFAULT NULL,
  `tabpadraoboletosbanco` varchar(2) DEFAULT NULL,
  `portaimpressaoboletopreimpresso` varchar(100) DEFAULT NULL,
  `boletostextopadraolinha1` varchar(100) DEFAULT NULL,
  `boletojuropordiadeatraso` varchar(4) DEFAULT NULL,
  `agruparitensaorecortaoucopiaratendimento` tinyint(1) unsigned DEFAULT NULL,
  `statuspreferencialaocopiarrecortar` varchar(25) DEFAULT NULL,
  `documentopreferencialaocopiarrecortar` varchar(25) DEFAULT NULL,
  `exibirdetalhesaoadicionaritensatendimento` tinyint(1) unsigned DEFAULT NULL,
  `incluirdescontoobsnotaaogerarnumero` tinyint(1) unsigned DEFAULT NULL,
  `descontosadicionaisaoadditens` tinyint(1) unsigned DEFAULT NULL,
  `placapadraonota` varchar(7) DEFAULT NULL,
  `ufplacapadraonota` varchar(2) DEFAULT NULL,
  `tipodocumentopadraoavista` varchar(10) DEFAULT NULL,
  `textopadraodocumentonaofiscal` varchar(300) DEFAULT NULL,
  `diretoriobancodadoscef` varchar(300) DEFAULT NULL,
  `tipodoscampospersonalizados` varchar(20) DEFAULT NULL,
  `estoquezerado` varchar(20) DEFAULT NULL,
  `imprimirdescontonocupom` varchar(3) DEFAULT NULL,
  `iconesdocumentosdestacadosnoatendimento` varchar(300) DEFAULT NULL,
  `exibirmarcalistaprodutos` tinyint(1) unsigned DEFAULT NULL,
  `etiquetapadrao` varchar(3) DEFAULT NULL,
  `ultimobackup` date DEFAULT NULL,
  `utilizarrecursoautocompletarprodutos` tinyint(1) unsigned DEFAULT NULL,
  `salvaraoimprimircondicional` tinyint(1) unsigned DEFAULT NULL,
  `salvaraoimprimirpedido` tinyint(1) unsigned DEFAULT NULL,
  `tipoimpressaorecibodevolucao` varchar(50) DEFAULT NULL,
  `destinorecibodevolucao` varchar(300) DEFAULT NULL,
  `exibirdescontoitensnoatendimento` varchar(3) DEFAULT NULL,
  `contacontabiladiantamentocliente` varchar(20) DEFAULT NULL,
  `historicoadiantamentocliente` varchar(20) DEFAULT NULL,
  `contacontabilpgtoadiantamentocliente` varchar(20) DEFAULT NULL,
  `historicopgtoadiantamentocliente` varchar(20) DEFAULT NULL,
  `ocultarcodigovendedornavenda` tinyint(1) unsigned DEFAULT NULL,
  `destinoimpressaoetiquetaidentificacaoclienteos` varchar(200) DEFAULT NULL,
  `tipoimpressaoetiquetaidentificacaoclienteos` varchar(200) DEFAULT NULL,
  `statuspreferencialrelatoriosgerenciais` varchar(20) DEFAULT NULL,
  `modificartipodocumentoaoclicarsobreoicone` tinyint(1) unsigned DEFAULT NULL,
  `exibirstatustecnicoosnalistadeatendimentos` tinyint(1) unsigned DEFAULT NULL,
  `naturezaoperacaopadraoservico` varchar(20) DEFAULT NULL,
  `numerodoequipamentoobrigatorionaos` tinyint(1) unsigned DEFAULT NULL,
  `portacomunicacaopadraobalanca` varchar(50) DEFAULT NULL,
  `diretoriocertificadoescolas` varchar(200) DEFAULT NULL,
  `metodoenviodeemail` varchar(50) DEFAULT NULL,
  `emailportadeenvio` varchar(200) DEFAULT NULL,
  `emailservidorsmtp` varchar(200) DEFAULT NULL,
  `emailusadoparaenvio` varchar(200) DEFAULT NULL,
  `emailusuarioparaenvio` varchar(200) DEFAULT NULL,
  `emailsenhaparaenvio` varchar(50) DEFAULT NULL,
  `emailservidorrequerconexaosegura` tinyint(1) unsigned DEFAULT NULL,
  `diretoriodeimagensdosimoveis` varchar(255) DEFAULT NULL,
  `exibirestoquedisponivelnalistadeprodutos` tinyint(1) unsigned DEFAULT NULL,
  `gerarnovoatendimentoaoabrirtelacondicional` tinyint(1) unsigned DEFAULT NULL,
  `gerarnovoatendimentoaoabrirtelavenda` tinyint(1) unsigned DEFAULT NULL,
  `exibirtroconoatendimentorapido` tinyint(1) unsigned DEFAULT NULL,
  `solicitarconfirmacaodefaturamentoaoclicaremavistanofaturamento` tinyint(1) unsigned DEFAULT NULL,
  `sstabdetalhesdoitemaoadicionar` varchar(2) DEFAULT NULL,
  `textolivrepadraoaoadicionaritem` varchar(30) DEFAULT NULL,
  `textopadraocondicional` varchar(2000) DEFAULT NULL,
  `exibirpraticadonositensatendimentos` tinyint(1) unsigned DEFAULT NULL,
  `clienteconsumidorpadrao` varchar(20) DEFAULT NULL,
  `tipodocumentoimagem` varchar(50) DEFAULT NULL,
  `destinodocumentoimagem` varchar(20) DEFAULT NULL,
  `exibirinclusaocomposicaoadditensatendimento` tinyint(1) unsigned DEFAULT NULL,
  `exibirgrupodoprodutonalista` tinyint(1) unsigned DEFAULT NULL,
  `contacontabilobrigatoriaaolancarcontaspagar` tinyint(1) unsigned DEFAULT NULL,
  `imprimirtipododocumentocorrespondenteaoiconeclicado` tinyint(1) unsigned DEFAULT NULL,
  `datapreferencialnoatendimento` varchar(50) DEFAULT NULL,
  `funcionarioresponsavelobrigatorionaos` tinyint(1) unsigned DEFAULT NULL,
  `atualizarestoqueconformemovimentacoesaoiniciar` tinyint(1) unsigned DEFAULT NULL,
  `captiondotextolivredositens` varchar(50) DEFAULT NULL,
  `padraotextolivrevendas` varchar(50) DEFAULT NULL,
  `colaboradorpadraoagenda` varchar(20) DEFAULT NULL,
  `exibirvendedornalistadeatendimentos` tinyint(1) unsigned DEFAULT NULL,
  `nomedafontedosdatagrid` varchar(50) DEFAULT NULL,
  `tamanhodafontedosdatagrid` varchar(50) DEFAULT NULL,
  `atualizafornecedorprodutosaofaturarcompra` tinyint(1) unsigned DEFAULT NULL,
  `datanascimentoobrigatoriaclientes` tinyint(1) unsigned DEFAULT NULL,
  `mudartipododocumentoaofaturarpara` varchar(50) DEFAULT NULL,
  `divisorpadraodocumentos` varchar(3) DEFAULT NULL,
  `boletosicrediseunumeroigualaonumerodocumento` tinyint(1) unsigned DEFAULT NULL,
  `logoetiquetas` blob,
  `teleentregas` tinyint(1) unsigned DEFAULT NULL,
  `quantidadecomduascasasdecimaisnavenda` tinyint(1) unsigned DEFAULT NULL,
  `pesquisapadracontratodejogos` varchar(50) DEFAULT NULL,
  `colaboradoresdestacalocaldetrabalho` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacaenderecodetrabalho` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacatelefone` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacaprofissao` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacanomepai` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacanomemae` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacadatanascimento` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacaemail` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacacelular` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacaendereco` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacacpfcnpj` tinyint(1) unsigned DEFAULT NULL,
  `colaboradoresdestacarg` tinyint(1) unsigned DEFAULT NULL,
  `valorparacomposicao` varchar(50) DEFAULT NULL,
  `usuarioindicadordeatividade` varchar(50) DEFAULT NULL,
  `usuariosuframa` varchar(50) DEFAULT NULL,
  `contadornome` varchar(100) DEFAULT NULL,
  `contadorcpf` varchar(20) DEFAULT NULL,
  `contadorcrc` varchar(20) DEFAULT NULL,
  `contadorcnpj` varchar(20) DEFAULT NULL,
  `contadorcep` varchar(10) DEFAULT NULL,
  `contadorendereco` varchar(60) DEFAULT NULL,
  `contadornumero` varchar(10) DEFAULT NULL,
  `contadorcomplemento` varchar(60) DEFAULT NULL,
  `contadorbairro` varchar(60) DEFAULT NULL,
  `contadorfone` varchar(20) DEFAULT NULL,
  `contadorfax` varchar(20) DEFAULT NULL,
  `contadoremail` varchar(60) DEFAULT NULL,
  `contadoribge` varchar(7) DEFAULT NULL,
  `calcularestoqueaoselecionaitemnalista` tinyint(1) unsigned DEFAULT NULL,
  `exibirnofaturamentocondicaopagamento` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentocomissao` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentosubtotal` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentoauxiliar` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentodespesas` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentodescontop` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentodescontom` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentototal` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentototalnota` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentoaprazo` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentoavista` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentoisento` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentogerenciadordecreditos` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentoentradap` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentoentradam` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentoprazom` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentoparcelasprazo` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentointervalo` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentodia` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentodocumentovista` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentodocumentoprazo` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentocontalocalcobranca` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentodebito` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentocredito` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentocentrodecustos` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentotipooperacao` tinyint(1) unsigned DEFAULT '1',
  `exibirnofaturamentolistamovimentocontabil` tinyint(1) unsigned DEFAULT '1',
  `finalizaraoimprimircarne` tinyint(1) unsigned DEFAULT '0',
  `preenchermarcanositensaoselecionarprodutos` tinyint(1) unsigned DEFAULT '0',
  `preencherfornecedornositensaoselecionarprodutos` tinyint(1) unsigned DEFAULT '0',
  `modeloetiquetaidentificacaoequipamento` varchar(100) DEFAULT NULL,
  `calculaipinavenda` tinyint(1) DEFAULT '0',
  `bancodobrasilnomefontededadosodbc` varchar(100) DEFAULT NULL,
  `exibircondicaopagamentonalistaatendimentos` tinyint(1) unsigned DEFAULT '0',
  `formaquitacaopadrao` varchar(50) DEFAULT NULL,
  `agruparaolancarnovoitemnoatendimento` tinyint(1) unsigned DEFAULT '0',
  `quantidadecomfoconadevolucaocondicional` tinyint(1) unsigned DEFAULT '0',
  `focoemconversoraoadicionaritemvenda` tinyint(1) unsigned DEFAULT '0',
  `pesquisartodososcolaboradoresaoabriratela` tinyint(1) unsigned DEFAULT '0',
  `armazenaultimadescricaopesquisada` tinyint(1) unsigned DEFAULT '0',
  `exibirfornecedornalistadeprodutos` tinyint(1) unsigned DEFAULT '0',
  `selecionapraticadonavenda` tinyint(1) unsigned DEFAULT '0',
  `exibirpraticado2nalistadeprodutos` tinyint(1) unsigned DEFAULT '0',
  `descontopadraoaogeraretiquetas` varchar(50) DEFAULT NULL,
  `textopedido` varchar(5000) DEFAULT NULL,
  `textoorcamento` varchar(5000) DEFAULT NULL,
  `indicadornaturezapessoajuridica` varchar(100) DEFAULT NULL,
  `indicadortipoatividadespedcontribuicoes` varchar(100) DEFAULT NULL,
  `exibirpraticadonoatendimentorapido` tinyint(1) unsigned DEFAULT '0',
  `ordemitensatendimentos` varchar(50) DEFAULT NULL,
  `itemcupombematechdescricaolonga` tinyint(1) unsigned DEFAULT NULL,
  `exibirnomefantasiacolaborador` tinyint(1) unsigned DEFAULT '1',
  `mudarautomaticamenteovalordasparcelasposteriores` tinyint(1) unsigned DEFAULT '0',
  `padraodepesquisacolaborador` varchar(50) DEFAULT NULL,
  `pispadrao` varchar(50) DEFAULT NULL,
  `cofinspadrao` varchar(50) DEFAULT NULL,
  `cstpis` varchar(50) DEFAULT NULL,
  `cstcofins` varchar(50) DEFAULT NULL,
  `selecionada` varchar(1) DEFAULT NULL,
  `contacontabildespesasfixas` varchar(50) DEFAULT NULL,
  `solicitarconfirmacaofinalizacao` tinyint(1) DEFAULT '1',
  `transformarisentoiepessoafisicaaogerarnota` tinyint(1) DEFAULT '1',
  `contacontabilcaixasbancos` varchar(50) DEFAULT '1',
  `contacontabilimobilizado` varchar(50) DEFAULT '1',
  `prefixonossonumerosemregistrobb` varchar(10) DEFAULT '1',
  `prefixonossonumerocomregistrobb` varchar(10) DEFAULT '1',
  `antecipacaocontadebito` varchar(10) DEFAULT '1',
  `antecipacaocontacredito` varchar(10) DEFAULT '1',
  `antecipacaooperacao` varchar(10) DEFAULT '1',
  `antecipacaocontadesagio` varchar(10) DEFAULT '1',
  `antecipacaolocalcobranca` varchar(10) DEFAULT '1',
  `relatoriorapidodecontasdetalhado` tinyint(1) DEFAULT NULL,
  `exibirestoquenalistadeprodutos` tinyint(1) DEFAULT '1',
  `utilizaecf` tinyint(1) DEFAULT NULL,
  `modeloecf` varchar(50) DEFAULT NULL,
  `tipodoestoqueaexibirnoadicionaritematendimento` varchar(50) DEFAULT 'Nenhum',
  `armazenarultimacontadebitocreditoaoquitar` tinyint(1) DEFAULT '1',
  `copiarbancoremoto` tinyint(1) DEFAULT '0',
  `enviarestoqueremoto` tinyint(1) DEFAULT '0',
  `nomedoestoqueremoto` varchar(50) DEFAULT NULL,
  `diasparabloquearcondicional` varchar(50) DEFAULT NULL,
  `diasparabloquearclienteatraso` varchar(50) DEFAULT NULL,
  `novovencimentoquitacaoparcial` varchar(50) DEFAULT 'Data do dia',
  `atalhoparaitensdocolaboradornalista` tinyint(1) DEFAULT '0',
  `possibilitardescontonoaoimprimircondicional` tinyint(1) DEFAULT '1',
  `enderecoobrigatorioclientes` tinyint(1) DEFAULT '0',
  `telefoneobrigatorioclientes` tinyint(1) DEFAULT '0',
  `filiacaoobrigatoriaclientes` tinyint(1) DEFAULT '0',
  `localdetrabalhoobrigatorioclientes` tinyint(1) DEFAULT '0',
  `funcaoobrigatoriaclientes` tinyint(1) DEFAULT '0',
  `estadocivilobrigatorioclientes` tinyint(1) DEFAULT '0',
  `moradiaobrigatoriaclientes` tinyint(1) DEFAULT '0',
  `rendaobrigatoriaclientes` tinyint(1) DEFAULT '0',
  `emailobrigatorioclientes` tinyint(1) DEFAULT '0',
  `quantidadereferenciascliente` varchar(50) DEFAULT NULL,
  `validarcamposclientesaoimprimircondicional` tinyint(1) DEFAULT '0',
  `contacontabildeestoque` varchar(50) DEFAULT NULL,
  `lei12741` tinyint(1) DEFAULT '1',
  `caminhoimpressoraetiquetas` varchar(200) DEFAULT '\\\\Escritorio3\\ZEBRA',
  `exibircornalistadeprodutos` tinyint(1) DEFAULT '0',
  `exibirtamanhonalistadeprodutos` tinyint(1) DEFAULT '0',
  `exibirdisponivelnoestoqueporempresa` tinyint(1) DEFAULT '0',
  `tipopadraoatendimento` varchar(50) DEFAULT NULL,
  `calcularpesoatendimento` int(1) DEFAULT '0',
  `tabelasempreigualatabelacomdesconto` int(1) DEFAULT '0',
  `bloquearatendimentosemitens` int(1) DEFAULT '0',
  `ocorrenciaobrigatorianoscontatos` int(1) DEFAULT '0',
  `pesquisarporreferenciaecodigoatendimentorapido` int(1) DEFAULT '0',
  `exibirreferenciaitensatendimentorapido` int(1) DEFAULT '0',
  `espacoparacarimbarcarneimpressorafiscal` int(1) DEFAULT '0',
  `tiposdedocumentosnoatendimento` varchar(500) DEFAULT NULL,
  `operacoespadroesnoatendimento` varchar(500) DEFAULT NULL,
  `contrapartidaobrigatorialancamentocontabil` tinyint(1) DEFAULT '0',
  `criteriosdepesquisanoatendimento` varchar(500) DEFAULT NULL,
  `condicionalparaconsumidor` tinyint(1) DEFAULT '1',
  `percentualcomissaoporitemaolancaratendimento` tinyint(1) DEFAULT '0',
  `manterpesquisaarmazenadaaoselecionarproduto` tinyint(1) DEFAULT '0',
  `centavosnaprimeira` tinyint(1) DEFAULT '1',
  `contrapartidapadraorecebimento` varchar(50) DEFAULT NULL,
  `contrapartidapadraopagamento` varchar(50) DEFAULT NULL,
  `exibircodigocolaborador` tinyint(1) DEFAULT '0',
  `exibircnpjnalistaatendimentos` tinyint(1) DEFAULT '0',
  `cordatelaidentificaempresa` varchar(50) DEFAULT NULL,
  `exibirlocalizacaolistaprodutos` tinyint(1) DEFAULT NULL,
  `validarcontasaofaturar` tinyint(1) DEFAULT '1',
  `padraoindicegeracaonfeporgrupos` varchar(50) DEFAULT '100',
  `notafiscaldeservicoeprodutosjuntas` tinyint(1) DEFAULT NULL,
  `exibirultimacompracolaborador` tinyint(1) DEFAULT '0',
  `incluirvendedornasobsaogerarnota` tinyint(1) DEFAULT '0',
  `exibirnomeconsumidornalistaatendimentos` tinyint(1) DEFAULT '0',
  `marcaobrigatoriaproduto` tinyint(1) DEFAULT '0',
  `calcularnotaaomudardetabatendimento` tinyint(1) DEFAULT '1',
  `exibirpraticado3listadeprodutos` tinyint(1) DEFAULT '0',
  `exibirfornecedoritensatendimentorapido` tinyint(1) DEFAULT '0',
  `criarnovavendaaofaturar` tinyint(1) DEFAULT '0',
  `selecionaroperadordecaixa` tinyint(1) DEFAULT '0',
  `exibirquantidadeembalagemlistaprodutos` tinyint(1) DEFAULT '0',
  `nomepraticado1` varchar(50) DEFAULT NULL,
  `nomepraticado2` varchar(50) DEFAULT NULL,
  `nomepraticado3` varchar(50) DEFAULT NULL,
  `exibirmensagemdealertaclientenascontas` tinyint(1) DEFAULT '0',
  `adicionarnovocontatoaoefetuaratendimento` tinyint(1) DEFAULT '1',
  `abrirpesquisaaonaoencontrarproduto` tinyint(1) DEFAULT '0',
  `calculareexibirestoquedisponivel` tinyint(1) DEFAULT '0',
  `diretordaempresa` varchar(50) DEFAULT NULL,
  `fichacadastralpadrao` varchar(50) DEFAULT '37',
  `salvarautomaticamenteaoimprimirorcamento` tinyint(1) DEFAULT '0',
  `salvarautomaticamenteaoimprimirprevenda` tinyint(1) DEFAULT '0',
  `solicitarvendedoraoclicariconesatendimentorapido` tinyint(1) DEFAULT '0',
  `textoentregadematerial` varchar(5000) DEFAULT NULL,
  `centrodecustoobrigatorio` tinyint(1) DEFAULT '0',
  `importaxmlipi` tinyint(1) DEFAULT '1',
  `importaxmlncm` tinyint(1) DEFAULT '1',
  `importaxmlcst` tinyint(1) DEFAULT '1',
  `importaxmlorigem` tinyint(1) DEFAULT '1',
  `importaxmlvalorunitario` tinyint(1) DEFAULT '1',
  `importaxmlpis` tinyint(1) DEFAULT '1',
  `importaxmlcofins` tinyint(1) DEFAULT '1',
  `importaxmlaliquotaicms` tinyint(1) DEFAULT '1',
  `importaxmlpst` tinyint(1) DEFAULT '1',
  `importaxmlfrete` tinyint(1) DEFAULT '1',
  `importaxmlrefigualfornecedor` tinyint(1) DEFAULT '1',
  `importaxmloutrasdespesas` tinyint(1) DEFAULT '1',
  `importaxmllucro` tinyint(1) DEFAULT '0',
  `importaxmlmarkup` tinyint(1) DEFAULT '0',
  `calcularjurosaoiniciar` tinyint(1) DEFAULT '0',
  `comarcapadrao` varchar(50) DEFAULT NULL,
  `editardadosveiculonoatendimento` tinyint(1) DEFAULT '0',
  `grupoobrigatorioproduto` tinyint(1) DEFAULT '0',
  `nomefantasiadocumentorazaomatricial` tinyint(1) DEFAULT '1',
  `imprimirrecibodaentradaaofinalizarvendaavista` tinyint(1) DEFAULT '0',
  `exibirlocalcobrancanascontas` tinyint(1) DEFAULT '0',
  `cnpjcpfcolaboradornalista` tinyint(1) DEFAULT '0',
  `focoemvalorpagoatendimentorapido` tinyint(1) DEFAULT '0',
  `solicitarimpressaorecibodaentradaaofinalizarvendaavista` tinyint(1) DEFAULT '0',
  `boletobbmensagem1` varchar(100) DEFAULT NULL,
  `boletobbmensagem2` varchar(100) DEFAULT NULL,
  `incluirobsdeatendimentocopiadorecortado` tinyint(1) DEFAULT '1',
  `calcularlimitenadelistacolaboradores` tinyint(1) DEFAULT '0',
  `contadebitoobrigatoriaquandovenda` tinyint(1) DEFAULT '0',
  `contacreditoobrigatoriaquandocompra` tinyint(1) DEFAULT '0',
  `textolivrecomfocoaoadicionaritens` tinyint(1) DEFAULT '0',
  `additensconversor` tinyint(1) DEFAULT '0',
  `additenscomissao` tinyint(1) DEFAULT '0',
  `additensipi` tinyint(1) DEFAULT '0',
  `additensfornecedortextolivre` tinyint(1) DEFAULT '0',
  `additensmarcatextolivre` tinyint(1) DEFAULT '0',
  `additenstextolivre` tinyint(1) DEFAULT '0',
  `additensvendedordoitem` tinyint(1) DEFAULT '0',
  `exibirvalorpagoetrocoatendimentorapido` tinyint(1) DEFAULT '1',
  `colaboradortab16visivel` tinyint(1) DEFAULT '0',
  `colaboradortab17visivel` tinyint(1) DEFAULT '0',
  `colaboradortab18visivel` tinyint(1) DEFAULT '0',
  `colaboradortab19visivel` tinyint(1) DEFAULT '1',
  `descricaotab19` varchar(50) DEFAULT NULL,
  `campocomfocoadditens` varchar(50) DEFAULT 'Valor UnitÃ¡rio',
  `alterarvencimentoparcelasposterioresquitacaoparcial` tinyint(1) DEFAULT '0',
  `exibirsubgrupolistaprodutos` tinyint(1) DEFAULT '0',
  `exibiratendimentossomentedaempresalogada` tinyint(1) DEFAULT '0',
  `exibircontassomentedaempresalogada` tinyint(1) DEFAULT '0',
  `exibirrelatoriosgerenciaissomentedaempresalogada` tinyint(1) DEFAULT '0',
  `exibirestoquedaempresalogada` tinyint(1) DEFAULT '0',
  `calcularvalordostributospelaaliquotadosimples` tinyint(1) DEFAULT '0',
  `tipoquantidadeautomaticananota` varchar(50) DEFAULT 'Produtos',
  `colaboradortab20visivel` tinyint(1) DEFAULT '1',
  `sicrediagencia` varchar(50) DEFAULT NULL,
  `sicredicodigocedente` varchar(50) DEFAULT NULL,
  `sicredipostodacooperativa` varchar(50) DEFAULT NULL,
  `sicrediunidadeatendimento` varchar(50) DEFAULT NULL,
  `nomefotocliente` varchar(50) DEFAULT 'CÃ³digo',
  `sicredidiretorioremessa` varchar(200) DEFAULT NULL,
  `geracaodanfe` varchar(20) DEFAULT 'Unidanfe',
  `diasantecedenciaalertacolaborador` varchar(3) DEFAULT '3',
  `qualificacaoatendimentoobrigatoriaaofaturar` tinyint(1) DEFAULT '0',
  `datalancamentoatendimentoautomatica` tinyint(1) DEFAULT '1',
  `tiporesponsavelordemservico` varchar(50) DEFAULT 'FuncionÃ¡rio',
  `creditocolaboradoresnegativo` tinyint(1) DEFAULT '0',
  `qualificacaoatendimentoobrigatoriaaofaturarpedido` tinyint(1) DEFAULT '0',
  `cupomtabelaitemdescontonofinal` tinyint(1) DEFAULT '0',
  `mensagemcupom` varchar(80) DEFAULT NULL,
  `additenslargura` tinyint(1) DEFAULT '0',
  `additensaltura` tinyint(1) DEFAULT '0',
  `additenspecas` tinyint(1) DEFAULT '0',
  `exibiralturaitensatendimento` tinyint(1) DEFAULT '0',
  `exibirlarguraitensatendimento` tinyint(1) DEFAULT '0',
  `exibirpecasitensatendimento` tinyint(1) DEFAULT '0',
  `caixacodigocedente` varchar(50) DEFAULT '1',
  `quantidadeapospecasadditens` tinyint(1) DEFAULT '0',
  `diretorioimagensitensatendimentos` varchar(200) DEFAULT NULL,
  `centrodecustoobrigatorioaoadditens` tinyint(1) DEFAULT '0',
  `atributosautomaticamenteadditens` tinyint(1) DEFAULT '0',
  `centrodecustocontrapartida` tinyint(1) DEFAULT '0',
  `equipamentopadraodaos` varchar(50) DEFAULT NULL,
  `atualizarvmaofaturarcompra` tinyint(1) DEFAULT '0',
  `tmpspeddatainicial` varchar(50) DEFAULT NULL,
  `tmpspeddatafinal` varchar(50) DEFAULT NULL,
  `dataentregaobrigatoria` tinyint(1) DEFAULT '0',
  `setorobrigatorio` tinyint(1) DEFAULT '0',
  `incluircondicionaisnolimite` tinyint(1) DEFAULT '1',
  `lancahistoricodacontaaoquitar` tinyint(1) DEFAULT '0',
  `pesquisaritensatendimento` tinyint(1) DEFAULT '0',
  `fretepagoapartirde` decimal(10,2) DEFAULT '0.00',
  `contadebitosicredi` varchar(50) DEFAULT NULL,
  `imprimircarneaoimprimircupom` tinyint(1) DEFAULT '0',
  `imprimircodigoeanimpressorafiscal` tinyint(1) DEFAULT '0',
  `imprimircodigoeancondicional40c` tinyint(1) DEFAULT '0',
  `verificaautenticidade` tinyint(1) DEFAULT '1',
  `previsaentregaobrigatoriaitemordemservico` tinyint(1) DEFAULT '0',
  `exibirmediaatrasonalistacolaboradores` tinyint(1) DEFAULT '0',
  `codigobarrascarne40c` tinyint(1) DEFAULT '0',
  `boletobbdiretorioremessa` varchar(255) DEFAULT NULL,
  `boletobbpercentualjurosaodia` varchar(10) DEFAULT NULL,
  `boletobbmulta` varchar(10) DEFAULT NULL,
  `boletobblinha1txt` varchar(1000) DEFAULT NULL,
  `boletobbnumeroconvenio` varchar(50) DEFAULT NULL,
  `boletobbcarteira` varchar(50) DEFAULT NULL,
  `boletobbvariacao` varchar(50) DEFAULT NULL,
  `boletobbespecie` varchar(50) DEFAULT NULL,
  `boletobbmodalidade` varchar(100) DEFAULT NULL,
  `boletobbdiasprotesto` varchar(50) DEFAULT NULL,
  `devolucaocondicionaltambempeloean13` tinyint(1) DEFAULT '0',
  `previsaconclusaoobrigatoriaitemordemservico` tinyint(1) DEFAULT '0',
  `bloquearnomeconsumidornoatendimento` tinyint(1) DEFAULT '0',
  `exibirnofaturamentoantecipacoes` tinyint(1) DEFAULT '0',
  `vendaprazoconsumidornaocadastrado` tinyint(1) DEFAULT '0',
  `vendedorobrigatorioaoincluiroitem` tinyint(1) DEFAULT '0',
  `fretenaprimeiraparcela` tinyint(1) DEFAULT '0',
  `stnaprimeiraparcela` tinyint(1) DEFAULT '0',
  `permitirlancamentodeatendimentos` tinyint(1) DEFAULT '1',
  `exibirdatadodiapesquisacontas` tinyint(1) DEFAULT '0',
  `freteentregapadrao` varchar(50) DEFAULT '0',
  `pesquisalotesdescricao` tinyint(1) DEFAULT '0',
  `fornecedorobrigatorioprodutos` tinyint(1) DEFAULT '0',
  `grupodofornecedorobrigatorio` tinyint(1) DEFAULT '0',
  `exibirculturanalistadeatendimentos` tinyint(1) DEFAULT '0',
  `statuscontaantecipadaparadescontada` tinyint(1) DEFAULT '0',
  `lancamentocontasintetica` tinyint(1) DEFAULT '1',
  `exibirdataehoraconclusaonaagenda` tinyint(1) DEFAULT '0',
  `mudaradescricaocondicaopgtoaoclicarnoiconecorrespondente` tinyint(1) DEFAULT '1',
  `exibirdataentregaetiponaposvenda` tinyint(1) DEFAULT '0',
  `exibirteladeenviofiliaisaofaturartransferencias` tinyint(1) DEFAULT '0',
  `permitirnumerodeordememduplicidadenoatendimento` tinyint(1) DEFAULT '1',
  `exibirordemdecompraatendimentos` tinyint(1) DEFAULT '0',
  `quitacaoporcultura` tinyint(1) DEFAULT '0',
  `exibirrelatorioapliacacao` tinyint(1) DEFAULT '0',
  `referenciaemduplicidade` tinyint(1) DEFAULT '1',
  `exibirindiceinccatendimentos` tinyint(1) DEFAULT '0',
  `incluiritemaoeditarnoatendimento` tinyint(1) DEFAULT '1',
  `exibirsubtotalatendimentorapido` tinyint(1) DEFAULT '1',
  `colaboradorobrigatorioatendimentos` tinyint(1) DEFAULT '0',
  `captiondatalacamentoatendimento` varchar(50) DEFAULT 'LanÃ§amento',
  `exibirobservacoesdocumentoaoquitar` tinyint(1) DEFAULT '0',
  `numerosequencialcontrolecolaboradores` tinyint(1) DEFAULT '0',
  `contatoobrigatoriocliente` tinyint(1) DEFAULT '0',
  `vendedorobrigatoriocliente` tinyint(1) DEFAULT '0',
  `grupoobrigatorioclientes` tinyint(1) DEFAULT '0',
  `subgrupoobrigatorioclientes` tinyint(1) DEFAULT '0',
  `ramoatividadeobrigatorioclientes` tinyint(1) DEFAULT '0',
  `exibirpercentualparacustoaoadditens` tinyint(1) DEFAULT '0',
  `tabeladescontotambemsobreocustonavenda` tinyint(1) DEFAULT '0',
  `exibircodigoeanlistadeprodutos` tinyint(1) DEFAULT '0',
  `responsaveistecnicosobrigatoriosaofaturar` tinyint(1) DEFAULT '0',
  `motivodocancelamentoatendimentoobrigatorio` tinyint(1) DEFAULT '0',
  `leituradecodigoportaria` varchar(50) DEFAULT 'Controle Interno',
  `imprimircupomaposcarne` tinyint(1) DEFAULT '1',
  `solicitarconfirmacaonaquitacao` tinyint(1) DEFAULT '0',
  `exibirdataprevisaoitenscolaboradores` tinyint(1) DEFAULT '0',
  `valoraproximadotributospeloncm` tinyint(1) DEFAULT '1',
  `aliquotaparavaloraproximadotributos` varchar(50) DEFAULT '23,34',
  `statusparcelarenegociada` varchar(50) DEFAULT 'Quitada',
  `exibirsafraatendimentos` tinyint(1) DEFAULT '0',
  `inscricaomunicipal` varchar(50) DEFAULT NULL,
  `regimeespecialtributacao` varchar(50) DEFAULT NULL,
  `diretoriouninfse` varchar(200) DEFAULT NULL,
  `exibircomissoestabelas` tinyint(1) DEFAULT '0',
  `sicredipadraocobranca` varchar(50) DEFAULT 'A - Com Registro',
  `itemlistaservico` varchar(50) DEFAULT NULL,
  `exigibilidadeiss` varchar(50) DEFAULT '1 - ExigÃ­vel',
  `padraoir` varchar(50) DEFAULT NULL,
  `padraocssl` varchar(50) DEFAULT NULL,
  `padraoinss` varchar(50) DEFAULT NULL,
  `padraoiss` varchar(50) DEFAULT NULL,
  `opcaopesquisasafra` tinyint(1) DEFAULT '0',
  `atualizarmarkupaofaturarcompra` tinyint(1) DEFAULT '0',
  `exibirobservacoesdoclientenoatendimento` tinyint(1) DEFAULT '0',
  `dataprevisaoobrigatoriaordemcompra` tinyint(1) DEFAULT '0',
  `exibirquantidadeemordemdecompraadditens` tinyint(1) DEFAULT '0',
  `observacoesordemdecompra` varchar(5000) DEFAULT NULL,
  `armazenarlogitenatendimentos` tinyint(1) DEFAULT '0',
  `fornecedordoatendimentolistaatendimento` tinyint(1) DEFAULT '0',
  `numerodanotalistaatendimento` tinyint(1) DEFAULT '1',
  `datafaturamentolistaatendimento` tinyint(1) DEFAULT '1',
  `statuslistaatendimento` tinyint(1) DEFAULT '1',
  `operacaolistaatendimento` tinyint(1) DEFAULT '1',
  `documentolistaatendimento` tinyint(1) DEFAULT '1',
  `grupocolaboradorlista` tinyint(1) DEFAULT '1',
  `vendedorcolaboradorlista` tinyint(1) DEFAULT '1',
  `totalprodutoslistaatendimentos` tinyint(1) DEFAULT '0',
  `pesquisaratendimentosfornecedor` tinyint(1) DEFAULT '0',
  `notificaritemnaoadquiridopelocliente` tinyint(1) DEFAULT '0',
  `especificartipodocumentocupom` tinyint(1) DEFAULT '1',
  `exibirnotaorigemquitacao` tinyint(1) DEFAULT '0',
  `imprimirnomefantasianfe` tinyint(1) DEFAULT '0',
  `contadebitoadiantamentoclientes` varchar(50) DEFAULT NULL,
  `utilizarcontadevendasecontadebitoadiantamentovazia` tinyint(1) DEFAULT '1',
  `tipodocumentopadraodevolucaocondicional` varchar(50) DEFAULT 'Condicional',
  `seriereceitaagronomica` varchar(10) DEFAULT '2',
  `vinculadaart` varchar(10) DEFAULT NULL,
  `aberturasimultaneadeatendimentos` tinyint(1) DEFAULT '1',
  `padraomunicipioincidenciaservico` varchar(50) DEFAULT 'Prestador',
  `vendedorobrigatorioaoselecionarcliente` tinyint(1) DEFAULT '0',
  `faturaraogerarnota` tinyint(1) DEFAULT '0',
  `captionvendedoratendimento` varchar(50) DEFAULT 'F9 - Vendedor:',
  `incluiritempeloproduto` tinyint(1) DEFAULT '0',
  `exibirnofaturamentocompetencia` tinyint(1) DEFAULT '0',
  `editardescontonogrid` tinyint(1) DEFAULT '0',
  `issretido` varchar(50) DEFAULT '0',
  `issretidointermunicipal` varchar(50) DEFAULT '0',
  `utilizarvendedordoclientenavenda` tinyint(1) DEFAULT '1',
  `widthreferencialistaprodutos` varchar(50) DEFAULT '1500',
  `sstabprocessarcomissoes` varchar(50) DEFAULT NULL,
  `boletobbtipoimpressao` varchar(100) DEFAULT NULL,
  `contadebitobancodobrasil` varchar(100) DEFAULT NULL,
  `tipodejurosacalcular` varchar(100) DEFAULT 'Composto',
  `exibirdatalancamentolistaatendimentos` tinyint(1) DEFAULT '1',
  `exibirdocumentoavistalistaatendimentos` tinyint(1) DEFAULT '0',
  `exibirdocumentoprazolistaatendimentos` tinyint(1) DEFAULT '0',
  `boletosbbjurosmes` decimal(10,2) DEFAULT '2.00',
  `exibirhaservicovooatendimentos` tinyint(1) DEFAULT '0',
  `boletosicredinformativo` varchar(100) DEFAULT NULL,
  `boletosicrediprotesto` varchar(100) DEFAULT NULL,
  `boletosicredimulta` varchar(100) DEFAULT NULL,
  `boletosicredimora` varchar(100) DEFAULT NULL,
  `boletosicredimensagem` varchar(100) DEFAULT NULL,
  `faturaraoclicarprevenda` tinyint(1) DEFAULT '0',
  `contacontabilimpostostosvenda` varchar(50) DEFAULT NULL,
  `contacontabildespesasnaooperacionais` varchar(50) DEFAULT NULL,
  `contacontabildespesascomerciais` varchar(50) DEFAULT NULL,
  `contacontabildespesastributarias` varchar(50) DEFAULT NULL,
  `contacontabildespesasfinanceiras` varchar(50) DEFAULT NULL,
  `contacontabiloutrasreceitas` varchar(50) DEFAULT NULL,
  `contacontabiloutrasreceitas2` varchar(50) DEFAULT NULL,
  `pesoobrigatorioaogerarnota` tinyint(1) DEFAULT '0',
  `criarnovoatendimentoaoclicarprevenda` tinyint(1) DEFAULT '0',
  `calcularsaldoentregafuturaadditens` tinyint(1) DEFAULT '0',
  `quitarcontasnaantecipacaorecebiveis` tinyint(1) DEFAULT '1',
  `modificartipoatendimentodocumentocomimagempara` varchar(50) DEFAULT 'NÃO Mudar',
  `tipoaexibirnodocumentocomimagem` varchar(50) DEFAULT 'Padrão',
  `statuspadraoagenda` varchar(50) DEFAULT 'Todas Tarefas do Dia',
  `editarvalorquandopg` tinyint(1) DEFAULT '0',
  `aceitarquantidadezeradaatendimento` tinyint(1) DEFAULT '1',
  `volumesobrigatorios` tinyint(1) DEFAULT '0',
  `banrisulmulta` varchar(50) DEFAULT '0',
  `banrisuljuros` varchar(50) DEFAULT '0',
  `banrisuldiretorioremessa` varchar(150) DEFAULT NULL,
  `banrisuldiretorioretorno` varchar(150) DEFAULT NULL,
  `banrisulcontadebito` varchar(50) DEFAULT NULL,
  `banrisulinformativo` varchar(150) DEFAULT NULL,
  `banrisuldiasprotesto` varchar(50) DEFAULT NULL,
  `banrisultipocobranca` varchar(50) DEFAULT NULL,
  `banrisulmensagempadrao` varchar(50) DEFAULT NULL,
  `banrisulagencia` varchar(50) DEFAULT NULL,
  `banrisulconta` varchar(50) DEFAULT NULL,
  `banrisulcodigocedente` varchar(50) DEFAULT NULL,
  `exibirnofaturamentovalorcredito` tinyint(1) DEFAULT '0',
  `tipocodigoprodutos` varchar(50) DEFAULT 'Sequencial',
  `percentualadicionalpraticado2` varchar(50) DEFAULT '0',
  `tipocodigoadicional` varchar(50) DEFAULT '0',
  `movimentarmateriaprimaaofaturaratendimento` tinyint(1) DEFAULT '0',
  `eventopadrao` varchar(50) DEFAULT NULL,
  `autocompletar` varchar(50) DEFAULT 'DescriÃ§Ã£o',
  `contacontabiloutrasdespesas1` varchar(50) DEFAULT NULL,
  `contacontabiloutrasdespesas2` varchar(50) DEFAULT NULL,
  `contacontabiloutrasdespesas3` varchar(50) DEFAULT NULL,
  `contacontabiloutrasreceitas3` varchar(50) DEFAULT NULL,
  `tiposcolaboradores` varchar(800) DEFAULT NULL,
  `inativaclientesapos` varchar(50) DEFAULT NULL,
  `documentoaogeraratendimentopelaagenda` varchar(50) DEFAULT 'Ordem de ServiÃ§o',
  `concluiragendamentoaofaturaratendimento` tinyint(1) DEFAULT '1',
  `cadastroprodutospersonalizado` tinyint(1) DEFAULT '0',
  `calcularmarkupaosalvarfornecedor` tinyint(1) DEFAULT '0',
  `valormercadoriaobrigatorio` tinyint(1) DEFAULT '0',
  `exibircornositens` tinyint(1) DEFAULT '0',
  `exibirtamanhonositens` tinyint(1) DEFAULT '0',
  `exibirmarcanositens` tinyint(1) DEFAULT '0',
  `exibirstatustecnicoatendimento` tinyint(1) DEFAULT '0',
  `tipodocumentoprazocompra` varchar(50) DEFAULT '',
  `descontosomenteemprodutos` tinyint(1) DEFAULT '0',
  `captiondocumentoimagem` varchar(50) DEFAULT '16 - Documento com Imagem',
  `filtrarempresanadevolucaocondicional` tinyint(1) DEFAULT '0',
  `bairroobrigatoriocliente` tinyint(1) DEFAULT '1',
  `emailparasolicitarautorizacao` varchar(100) DEFAULT NULL,
  `exibirnofaturamentoajuste` tinyint(1) DEFAULT '0',
  `finalizaraoimprimircupom` tinyint(1) DEFAULT '1',
  `codigoeanduplicado` tinyint(1) DEFAULT '0',
  `contacontabiladicionalcmv` varchar(50) DEFAULT NULL,
  `listarprodutosaodigitarreferencianoatendimento` tinyint(1) DEFAULT NULL,
  `modeloresumodevolucaocondicionais` varchar(50) DEFAULT 'Por Atendimento',
  `naturezaoperacaopadracte` varchar(50) DEFAULT NULL,
  `servicopadraogerarnfsecontas` varchar(50) DEFAULT NULL,
  `documentodacontaaogerarnfse` varchar(50) DEFAULT NULL,
  `dreexibircmvoutrassaidas` tinyint(1) DEFAULT '0',
  `piscofinscsllinnsseservicosmaiorquecincomil` tinyint(1) DEFAULT '1',
  `drecustoouvalormercadoria` varchar(50) DEFAULT 'Valor Mercadoria',
  `calcularstquandoordemdecompra` tinyint(1) DEFAULT '0',
  `leituraunitariacontagemestoque` tinyint(1) DEFAULT '0',
  `cadastroincompletoaoselecionar` varchar(50) DEFAULT 'Nada',
  `contratodescricao` varchar(5000) DEFAULT NULL,
  `subgrupopadrao` varchar(50) DEFAULT NULL,
  `praticadopadraonavenda` varchar(50) DEFAULT NULL,
  `praticadoigualapraticadopadraoaolancaritem` tinyint(1) DEFAULT NULL,
  `documentopadraocompra` varchar(50) DEFAULT 'Nota',
  `aliquotasimplessubstituicao` varchar(50) DEFAULT NULL,
  `sicreditipoimpressao` varchar(50) DEFAULT 'A - Normal',
  `drepagamentocompetencia` varchar(50) DEFAULT 'Pagamento',
  `textopadraoentregaepi` varchar(1000) DEFAULT NULL,
  `padraoitemespecifico` varchar(50) DEFAULT NULL,
  `atualizarultimacompraaosalvarpedido` tinyint(1) DEFAULT '0',
  `statuspadraopesquisaitenscolaboradores` varchar(50) DEFAULT 'Faturado',
  `statuspadraohistoricoprecosadditens` varchar(50) DEFAULT 'Faturado',
  `statusgrafico` varchar(50) DEFAULT 'Faturado',
  `documentografico` varchar(50) DEFAULT 'Todos',
  `datagrafico` varchar(50) DEFAULT 'Faturamento',
  `tipopadraorelatoriosgestorcomercial` varchar(50) DEFAULT 'Todos',
  `salvaraoimprimirordemdeservico` tinyint(1) DEFAULT '0',
  `epsonecfadicionarvalor` tinyint(1) DEFAULT '1',
  `tipogestorordemservico` varchar(50) DEFAULT 'Item',
  `cpfcolaboradoritensdois` tinyint(1) DEFAULT '0',
  `exibirnotaservicoslistaatendimentos` tinyint(1) DEFAULT '0',
  `boletobbprotesto` tinyint(1) DEFAULT '0',
  `naturezaoperacaopadraocompra` varchar(50) DEFAULT NULL,
  `tabpadraoguiaadicionaisatendimentos` varchar(50) DEFAULT '7',
  `xmljaimportado` varchar(50) DEFAULT 'Impedir',
  `atendimentojaenviado` varchar(50) DEFAULT 'Impedir',
  `calcularmarkupaomudarvalormercadoria` tinyint(1) DEFAULT '0',
  `contadevolucaocheque` varchar(50) DEFAULT NULL,
  `contaestornodocumentos` varchar(50) DEFAULT NULL,
  `tipocodigonfe` varchar(50) DEFAULT 'CÃ³digo',
  `ncmigualatextolivre` tinyint(1) DEFAULT '0',
  `boletobanrisultipoemissao` varchar(50) DEFAULT '2 - Emitido pelo Cliente',
  `descricaomapadecarga` varchar(50) DEFAULT NULL,
  `exibirtodassituacoesaoabrirtelacolaboradores` tinyint(1) DEFAULT '0',
  `observacoesitensnavenda` varchar(2000) DEFAULT NULL,
  `limitecreditopadraocliente` varchar(50) DEFAULT '0',
  `fecharaosalvardiferentedevendaoucompra` tinyint(1) DEFAULT '0',
  `acaocadastroincompletoformatura` varchar(50) DEFAULT 'Notificar',
  `emailfinanceiroportaenvio` varchar(50) DEFAULT NULL,
  `emailfinanceiroservidorsmtp` varchar(50) DEFAULT NULL,
  `emailfinanceiroemail` varchar(50) DEFAULT NULL,
  `emailfinanceirousuario` varchar(50) DEFAULT NULL,
  `emailfinanceirosenha` varchar(50) DEFAULT NULL,
  `emailfinanceiroesteservidorrequerconexaosegura` tinyint(1) DEFAULT '0',
  `exibirsubtotallistaatendimentos` tinyint(1) DEFAULT '0',
  `exibirdescontolistaatendimentos` tinyint(1) DEFAULT '0',
  `nomecondicaofaturamentoum` varchar(50) DEFAULT NULL,
  `condicaopagamentoum` varchar(50) DEFAULT NULL,
  `nomecondicaofaturamentodois` varchar(50) DEFAULT NULL,
  `condicaopagamentodois` varchar(50) DEFAULT NULL,
  `exibirnofaturamentocondicaoadicionalum` tinyint(1) DEFAULT '0',
  `exibirnofaturamentocondicaoadicionaldois` tinyint(1) DEFAULT '0',
  `produtosdescricaoanotacoes` varchar(50) DEFAULT '&6 - AnotaÃ§Ãµes',
  `conferenciapacoteaosalvarvenda` tinyint(1) DEFAULT '0',
  `descricaoagenciaatendimentos` varchar(50) DEFAULT 'AgÃªncia',
  `observacoespadraoprevenda` varchar(5000) DEFAULT NULL,
  `colaboradoresdestacanascimentomae` tinyint(1) DEFAULT '0',
  `colaboradoresdestacanascimentopai` tinyint(1) DEFAULT '0',
  `colaboradortab21visivel` tinyint(1) DEFAULT '0',
  `diretorioanexosatendimentos` varchar(200) DEFAULT NULL,
  `diretorioimagensatendimentos` varchar(200) DEFAULT NULL,
  `calculardiferencaaliquotasubstituidos` tinyint(1) DEFAULT '1',
  `permitirsolicitacaocomprajaefetuada` tinyint(1) DEFAULT '1',
  `mudartipodocumentoaoclicaremos` tinyint(1) DEFAULT '1',
  `promocaotabelacdigualtabela` tinyint(1) DEFAULT '0',
  `validacoessped` tinyint(1) DEFAULT '0',
  `ultimobackupremoto` date DEFAULT NULL,
  PRIMARY KEY (`codigoempresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.configuracoesdois
CREATE TABLE IF NOT EXISTS `configuracoesdois` (
  `codigoempresa` varchar(10) NOT NULL DEFAULT '0',
  `emailatendimentoporta` varchar(50) DEFAULT NULL,
  `emailatendimentoservidor` varchar(50) DEFAULT NULL,
  `emailatendimento` varchar(50) DEFAULT NULL,
  `emailatendimentousuario` varchar(50) DEFAULT NULL,
  `emailatendimentosenha` varchar(50) DEFAULT NULL,
  `emailatendimentoconexaosegura` tinyint(1) DEFAULT NULL,
  `enviaremailaocriarcondicional` tinyint(1) DEFAULT NULL,
  `additensauxiliar` tinyint(1) DEFAULT NULL,
  `validadescontomaximoaoadditens` tinyint(1) DEFAULT NULL,
  `marcadocumento40colunas` tinyint(1) DEFAULT NULL,
  `modeloetiquetaempacotamento` varchar(50) DEFAULT 'Modelo 1',
  `assinatura` blob,
  `contadebitoobrigatoriaquitacaocontaspagar` tinyint(1) DEFAULT '0',
  `fusohorario` varchar(6) DEFAULT '-03:00',
  `usarsenhaatendimento` tinyint(1) DEFAULT NULL,
  `validardescontoitemaitemaosalvar` tinyint(1) DEFAULT NULL,
  `bradescoagencia` varchar(20) DEFAULT NULL,
  `bradescocedente` varchar(20) DEFAULT NULL,
  `bradescodiasprotesto` varchar(20) DEFAULT NULL,
  `bradescopercentualmulta` varchar(20) DEFAULT NULL,
  `bradescojuropodia` varchar(20) DEFAULT NULL,
  `bradescotipocobranca` varchar(50) DEFAULT NULL,
  `bradescotipoemissao` varchar(50) DEFAULT NULL,
  `bradescocarteira` varchar(50) DEFAULT NULL,
  `bradescomensagemboleto` varchar(50) DEFAULT NULL,
  `intervalopadraoparcelas` varchar(5) DEFAULT NULL,
  `bradescoinformativo` varchar(50) DEFAULT NULL,
  `bradescodiretorioremessa` varchar(255) DEFAULT NULL,
  `bradescocodigoempresa` varchar(20) DEFAULT NULL,
  `contadebitolistaatendimentos` tinyint(1) DEFAULT NULL,
  `comandanalistadeatendimentos` tinyint(1) DEFAULT NULL,
  `descricaocampofax` varchar(20) DEFAULT 'Fax:',
  `modelopersonalizadocolaboradores` varchar(20) DEFAULT NULL,
  `exibirdetalhescolaboradornalista` tinyint(1) DEFAULT NULL,
  `preenchercontadebitoquitacaoreceber` tinyint(1) DEFAULT NULL,
  `exibirtipoaviacaonosatendimentos` tinyint(1) DEFAULT NULL,
  `departamentoobrigatorio` tinyint(1) DEFAULT NULL,
  `valoritemobrigatorioquandovenda` tinyint(1) DEFAULT NULL,
  `paisnaabaprincipalcolaboradores` tinyint(1) DEFAULT NULL,
  `exibirtelefonelistacontas` tinyint(1) DEFAULT NULL,
  `gerarvalorporextensoimprimiritens` tinyint(1) DEFAULT NULL,
  `capturapeso` tinyint(1) DEFAULT NULL,
  `caracterinicialleiturabalanca` varchar(2) DEFAULT '4',
  `larguracodigoleiturabalanca` varchar(2) DEFAULT '3',
  `criteriobalanca` varchar(10) DEFAULT 'Valor',
  `atulizacaoicmsrs` varchar(10) DEFAULT NULL,
  `versaocest` varchar(10) DEFAULT NULL,
  `tipoimpressaocomanda` varchar(50) DEFAULT '40 Colunas',
  `especificacoestecnicasobsprodutoaoadditem` tinyint(1) DEFAULT NULL,
  `diasnovocontatoatendimento` varchar(3) DEFAULT NULL,
  `ocorrencianovocontato` varchar(50) DEFAULT NULL,
  `comandaspessoasobrigatoria` tinyint(1) DEFAULT NULL,
  `contacreditopadraovalepresente` varchar(50) DEFAULT NULL,
  `linkautorizacaopedidoonline` varchar(100) DEFAULT 'http://sistemaversatil_dbtest.com.br/atualiza/',
  `exibirkmmovimentocontabil` tinyint(1) DEFAULT NULL,
  `atualizarprovisoescontratosalvaratendimento` tinyint(1) DEFAULT NULL,
  `ncmobrigatorio` tinyint(1) DEFAULT NULL,
  `captiondocumentopromocao` varchar(50) DEFAULT '4 - PromoÃ§Ã£o',
  `cidadepadraoclientes` varchar(50) DEFAULT NULL,
  `padraoparcelasprazonavenda` varchar(5) DEFAULT '1',
  `exibirvendedorgerenciadorcontatos` tinyint(1) DEFAULT '1',
  `exibirultimovendedorgerenciadorcontatos` tinyint(1) DEFAULT '0',
  `imprimirvendedorobsnota` tinyint(1) DEFAULT '0',
  `copiaemailatendimentoparavendedor` tinyint(1) DEFAULT '0',
  `documentopadraocontasreceber` varchar(50) DEFAULT NULL,
  `diretorioimpressorapromissoria` varchar(255) DEFAULT NULL,
  `produtosbalanca` tinyint(4) DEFAULT '1',
  `modelopromissorias` varchar(50) DEFAULT 'A4',
  `impressorapadraoteleentrega` varchar(50) DEFAULT NULL,
  `descontomaximopadraoproduto` varchar(50) DEFAULT NULL,
  `titulocarnepagamento` varchar(50) DEFAULT 'CARNE DE PAGAMENTO',
  `datadeemissaoquitacaoparcial` varchar(50) DEFAULT 'Data QuitaÃ§Ã£o',
  `ultimacompranalistadeprodutos` tinyint(1) DEFAULT NULL,
  `promocaonalistadeprodutos` tinyint(1) DEFAULT NULL,
  `descontomaximolistaprodutos` tinyint(1) DEFAULT NULL,
  `ultimaalteracaolistadeprodutos` tinyint(1) DEFAULT NULL,
  `telefonenalistacolaboradores` tinyint(1) DEFAULT '1',
  `celularnalistacolaboradores` tinyint(1) DEFAULT NULL,
  `centrodecustoobrigatorioquitacaopagar` tinyint(1) DEFAULT NULL,
  `exibirobservacoesadditens` tinyint(1) DEFAULT NULL,
  `pesquisareexbirstatusdodocumento` tinyint(1) DEFAULT NULL,
  `padraostatusdocumentonapesquisa` varchar(50) DEFAULT 'Todos',
  `padraostatusdocumentoaocriar` varchar(50) DEFAULT 'Em NegociaÃ§Ã£o',
  `descricaocontratolonga` varchar(10000) DEFAULT NULL,
  `colaboradortab22visivel` tinyint(1) DEFAULT '1',
  `calcularquantidadepelosatributos` tinyint(1) DEFAULT '1',
  `tabmarkupquandofocoemvalores` tinyint(1) DEFAULT '1',
  `exibirreferenciaprodutosegundalinhacadastro` tinyint(1) DEFAULT NULL,
  `exibircampofacilitadorentradaestoqueeetiqueta` tinyint(1) DEFAULT NULL,
  `conluirosequipamentosaofaturar` tinyint(1) DEFAULT '1',
  `validardescontoparaprodutogenericoadditem` tinyint(1) DEFAULT '1',
  `exibirncmlistaprodutos` tinyint(1) DEFAULT NULL,
  `exibirobservacoesitensdois` tinyint(1) DEFAULT NULL,
  `exibiriconetrocaitensdois` tinyint(1) DEFAULT NULL,
  `captiondocumentocondicional` varchar(50) DEFAULT '2 - Condicional',
  `celularobrigatorioquandocliente` tinyint(1) DEFAULT NULL,
  `paispadrao` varchar(20) DEFAULT '1058',
  `contacontabilcustoprestacaoservicos` varchar(20) DEFAULT NULL,
  `contacontabildeducoesreceitas` varchar(20) DEFAULT NULL,
  `contacontabilprolabore` varchar(20) DEFAULT NULL,
  `drereceitasvendashabilitado` tinyint(1) DEFAULT '1',
  `dreincluirvalorprodutoshabilitado` tinyint(1) DEFAULT NULL,
  `dreincluirgrupoprodutosvendidos` tinyint(1) DEFAULT NULL,
  `dreincluirvalorservicos` tinyint(1) DEFAULT NULL,
  `dreincluircentrocustogeradorreceita` tinyint(1) DEFAULT NULL,
  `drecustomercadoriavendidahabilitado` tinyint(1) DEFAULT '1',
  `dregrupoprodutosvendidoshabilitado` tinyint(1) DEFAULT NULL,
  `drelucrobrutohabilitado` tinyint(1) DEFAULT '1',
  `dredevolucaovendahabilitado` tinyint(1) DEFAULT '1',
  `drejurosrecebidoshabilitado` tinyint(1) DEFAULT '1',
  `dremultasaplicadashabilitado` tinyint(1) DEFAULT '1',
  `drebonificacoessaidashabilitado` tinyint(1) DEFAULT NULL,
  `drecustomercadoriaoutrassaidashabilitado` tinyint(1) DEFAULT NULL,
  `dreresultadoantesparticipacoeshabilitado` tinyint(1) DEFAULT NULL,
  `creditaricmsnomarkup` tinyint(1) DEFAULT '1',
  `armazenarultimatransportadorapesquisada` tinyint(1) DEFAULT NULL,
  `armazenarultimanaturezaoperacaopesquisada` tinyint(1) DEFAULT NULL,
  `tmpmarkupipi` varchar(5) DEFAULT NULL,
  `tmpmarkupfretecompra` varchar(5) DEFAULT NULL,
  `tmpmarkupst` varchar(5) DEFAULT NULL,
  `tmpmarkupoutroscompra` varchar(5) DEFAULT NULL,
  `tmpmarkupdiferencaicms` varchar(5) DEFAULT NULL,
  `tmpmarkupcreditoicms` varchar(5) DEFAULT NULL,
  `tmpmarkupsimples` varchar(5) DEFAULT NULL,
  `tmpmarkupfreteentrega` varchar(5) DEFAULT NULL,
  `tmpmarkupcomissao` varchar(5) DEFAULT NULL,
  `tmpmarkupcustofixo` varchar(5) DEFAULT NULL,
  `tmpmarkupoutrosimpostos` varchar(5) DEFAULT NULL,
  `tmpmarkupaliquotaicms` varchar(5) DEFAULT NULL,
  `tmpmarkuppis` varchar(5) DEFAULT NULL,
  `tmpmarkupcofins` varchar(5) DEFAULT NULL,
  `tmpmarkuplucrodesejado` varchar(5) DEFAULT NULL,
  `agendarposvendasautomaticamente` tinyint(1) DEFAULT NULL,
  `incluirnumerodareceitananotafiscal` tinyint(1) DEFAULT NULL,
  `tabeladeprecosobrigatoriaclientes` tinyint(1) DEFAULT NULL,
  `tipodecadastroobrigatorioclientes` tinyint(1) DEFAULT NULL,
  `tipodetributacaoobrigatoriaclientes` tinyint(1) DEFAULT NULL,
  `tipospadroesagenda` varchar(1000) DEFAULT NULL,
  `naturezaoperacaolocacaobemimovel` varchar(50) DEFAULT NULL,
  `responsavelobrigatorioaoimprimirpedido` tinyint(1) DEFAULT NULL,
  `numeroordemobrigatorioaoimprimirpedido` tinyint(1) DEFAULT NULL,
  `issretidoobrigatorioaosalvarcidade` tinyint(1) DEFAULT NULL,
  `comandasconfirmarcancelamentopedido` tinyint(1) DEFAULT '1',
  `atualizarresponsavelentreganaposvenda` tinyint(1) DEFAULT NULL,
  `dreincluirsubgrupoprodutos` tinyint(1) DEFAULT NULL,
  `dreincluirvalormateriaprimavendida` tinyint(1) DEFAULT NULL,
  `dreincluirgrupomateriaprimavendida` tinyint(1) DEFAULT NULL,
  `dreincluirservicosproprios` tinyint(1) DEFAULT NULL,
  `dreincluirservicosterceirizados` tinyint(1) DEFAULT NULL,
  `dreincluirservicoscomissionados` tinyint(1) DEFAULT NULL,
  `dreincluirgruposervicosprestados` tinyint(1) DEFAULT NULL,
  `dreincluircustoservicoprestado` tinyint(1) DEFAULT NULL,
  `dreincluircustomateriaprimautilizada` tinyint(1) DEFAULT NULL,
  `dreincluircustomateriaprimavendida` tinyint(1) DEFAULT NULL,
  `dreincluircustogrupomateriaprimavendida` tinyint(1) DEFAULT NULL,
  `dreincluircustogruposervicoprestado` tinyint(1) DEFAULT NULL,
  `dreincluircustogruposervicoprestado2` tinyint(1) DEFAULT NULL,
  `calculartributoscupomfiscalporncm` tinyint(1) DEFAULT '1',
  `titulodocumentonaofiscal` varchar(50) DEFAULT 'NAO E DOCUMENTO FISCAL',
  `modelolivroponto` varchar(50) DEFAULT 'Minutos Formato 100',
  `preenchermarcapadraonoprodutoaoselecionarfornecedor` tinyint(1) DEFAULT NULL,
  `mensagemdevolucaocondicionalsucesso` tinyint(1) DEFAULT '1',
  `abrirfaturamentoaoclicarnoatalhoaprazo` tinyint(1) DEFAULT NULL,
  `tipoconversoradditens` varchar(15) DEFAULT 'Quantidade',
  `exibirtitularlistadecontas` tinyint(1) DEFAULT NULL,
  `calcularcomissaoporitemnoatendimento` tinyint(1) DEFAULT '1',
  `registrocontabil` varchar(50) DEFAULT 'Regime de Caixa',
  `preencherdatafaturamentofaturarvenda` tinyint(1) DEFAULT '1',
  `copiascondicional` varchar(2) DEFAULT '1',
  `exibirdocumentoaoadicionarcontatocolaborador` varchar(1) DEFAULT NULL,
  `incluirendereconfcedoclientecadastrado` varchar(1) DEFAULT '1',
  `faturaraoimprimirpedido` varchar(1) DEFAULT NULL,
  `pesquisaportelefoneaofaturarcomandatelainicial` varchar(1) DEFAULT NULL,
  `processarinformacoescontratoaoabriratendimento` varchar(1) DEFAULT NULL,
  `caracterescomandas` varchar(2) DEFAULT '3',
  `pesquisarprodutosporsituacaoestoque` tinyint(1) DEFAULT NULL,
  `incluirusuarioobsnota` tinyint(1) DEFAULT NULL,
  `somentenumerosaolercomanda` tinyint(1) DEFAULT NULL,
  `armazenarpesquisarpornosprodutos` tinyint(1) DEFAULT '1',
  `tipoimpressaogarantia` varchar(50) DEFAULT 'Simplificado 1 Via',
  `destinoimpressaogarantia` varchar(50) DEFAULT 'Tela',
  `suprimirprimeirozerosecodigobalancamenorquemil` tinyint(1) DEFAULT NULL,
  `serviconanotadasefazestadual` tinyint(1) DEFAULT NULL,
  `tecladonacomandaaoadditens` tinyint(1) DEFAULT NULL,
  `modelovalepresente` varchar(50) DEFAULT 'PÃ¡gina Inteira',
  `percentualadicionalpraticado3` varchar(4) DEFAULT NULL,
  `drecustoservicosproprios` tinyint(1) DEFAULT NULL,
  `drecustoservicosterceirizados` tinyint(1) DEFAULT NULL,
  `drecustoservicoscomissionados` tinyint(1) DEFAULT NULL,
  `documentopadraoiconecontrato` varchar(50) DEFAULT 'Todos',
  `operacaopadraocompraparafaturamentodireto` varchar(50) DEFAULT 'Outras Entradas',
  `documentopadraocompraparafaturamentodireto` varchar(50) DEFAULT 'Nota',
  `informacoesdeestoqueporempresa` tinyint(1) DEFAULT NULL,
  `cadastrarclienteaodigitarcpfnavenda` tinyint(1) DEFAULT NULL,
  `liminar5464` tinyint(1) DEFAULT NULL,
  `codigoibgeobrigatoriocidades` tinyint(1) DEFAULT NULL,
  `agenciaobrigatorianoatendimento` tinyint(1) DEFAULT NULL,
  `informacoesdeterceirizadoosequipamentos` tinyint(1) DEFAULT '1',
  `exibirdescontoemmoedaadditens` tinyint(1) DEFAULT NULL,
  `contadebitoobrigatoriaquitarcontareceber` tinyint(1) DEFAULT NULL,
  `contacreditoobrigatoriaquitarcontareceber` tinyint(1) DEFAULT NULL,
  `labelcomprasrelatoriodoisgerenciais` varchar(50) DEFAULT 'Compras',
  `gravapreferenciacontadebitoquitadacontaspagar` tinyint(1) DEFAULT '1',
  `finalizaraopressionarentervalorpago` tinyint(1) DEFAULT NULL,
  `exibircontrolelistaatendimentos` tinyint(1) DEFAULT NULL,
  `textocarneboletos` varchar(50) DEFAULT NULL,
  `diapadraovencimento` varchar(2) DEFAULT NULL,
  `backupobrigatorio` tinyint(1) DEFAULT '1',
  `viascomprovante` varchar(2) DEFAULT '1',
  `tipoarredondamentomarkup` varchar(50) DEFAULT NULL,
  `diasalertacondicional` varchar(3) DEFAULT NULL,
  `descontarcreditoclientenovalordanota` tinyint(1) DEFAULT '1',
  `captiondocumentoemprestimos` varchar(50) DEFAULT '10 - EmprÃ©stimos',
  `exibirsituacaotributarianalistadeprodutos` tinyint(1) DEFAULT '0',
  `exibirapenasestoquedisponivelnoestoque` tinyint(1) DEFAULT '0',
  `gerartextocontratoautomaticamente` tinyint(1) DEFAULT '0',
  `nomeimagemproduto` varchar(50) DEFAULT 'CÃ³digo',
  `copiasprevenda` varchar(2) DEFAULT '1',
  `calcularcustomadioaofaturarcompra` tinyint(1) DEFAULT '0',
  `tabelaprecopadraovenda` varchar(10) DEFAULT NULL,
  `movimentacoescustomedio` varchar(10) DEFAULT NULL,
  `percentualcustoautomatico` varchar(3) DEFAULT NULL,
  `diretorioimagenscontas` varchar(200) DEFAULT NULL,
  `documentopadraocontratoprecos` varchar(50) DEFAULT 'Contrato',
  `preencherdadoseditalaoincluiritem` tinyint(1) DEFAULT '1',
  `permitirincluiritemalemdosaldo` tinyint(1) DEFAULT '1',
  `imprimirdadoseditalaogerarnfe` tinyint(1) DEFAULT '0',
  `imprimircontratoaoimprimirboleto` tinyint(1) DEFAULT '0',
  `imprimirnfceaofaturaratendimento` tinyint(1) DEFAULT '0',
  `condicionalquandotabelaselecionada` tinyint(1) DEFAULT '1',
  `clientesnovosbloqueados` varchar(3) DEFAULT NULL,
  `limitecreditopadrao` varchar(15) DEFAULT NULL,
  `condicionalliberadaclientenovo` tinyint(1) DEFAULT '1',
  `aoselecionarnaturezatransfmudarvaloritem` tinyint(1) DEFAULT '0',
  `concluirsolicitacaoaoefeturordemdecompra` tinyint(1) DEFAULT '0',
  `oquefazeremailinvalido` varchar(10) DEFAULT NULL,
  `logalteracoescolaboradores` tinyint(1) DEFAULT '0',
  `somentenumerosnanota` tinyint(1) DEFAULT '1',
  `aoimportarxmlfragmentardesconto` tinyint(1) DEFAULT '0',
  `tipodocumentoprazoobsnota` tinyint(1) DEFAULT '0',
  `captionservicosgestaoorcamentos` varchar(50) DEFAULT NULL,
  `captionprodutosgestaoorcamentos` varchar(50) DEFAULT NULL,
  `focoemcodigoaopressionarf12atendimentorapido` tinyint(1) DEFAULT '0',
  `regracompra` varchar(50) DEFAULT 'MÃ­nimo Atingido',
  `quandopgtabelaigualtabelacd` tinyint(1) DEFAULT '0',
  `subgrupoobrigatorio` tinyint(1) DEFAULT '0',
  `calculardescontoauxiliarfaturamento` tinyint(1) DEFAULT '1',
  `modificaratendimentoaposgerarnota` tinyint(1) DEFAULT '0',
  `especificardescontonotahabilitado` tinyint(1) DEFAULT '0',
  `dataentregalistaatendimentos` tinyint(1) DEFAULT '0',
  `statuspadraocontasnocolaborador` varchar(20) DEFAULT 'Aberta',
  `modeloresumofinanceiro` varchar(50) DEFAULT 'Modelo 1',
  `modeloimpressaoboletobradesco` varchar(50) DEFAULT 'Padrão',
  `lucroporgrupo` tinyint(1) DEFAULT '0',
  `adicionaispraticadoporgrupo` tinyint(1) DEFAULT '0',
  `unircomandasnosatendimentos` tinyint(1) DEFAULT '0',
  `numeracaonotasporserie` tinyint(1) DEFAULT '0',
  `stpiscofinsaogerarnotaquandosimples` varchar(2) DEFAULT '99',
  `editarpercentualparanota` tinyint(1) DEFAULT '0',
  `fechartelaaofaturarvenda` tinyint(1) DEFAULT '0',
  `modelorelatoriorapidocontas` varchar(10) DEFAULT 'Modelo 1',
  `stpiscofinsaogerarnotaquandogeral` varchar(2) DEFAULT NULL,
  `diasavisoposvenda` varchar(3) DEFAULT '15',
  `conectarservidorversatil` tinyint(1) DEFAULT '1',
  `santanderagencia` varchar(10) DEFAULT NULL,
  `santanderbeneficiario` varchar(10) DEFAULT NULL,
  `santandermodalidade` varchar(20) DEFAULT NULL,
  `santanderdiasprotesto` varchar(10) DEFAULT NULL,
  `santantedermulta` varchar(10) DEFAULT NULL,
  `santanderjurodia` varchar(10) DEFAULT NULL,
  `santandermensagempradrao` varchar(100) DEFAULT NULL,
  `santanderinformativo` varchar(100) DEFAULT NULL,
  `santanderdiretorioremessa` varchar(100) DEFAULT NULL,
  `santandercodigodetransmissao` varchar(20) DEFAULT NULL,
  `exibirhoralancamentoitem` tinyint(1) DEFAULT '0',
  `atualizarvalordositensaoselecionartabela` tinyint(1) DEFAULT '0',
  `comissaoporvendedorecondicaopagamento` tinyint(1) DEFAULT '0',
  `exibircodigoadicionaladditens` tinyint(1) DEFAULT '0',
  `bancodobrasilagencia` varchar(10) DEFAULT NULL,
  `bancodobrasilbeneficiario` varchar(10) DEFAULT NULL,
  `bancodobrasilcarteira` varchar(20) DEFAULT NULL,
  `bancodobrasilconvenio` varchar(10) DEFAULT NULL,
  `bancodobrasilmodalidade` varchar(50) DEFAULT NULL,
  `bancodobrasildiasprotesto` varchar(10) DEFAULT NULL,
  `bancodobrasilmulta` varchar(10) DEFAULT NULL,
  `bancodobrasiljurodia` varchar(10) DEFAULT NULL,
  `bancodobrasilmensagempadrao` varchar(100) DEFAULT NULL,
  `bancodobrasilinformativo` varchar(100) DEFAULT NULL,
  `bancodobrasildiretorioremessa` varchar(100) DEFAULT NULL,
  `rntrc` varchar(20) DEFAULT NULL,
  `servicopadraocte` varchar(20) DEFAULT NULL,
  `horarioprevenda40colunassimplificado` tinyint(4) DEFAULT '0',
  `pesquisaatendimentoshora` tinyint(1) DEFAULT '0',
  `importarxmlprocessardescricao` tinyint(1) DEFAULT '0',
  `exibiroperacaoadditens` tinyint(1) DEFAULT '0',
  `exibiroperacaoitensatendimentos` tinyint(1) DEFAULT '0',
  `exibirconvenioatendimentorapido` tinyint(1) DEFAULT '0',
  `atualizardataestoqueminimoaoiniciar` tinyint(1) DEFAULT '0',
  `dataestoqueminimolistaprodutos` tinyint(1) DEFAULT '0',
  `balancaingnorarzerosaesquerda` tinyint(1) DEFAULT '0',
  `sicoobagencia` varchar(10) DEFAULT NULL,
  `sicoobbeneficiario` varchar(10) DEFAULT NULL,
  `sicoobcarteira` varchar(10) DEFAULT NULL,
  `sicoobmodalidade` varchar(20) DEFAULT NULL,
  `sicoobdiasprotesto` varchar(10) DEFAULT NULL,
  `sicoobmulta` varchar(10) DEFAULT NULL,
  `sicoobjurodia` varchar(10) DEFAULT NULL,
  `sicoobmensagempadrao` varchar(100) DEFAULT NULL,
  `sicoobinformativo` varchar(100) DEFAULT NULL,
  `sicoobdiretorioremessa` varchar(100) DEFAULT NULL,
  `ctecst` varchar(2) DEFAULT '40',
  `ctepicms` varchar(5) DEFAULT NULL,
  `sicoobconta` varchar(20) DEFAULT NULL,
  `drecustodevolucoes` tinyint(1) DEFAULT '0',
  `solicitarcpfnfce` tinyint(1) DEFAULT '0',
  `diretorioremessabanrisuldebitoautomatico` varchar(50) DEFAULT NULL,
  `conveniobanrisuldebitoautomatico` varchar(10) DEFAULT NULL,
  `caixaagencia` varchar(10) DEFAULT NULL,
  `caixabeneficiario` varchar(10) DEFAULT NULL,
  `caixacarteira` varchar(10) DEFAULT NULL,
  `caixamodalidade` varchar(20) DEFAULT NULL,
  `caixadiasprotesto` varchar(10) DEFAULT NULL,
  `caixamulta` varchar(10) DEFAULT NULL,
  `caixajurodia` varchar(10) DEFAULT NULL,
  `caixamansagempadrao` varchar(1000) DEFAULT NULL,
  `caixainformativo` varchar(1000) DEFAULT NULL,
  `caixadiretorioremessa` varchar(100) DEFAULT NULL,
  `mudartabelaprecosaoselecionacliente` varchar(100) DEFAULT '1',
  `listadestatusos` varchar(200) DEFAULT NULL,
  `produtosfornecedoresadicionais` tinyint(1) DEFAULT '0',
  `naturezavendaentregafutura` varchar(20) DEFAULT NULL,
  `calcularmarkupaomudarcomposicao` tinyint(1) DEFAULT '0',
  `carregarcomposicaoadditens` tinyint(1) DEFAULT '0',
  `cnpjlicencaunidanfe` varchar(20) DEFAULT NULL,
  `diasatrasobloquearcliente` decimal(10,0) DEFAULT NULL,
  `produtospadraodescontosimulado` varchar(20) DEFAULT NULL,
  `servicobanhopet` varchar(20) DEFAULT NULL,
  `calculadataentregaquandocompra` tinyint(1) DEFAULT '0',
  `chaveenviosms` varchar(50) DEFAULT NULL,
  `processarlicitacoesentregas` tinyint(1) DEFAULT '0',
  `tipoatendimentochecklist` varchar(50) DEFAULT NULL,
  `tipoimpressaochecklist` varchar(50) DEFAULT NULL,
  `caixatipoimpressao` varchar(50) DEFAULT 'A - Normal',
  `codigoempresacolaboradores` varchar(50) DEFAULT NULL,
  `codigoenderecocobranca` varchar(50) DEFAULT NULL,
  `codigoenderecoentrega` varchar(50) DEFAULT NULL,
  `sicoobcontadebito` varchar(50) DEFAULT NULL,
  `caixacontadebito` varchar(50) DEFAULT NULL,
  `tabpadraocomplementoprodutos` varchar(2) DEFAULT NULL,
  `caixadiasdevolucao` varchar(10) DEFAULT NULL,
  `diferencialicmsespecifico` varchar(10) DEFAULT NULL,
  `quebranacomposicao` tinyint(1) DEFAULT '0',
  `exibirordenarporemitensatendimento` tinyint(1) DEFAULT '0',
  `exibirdocumentoitensatendimento` tinyint(1) DEFAULT '1',
  `exibiroperacaoitensatendimento` tinyint(1) DEFAULT '1',
  `atualizarfreteaofaturarcompra` tinyint(1) DEFAULT '0',
  `exibirtecnicoresponsavelagenda` tinyint(1) DEFAULT '0',
  `abapadraoretornobanco` varchar(25) DEFAULT 'Banrisul',
  `padraofaturamentoatendimento` varchar(25) DEFAULT NULL,
  `comoconheceuaempresaobrigatorio` tinyint(1) DEFAULT '0',
  `calculardescontotabelanapromocao` tinyint(1) DEFAULT '0',
  `lotesnaobservacaodoitemdanotafiscal` tinyint(1) DEFAULT '0',
  `diretorioexportacaoarquivosite` varchar(100) DEFAULT 'C:\\ERP VersÃ¡til\\ExportaÃ§Ã£o.txt',
  `exibirprometidoparaatendimentos` tinyint(1) DEFAULT '0',
  `exibirfaturamentonsu` tinyint(1) DEFAULT '0',
  `valornastransferenciasdesaida` varchar(50) DEFAULT 'Valor Mercadoria',
  `cancelarcontaaosolicitarbaixaboleto` tinyint(1) DEFAULT '0',
  `tabelaigualtabelacdseacrescimo` tinyint(1) DEFAULT '0',
  `gerarboletosomenteaposemissaonota` tinyint(1) DEFAULT '0',
  `copiarobservacoescontratoorigem` tinyint(1) DEFAULT '0',
  `copiarobservacoescontratoorigemparaobsnfe` tinyint(1) DEFAULT '0',
  `exibircfoplistaatendimentos` tinyint(1) DEFAULT '0',
  `faturaraosalvarnotagerada` tinyint(1) DEFAULT '0',
  `larguraalturaobrigatoriovenda` tinyint(1) DEFAULT '0',
  `textolivreobrigatoriovenda` tinyint(1) DEFAULT '0',
  `quantidadeobrigatoriovenda` tinyint(1) DEFAULT '0',
  `preenchercampocontratoitens1aocopiaratendimento` tinyint(1) DEFAULT '0',
  `naturezaoperacaotransferenciasaida` varchar(20) DEFAULT NULL,
  `contacreditoliquidacaosicredi` varchar(20) DEFAULT NULL,
  `exibirpetatendimentos` tinyint(1) DEFAULT '0',
  `gerarnumeroordemdeservicosequencial` tinyint(1) DEFAULT '0',
  `gerarnumeropedidosequencial` tinyint(1) DEFAULT '0',
  `custopadraorelatorio001gerenciaisatendimentos` varchar(20) DEFAULT 'CMV',
  `faturamentoobrigatorioaogerarnfe` tinyint(1) DEFAULT '1',
  `modelonfse` varchar(50) DEFAULT 'Com Faturamento',
  `diferencialicmsmedicamentos` tinyint(1) DEFAULT '1',
  `codigosubgrupopadraocolaborador` varchar(20) DEFAULT NULL,
  `codigosubgrupoclienteretornobanrisuldebitocontraordem` varchar(20) DEFAULT NULL,
  `codigosubgrupoclienteretornobanrisuldebitocontainvalida` varchar(20) DEFAULT NULL,
  `incluirnumeroatendimentonotapromissoria` tinyint(1) DEFAULT '0',
  `modelonotapromissoria` varchar(100) DEFAULT 'Sequencial',
  `pedidoliberadaclientenovo` tinyint(1) DEFAULT '1',
  `diasalertaordemdeservico` varchar(20) DEFAULT NULL,
  `incluirdiferencialicmsobsnota` tinyint(1) DEFAULT '0',
  `amparars` tinyint(1) DEFAULT '0',
  `codigogrupopadraocolaborador` varchar(20) DEFAULT NULL,
  `atualizarcmvevmvaoiniciarosistema` tinyint(1) DEFAULT '0',
  `operacaoitemobrigatoriaquandovenda` tinyint(1) DEFAULT '0',
  `codigonaturezaoperacaopassofundo` varchar(2) DEFAULT NULL,
  `incentivadorcultural` varchar(10) DEFAULT NULL,
  `codigoresponsaveltecnicopadrao` varchar(10) DEFAULT NULL,
  `gerarnumeroordemdeproducaosequencial` tinyint(1) DEFAULT '0',
  `vendedorgerenciadordecontatosclienteobrigatorio` tinyint(1) DEFAULT '0',
  `banrisultipoimpressao` varchar(50) DEFAULT 'A - Normal',
  `tipoimpressaorecibocreditocolaborador` varchar(50) DEFAULT 'Recibo A4',
  `exibirprodutosempresalogada` tinyint(1) DEFAULT '0',
  `backuplocalobrigatorio` tinyint(1) DEFAULT '0',
  `unicredagencia` varchar(10) DEFAULT NULL,
  `unicredconta` varchar(10) DEFAULT NULL,
  `unicredbeneficiario` varchar(12) DEFAULT NULL,
  `unicredcarteira` varchar(10) DEFAULT NULL,
  `unicredmodalidade` varchar(20) DEFAULT NULL,
  `unicreddiasprotesto` varchar(10) DEFAULT NULL,
  `unicredmulta` varchar(10) DEFAULT NULL,
  `unicredjurodia` varchar(10) DEFAULT NULL,
  `unicredmensagempadrao` varchar(500) DEFAULT NULL,
  `unicredinformativo` varchar(500) DEFAULT NULL,
  `unicreddiretorioremessa` varchar(500) DEFAULT NULL,
  `unicredcontadebito` varchar(20) DEFAULT NULL,
  `formaturanadescricaoitemnota` tinyint(1) DEFAULT '0',
  `diretoriocontratos` varchar(500) DEFAULT NULL,
  `optantesimplesnacional` varchar(20) DEFAULT NULL,
  `exibirdataemissaonfeatendimentos` tinyint(1) DEFAULT '0',
  `zerarestoquenaleituraestoquesemexcluirmovimento` tinyint(1) DEFAULT '0',
  `incluirremessasaidaleituraestoque` tinyint(1) DEFAULT '0',
  `observacoesrecibolocacaobemmovel` varchar(2000) DEFAULT NULL,
  `exibirdatamovimentoatendimentos` tinyint(1) DEFAULT '0',
  `vencimentoanteriorlancamento` tinyint(1) DEFAULT '0',
  `casasdecimaisestoque` varchar(6) DEFAULT 'Padrão',
  `textoautorizacao` varchar(5000) DEFAULT NULL,
  `textoautorizacaocolaborador` varchar(5000) DEFAULT NULL,
  `sicoobtipoimpressao` varchar(10) DEFAULT NULL,
  `padraomunicipioprestacaoservico` varchar(10) DEFAULT 'Prestador',
  `exibirnofaturamentotitular` tinyint(1) DEFAULT '0',
  `praticadoobrigatorio` tinyint(1) DEFAULT '0',
  `bancodobrasilcontadebito` varchar(20) DEFAULT NULL,
  `itauagencia` varchar(10) DEFAULT NULL,
  `itaubeneficiario` varchar(10) DEFAULT NULL,
  `itaucarteira` varchar(10) DEFAULT NULL,
  `itauconta` varchar(10) DEFAULT NULL,
  `itaucontadebito` varchar(10) DEFAULT NULL,
  `itaumodalidade` varchar(50) DEFAULT NULL,
  `itaudiasprotesto` varchar(10) DEFAULT NULL,
  `itaumulta` varchar(10) DEFAULT NULL,
  `itaujurodia` varchar(10) DEFAULT NULL,
  `itaumensagempadrao` varchar(100) DEFAULT NULL,
  `itauinformativo` varchar(100) DEFAULT NULL,
  `itaudiretorioremessa` varchar(100) DEFAULT NULL,
  `itaudiasdevolucao` varchar(10) DEFAULT NULL,
  `incluireannoxml` tinyint(1) DEFAULT '1',
  `descontonoatendimentocomprodutospromocao` tinyint(1) DEFAULT '0',
  `centrodecustoobrigatorioquitacaoreceber` tinyint(1) DEFAULT '0',
  `centrodecustoobrigatoriocadastrarconta` tinyint(1) DEFAULT '0',
  `faturaraoimprimirprevenda` tinyint(1) DEFAULT '0',
  `gerarnumeroorcamentosequencial` tinyint(1) DEFAULT '0',
  `tabpadraointegracao` varchar(20) DEFAULT NULL,
  `turmaobrigatoriamovimentocontabil` tinyint(1) DEFAULT '0',
  `turmaobrigatoriacontasreceber` tinyint(1) DEFAULT '0',
  `turmaobrigatoriaatendimento` tinyint(1) DEFAULT '0',
  `bloquearcondicionalcomvalorzerado` tinyint(1) DEFAULT '1',
  `unicredagenciaremessa` varchar(10) DEFAULT NULL,
  `unicredparametromovimento` varchar(5) DEFAULT NULL,
  `ordemproducaoliberadaclientenovo` tinyint(1) DEFAULT '1',
  `importaxmldesconto` tinyint(1) DEFAULT '0',
  `removerboletodaremessaaosolicitarbaixa` tinyint(1) DEFAULT '0',
  `exibiragencianosatendimentos` tinyint(1) DEFAULT '0',
  `calcularpiscofinsnfcequandogeral` tinyint(1) DEFAULT '0',
  `exibirobservacaodocumentonosatendimentos` tinyint(1) DEFAULT '0',
  `exibirparcelalistacontas` tinyint(1) DEFAULT '0',
  `numerodaparcelaapartirdonumerodigitado` tinyint(1) DEFAULT '0',
  `bloquearatendimentostatusunido` tinyint(1) DEFAULT '0',
  `exibirsolicitarempresatransferencia` tinyint(1) DEFAULT '0',
  `numeronotaobrigatorioaofaturarvenda` tinyint(1) DEFAULT '0',
  `captionemailnfe` varchar(50) DEFAULT 'E-Mail Nfe:',
  `tipoprodutoouservicoaopesquisapelavenda` varchar(50) DEFAULT 'Todos',
  `percentualmulta` decimal(10,2) DEFAULT '0.00',
  `emailmaladiretaportaenvio` varchar(50) DEFAULT NULL,
  `emailmaladiretaservidorsmtp` varchar(50) DEFAULT NULL,
  `emailmaladiretaemail` varchar(50) DEFAULT NULL,
  `emailmaladiretausuario` varchar(50) DEFAULT NULL,
  `emailmaladiretasenha` varchar(50) DEFAULT NULL,
  `emailmaladiretaesteservidorrequerconexaosegura` tinyint(1) DEFAULT '0',
  `incluirnumeroreceitaagronomicaobsitemnota` tinyint(1) DEFAULT '0',
  `incluirespecificacoestecnicasprodutoobsitemnota` tinyint(1) DEFAULT '0',
  `concluircontatoagendaaofaturaratendimento` tinyint(1) DEFAULT '0',
  `diasalertaretornotrancamentoacademico` varchar(3) DEFAULT NULL,
  `diastransformarcondicionalempedido` varchar(3) DEFAULT NULL,
  `vendedoritemobrigatarioaoadicionaritem` tinyint(1) DEFAULT '0',
  `delaynfce` varchar(1) DEFAULT '0',
  `incluircodigoclienteaoemitirnfe` tinyint(1) DEFAULT '0',
  `calcularnotapeloncm` tinyint(1) DEFAULT '0',
  `statuspadraogestordeprocessos` varchar(10) DEFAULT NULL,
  `enviarxmlepdfemailprincipaleemailnfe` tinyint(1) DEFAULT '0',
  `textofichacadastral` varchar(5000) DEFAULT NULL,
  `exibirdataconclusaonaagenda` tinyint(1) DEFAULT '0',
  `processarlotescaixas` tinyint(1) DEFAULT '0',
  `incidenciapercentualpraticado3` varchar(20) DEFAULT 'Praticado',
  `valornasremessassaida` varchar(20) DEFAULT 'Praticado',
  `valornasoutrassaidas` varchar(20) DEFAULT 'Praticado',
  `mudartipodocumentoparanotaaogerar` tinyint(1) DEFAULT '0',
  `contacreditobanrisul` varchar(50) DEFAULT NULL,
  `dataentregaobrigatoriapedido` tinyint(1) DEFAULT '0',
  `emailcopiaxml` varchar(200) DEFAULT NULL,
  `localpadraoimagenssite` varchar(500) DEFAULT NULL,
  `unicreditipoimpressao` varchar(10) DEFAULT NULL,
  `baixarestoquemateriaprimadaproducao` tinyint(1) DEFAULT '1',
  `estoquepadrao` varchar(4) DEFAULT '0',
  `exibirfaturamentovalepresente` tinyint(1) DEFAULT '0',
  `baixarcreditoclienteautomaticamentenavenda` tinyint(1) DEFAULT '0',
  `monitorarfidelidade` tinyint(1) DEFAULT '0',
  `bloquearoscomplacajaexistenteemosaberta` tinyint(1) DEFAULT '0',
  `descontarcreditoclientenofaturamento` tinyint(1) DEFAULT '1',
  `emailtextopadrao` varchar(5000) DEFAULT NULL,
  `tiposdeeventosdatasdiversascolaborador` varchar(1000) DEFAULT NULL,
  `diasalertadatasdiversas` varchar(3) DEFAULT NULL,
  `gerenciarestoquepelofaturamentodosatendimentos` tinyint(1) DEFAULT '1',
  `marcaritemcomoentregueaofaturaratendimento` tinyint(1) DEFAULT '0',
  `permitirclicarumaunicaveztabelaigualtabelacd` tinyint(1) DEFAULT '0',
  `agendapadrao` varchar(10) DEFAULT 'Agenda 1',
  `chamarteladeprodutoaposclienteagenda2` tinyint(1) DEFAULT '1',
  `captiondocumentoorcamentos` varchar(50) DEFAULT NULL,
  `cadastrorapidoclientenacomanda` tinyint(1) DEFAULT '0',
  `relatoriorapidogestororcamentos` varchar(100) DEFAULT 'Status Atendimento',
  `freteobrigatoriaaosalvarvenda` tinyint(1) DEFAULT '0',
  `freteobrigatoriaaogerarpedido` tinyint(1) DEFAULT '0',
  `diasalertagestaoprocessos` varchar(3) DEFAULT NULL,
  `observacoesordemproducaoestrutural` varchar(2000) DEFAULT NULL,
  `codigostatusalertagestaoprocessos` varchar(11) DEFAULT NULL,
  `diasbloqueioclienteaposconsultaspc` varchar(3) DEFAULT NULL,
  `tipodocumentoparcelasaoclicaremcarne` varchar(11) DEFAULT NULL,
  `tipoprocessarestoque` varchar(20) DEFAULT 'OperaÃ§Ãµes',
  `permitirparcelaszeradas` tinyint(1) DEFAULT '0',
  `calcularcustomedioeultimocustoabamarkup` tinyint(1) DEFAULT '0',
  `bradescodatadesconto` varchar(2) DEFAULT NULL,
  `bradescopercentualdesconto` varchar(2) DEFAULT NULL,
  `hierarquiacontascaixabancorelatoriosauxilires` varchar(10) DEFAULT NULL,
  `diretoriopdfboletos` varchar(255) DEFAULT NULL,
  `sicoobcnabpreferencial` varchar(20) DEFAULT 'Cnab 400',
  `usarcontascontabeisdacontanabaixaautomatica` tinyint(1) DEFAULT '0',
  `diretoriodaatualizacao` varchar(250) DEFAULT NULL,
  `databaseatualizacao` varchar(20) DEFAULT NULL,
  `exibirvalorfretemovimentacoesprodutos` tinyint(1) DEFAULT '0',
  `exibirvaloripimovimentacoesprodutos` tinyint(1) DEFAULT '0',
  `imprimirbalcao` tinyint(1) DEFAULT '1',
  `gerarnotasisentasdefaturamento` tinyint(1) DEFAULT '0',
  `estoqueminimopadrao` varchar(10) DEFAULT '0',
  `gerarcodigoadicionalproduto` tinyint(1) DEFAULT '0',
  `usarcodigoadicionalparavendarapida` tinyint(1) DEFAULT '0',
  `gerarobspadraoordemserviÃ§oaoclicaremnovo` tinyint(1) DEFAULT '0',
  `empresapadraoapp` varchar(50) DEFAULT NULL,
  `ajustaestoqueacadaoperacaoentradasaida` tinyint(1) DEFAULT '1',
  `reimpressaocarnesomenteselecionadas` tinyint(1) DEFAULT '0',
  `textopadraoemailboleto` varchar(500) DEFAULT NULL,
  `alterareventosformaturasomentesefaturado` tinyint(1) DEFAULT '0',
  `gestaoorcamentosnumeropedido` tinyint(1) DEFAULT '1',
  `gestaoorcamentosnumeronota` tinyint(1) DEFAULT '1',
  `gestaoorcamentosagencia` tinyint(1) DEFAULT '0',
  `diretorioanexoscontatosocorrencias` varchar(200) DEFAULT NULL,
  `relatoriopadraocontasquitacao` varchar(150) DEFAULT 'Modelo 1',
  `buscarproximoitemaoadicionaritemnavenda` tinyint(1) DEFAULT '0',
  `cresolavalista` varchar(20) DEFAULT NULL,
  `boletopadraobradescocresol` varchar(20) DEFAULT 'Bradesco',
  `operacaopadraocreditocolaborador` varchar(50) DEFAULT NULL,
  `mdfelocalcarregamentopadrao` varchar(20) DEFAULT NULL,
  `mdfeveiculopadrao` varchar(20) DEFAULT NULL,
  `mdfecondutorpadrao` varchar(60) DEFAULT NULL,
  `mdfeconditorcpf` varchar(20) DEFAULT NULL,
  `mdferesponsavelseguro` varchar(60) DEFAULT NULL,
  `mdfenomeseguradora` varchar(60) DEFAULT NULL,
  `mdfecnpjresponsavelseguro` varchar(20) DEFAULT NULL,
  `mdfenumeroapolice` varchar(20) DEFAULT NULL,
  `mdfenumeroaverbacao` varchar(20) DEFAULT NULL,
  `mdfeciotpadrao` varchar(20) DEFAULT NULL,
  `mdfecnpjresponsavel` varchar(20) DEFAULT NULL,
  `faturaraoimprimircondicional` tinyint(1) DEFAULT '0',
  `atualizarcustoprodutoacabadoaoalterarprecomateriaprima` tinyint(1) DEFAULT '0',
  `banrisulcontatarifa` varchar(10) DEFAULT NULL,
  `criteriobalancaprodutosunidade` varchar(10) DEFAULT 'Valor',
  `consistenciaestoquerelatorioprodutos` tinyint(1) DEFAULT '1',
  `dataentregaobrigatoriaorcamento` tinyint(1) DEFAULT '0',
  `percentualperdanegociacaoouro` varchar(10) DEFAULT NULL,
  `valormaodeobranegociacaoouro` varchar(10) DEFAULT NULL,
  `exibirsubstatusnalistadeatendimentos` tinyint(1) DEFAULT '0',
  `substatusaoimportarpedidoapp` varchar(10) DEFAULT NULL,
  `boletobradescocontadebito` varchar(10) DEFAULT NULL,
  `colaboradoragendareservada` varchar(10) DEFAULT NULL,
  `produtoagendareservada` varchar(10) DEFAULT NULL,
  `exibircodigovendedoritensatendimentorapido` tinyint(1) DEFAULT '0',
  `exibirtrocadevendedoritens2` tinyint(1) DEFAULT '0',
  `exibirnumeroeditalnalistadeatendimentos` tinyint(1) DEFAULT '0',
  `sstabgeradormensalidade` varchar(2) DEFAULT '0',
  `relatoriosgerenciaispesquisaavancadahabilitada` tinyint(1) DEFAULT '0',
  `enviarboletospdfjuntocomxmlnota` tinyint(1) DEFAULT '0',
  `enviaremailnfeparatodosemailsdocolabroador` tinyint(1) DEFAULT '0',
  `processarlimitequandocondicional` tinyint(1) DEFAULT '1',
  `processarlimitequandoorcamento` tinyint(1) DEFAULT '1',
  `processarlimitequandonota` tinyint(1) DEFAULT '1',
  `modelodocumentoseparacao` varchar(50) DEFAULT NULL,
  `destinodocumentoseparacao` varchar(50) DEFAULT NULL,
  `imprimirdocumentoseparacaoaoimprimircondicional` tinyint(1) DEFAULT '0',
  `imprimirdocumentoseparacaoaoimprimirprevenda` tinyint(1) DEFAULT '0',
  `tabpadraodetalhescolaboradores` varchar(1) DEFAULT '0',
  `tabpadraodebitoautomatico` varchar(50) DEFAULT 'Banrisul',
  `conveniosicredidebitoautomatico` varchar(30) DEFAULT NULL,
  `calculotelaadicionarcomposicaoitem` varchar(30) DEFAULT 'Total',
  `enviarxmlpdfautomaticamente` tinyint(1) DEFAULT '1',
  `utilizarregraarredondamentolarguraaltura` tinyint(1) DEFAULT '0',
  `calcularimpostoretidoporst` tinyint(1) DEFAULT '0',
  `validarcamposclientesaoimprimirpedido` tinyint(1) DEFAULT '0',
  `baixarestoquecomposicaoitensatendimento` tinyint(1) DEFAULT '0',
  `solicitanteobrigatorioaosalvarvenda` tinyint(1) DEFAULT '0',
  `santandercarteira` varchar(3) DEFAULT NULL,
  `metodoinclusaoitemvenda` varchar(15) DEFAULT 'Adicionar Item',
  `numeroseapi` varchar(15) DEFAULT NULL,
  `confirmacaocarneaoimprimirnfce` tinyint(1) DEFAULT '0',
  `viasnfce` varchar(1) DEFAULT '1',
  `imprimirdeclaracaoprazonfce` varchar(1) DEFAULT '0',
  `exibirquantidadeproducaolistaprodutos` tinyint(1) DEFAULT '0',
  `enviarxmlcontabilidade` tinyint(1) DEFAULT '0',
  `baixarestoquesaidaspeloatendimento` tinyint(1) DEFAULT '1',
  `baixarestoqueprodutoscomcomposicao` tinyint(1) DEFAULT '1',
  `pisadestacasobsvenda` varchar(10) DEFAULT NULL,
  `cofinsadestacasobsvenda` varchar(10) DEFAULT NULL,
  `iradestacasobsvenda` varchar(10) DEFAULT NULL,
  `cssladestacasobsvenda` varchar(10) DEFAULT NULL,
  `gerarnumeronotadiretamente` tinyint(1) DEFAULT '0',
  `nfeinfdeclaracaoidigualaorps` tinyint(1) DEFAULT '1',
  `impressoraadicionalteleentrega` varchar(50) DEFAULT NULL,
  `processarprecosdecontratos` tinyint(1) DEFAULT '0',
  `usaraliquotaissdosservicos` tinyint(1) DEFAULT '1',
  `exibirsolicitarestoquetransferencia` tinyint(1) DEFAULT '0',
  `exibirestoquebaixa` tinyint(1) DEFAULT '0',
  `exibiritempedidonositens` tinyint(1) DEFAULT '0',
  `exibirquantidadeprodutoslistaatendimentos` tinyint(1) DEFAULT '0',
  `parametroestoqueminimo` varchar(10) DEFAULT 'Saldo',
  `mudartransportadopadraoaoselecionar` tinyint(1) DEFAULT '0',
  `santanderconta` varchar(10) DEFAULT NULL,
  `imprimiracrescimonfce` tinyint(1) DEFAULT '0',
  `numerocontrolenonumerodocumento` tinyint(1) DEFAULT '0',
  `unificargeracaodeboletos` tinyint(1) DEFAULT '0',
  `aosalvargerarnumeropedido` tinyint(1) DEFAULT '1',
  `aosalvarvalidarprazomedio` tinyint(1) DEFAULT '1',
  `aosalvarvalidarprodutospermitidosemcondi` tinyint(1) DEFAULT '1',
  `aosalvarvalidarlimitecliente` tinyint(1) DEFAULT '1',
  `aosalvarvalidardescontos` tinyint(1) DEFAULT '1',
  `aosalvaratualizarvendedoresnascontas` tinyint(1) DEFAULT '1',
  `aosalvarvalidardocumentoscolaboradores` tinyint(1) DEFAULT '1',
  `usarncmparacadastrartributacaoprodutos` tinyint(1) DEFAULT '0',
  `tabpadraomapadecarga` varchar(2) DEFAULT '0',
  `quitacaosomenteempresalogada` tinyint(1) DEFAULT '0',
  `movimentocontabeissomenteempresalogada` tinyint(1) DEFAULT '0',
  `faturarnaempresalogada` tinyint(1) DEFAULT '1',
  `tabelaigualtabelcdnastransferencias` tinyint(1) DEFAULT '0',
  `monitoradataalertaatendimento` tinyint(1) DEFAULT '0',
  `tributacaopadraonovocliente` varchar(30) DEFAULT NULL,
  `statusgestorprocessosaofaturaratendimento` varchar(11) DEFAULT NULL,
  `gerenciasubstatusdocumentoautomaticamente` tinyint(1) DEFAULT '0',
  `statusorcamentoaoimprimirpedido` varchar(50) DEFAULT NULL,
  `statusorcamentoaofaturaratendimento` varchar(50) DEFAULT NULL,
  `tipoestoqueporempresa` varchar(50) DEFAULT 'Bases Diferentes',
  `valoritemobrigatorioquandotransferencia` tinyint(1) DEFAULT '1',
  `lotesobrigatoriomovimentoestoque` tinyint(1) DEFAULT '0',
  `cidadenalistadeatendimentos` tinyint(1) DEFAULT '0',
  `envioboletosdoatendimento` varchar(50) DEFAULT 'Um Arquivo para Cada Boleto',
  `atualizarcustocomposicaoaofaturarcompra` tinyint(1) DEFAULT '0',
  `comandacodigoprodutointeiro` tinyint(1) DEFAULT '0',
  `drestatus` varchar(50) DEFAULT 'Faturado',
  `drecriteriodata` varchar(50) DEFAULT 'Faturamento',
  `dretotalizadorreceitaatendimentos` varchar(50) DEFAULT 'Total Nota',
  `totalizadorgraficosedashboard` varchar(50) DEFAULT 'Total Nota',
  `comandaverconsumoaofinalizarbalcao` tinyint(1) DEFAULT '1',
  `comandaimprimirbalcaoautomaticamente` tinyint(1) DEFAULT '0',
  `padraoimpressaoteleentrega` varchar(50) DEFAULT 'Crystal Report',
  `drecmvededucoesdereceitashabilitado` tinyint(1) DEFAULT '0',
  `contadeducoessobrevendas` varchar(50) DEFAULT NULL,
  `diretoriologounidanfe` varchar(250) DEFAULT NULL,
  `valormercadoriaigualacustoproducao` tinyint(1) DEFAULT '0',
  `numeronotaobrigatorioaofaturarcompra` tinyint(1) DEFAULT '0',
  `tabelaigualatabelacdaousartabelas` tinyint(1) DEFAULT '0',
  `exibirvariacoesproducaoadditens` tinyint(1) DEFAULT '0',
  `padraocomissaoauxiliaratendimento` varchar(50) DEFAULT '0',
  `padraocustofixoauxiliaratendimento` varchar(50) DEFAULT '0',
  `padraocustoadicionalauxiliaratendimento` varchar(50) DEFAULT '0',
  `prefixoaolercodigonoatendimento` varchar(10) DEFAULT NULL,
  `formatoleituracodigonoatendimento` varchar(10) DEFAULT NULL,
  `impressoraconfiguracaoboleto` varchar(50) DEFAULT NULL,
  `importaxmlean13` tinyint(1) DEFAULT '1',
  `boletosicredibyte` int(1) DEFAULT '2',
  `cancelaratendimentosmigradosdeoutrossistemas` int(1) DEFAULT '1',
  `solicitacaocompravalidacaoestoque` varchar(50) DEFAULT NULL,
  `totalmapacargaautomatico` varchar(1) DEFAULT '0',
  `codigorenasem` varchar(20) DEFAULT NULL,
  `responsaveltecnicodaempresa` varchar(20) DEFAULT NULL,
  `tabeladeprecosobrigatorianavenda` tinyint(1) DEFAULT '0',
  `impressorabalcao` varchar(50) DEFAULT NULL,
  `statuschequedevolvido` varchar(50) DEFAULT 'Aberta',
  `incluirlotesnoscamposespecificoslotes` tinyint(1) DEFAULT '1',
  `ecf` varchar(20) DEFAULT NULL,
  `adicionalp2gerargrade` varchar(20) DEFAULT NULL,
  `adicionalp3gerargarde` varchar(20) DEFAULT NULL,
  `adicionalp4gerargrade` varchar(20) DEFAULT NULL,
  `gestorostelefone` tinyint(1) DEFAULT '1',
  `gestorosocorrencia` tinyint(1) DEFAULT '1',
  `gestoroscontatado` tinyint(1) DEFAULT '1',
  `gestoroslaboratorio` tinyint(1) DEFAULT '1',
  `agruparcodigosimportarxml` tinyint(1) DEFAULT '0',
  `calcularbcstreticmsefetivo` tinyint(1) DEFAULT '1',
  `atendimentoexibiempresanalista` tinyint(1) DEFAULT '0',
  `atualizarincidenciasdecompradoprodutopelofornecedor` tinyint(1) DEFAULT '0',
  `balancaprefixocodigo` varchar(50) DEFAULT NULL,
  `tratardiferencacodigo` tinyint(1) DEFAULT '0',
  `entregadorobrigatorioteleentrega` tinyint(1) DEFAULT '0',
  `loteobrigatorionfe` tinyint(1) DEFAULT '0',
  `pagamentocontasexibirtodasempresas` tinyint(1) DEFAULT '0',
  `cnpjremessasicredi` varchar(20) DEFAULT NULL,
  `movimentarestoquemateriaprimakitnoatendimento` tinyint(1) DEFAULT '0',
  `movimentarestoquekitnoatendimento` tinyint(1) DEFAULT '1',
  `atualizardataalteracaoprodutoaoeditaratendimento` tinyint(1) DEFAULT '0',
  `sequenciadechequesaosimulacontas` tinyint(1) DEFAULT '1',
  `boletosicrediespecidocumento` varchar(50) DEFAULT NULL,
  `naturezaoperacaonfce` varchar(20) DEFAULT NULL,
  `bloquearmateriaprimajalancadanomesmosetor` tinyint(1) DEFAULT '0',
  `bloquearfaturamentoempresadiferenteaoatendimento` tinyint(1) DEFAULT '0',
  `solicitarobservacoescomandaaoconfirmarpedido` tinyint(1) DEFAULT '0',
  `exibirfaturamentoautorizado` tinyint(1) DEFAULT '0',
  `ncmitensatendimentos` tinyint(1) DEFAULT '0',
  `praticadopadraapp` varchar(15) DEFAULT NULL,
  `operacaosolicitacaocompra` varchar(20) DEFAULT 'Compra',
  `exibirvariacaoprodutoadditens` tinyint(1) DEFAULT '0',
  `marcapadrao` varchar(15) DEFAULT NULL,
  `cancelaatendimentoslacadossomenteapos` varchar(10) DEFAULT NULL,
  `documentopadraooutrasoperacoes` varchar(20) DEFAULT 'Nota',
  `aosalvaratualizarvendedoresnositens` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigoempresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.configuracoesdre
CREATE TABLE IF NOT EXISTS `configuracoesdre` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `hierarquia` varchar(50) DEFAULT NULL,
  `conta` varchar(50) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `orcamento` decimal(10,2) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `acumulado` decimal(10,2) DEFAULT NULL,
  `debitooucredito` varchar(50) DEFAULT NULL,
  `saldoanteriorcaixasebancos` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.configuracoesprodutoseservicos
CREATE TABLE IF NOT EXISTS `configuracoesprodutoseservicos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) DEFAULT '1',
  `colecao` tinyint(1) DEFAULT '1',
  `departamento` tinyint(1) DEFAULT '1',
  `cor` tinyint(1) DEFAULT '1',
  `tamanho` tinyint(1) DEFAULT '1',
  `marca` tinyint(1) DEFAULT '1',
  `aparecerpara` tinyint(1) DEFAULT '1',
  `ramodeatividade` tinyint(1) DEFAULT '1',
  `setor` tinyint(1) DEFAULT '1',
  `origem` tinyint(1) DEFAULT '1',
  `crt` tinyint(1) DEFAULT '1',
  `listaprecos` tinyint(1) DEFAULT '1',
  `embalagem` tinyint(1) DEFAULT '1',
  `pesol` tinyint(1) DEFAULT '1',
  `pesob` tinyint(1) DEFAULT '1',
  `centrodecusto` tinyint(1) DEFAULT '1',
  `referencia` tinyint(1) DEFAULT '1',
  `registroms` tinyint(1) DEFAULT '1',
  `codigoean` tinyint(1) DEFAULT '1',
  `codigoca` tinyint(1) DEFAULT '1',
  `codigoempresa` tinyint(1) DEFAULT '1',
  `entrega` tinyint(1) DEFAULT '1',
  `precopromocao` tinyint(1) DEFAULT '1',
  `quantidadeembalagem` tinyint(1) DEFAULT '1',
  `pesoembalagem` tinyint(1) DEFAULT '1',
  `genero` tinyint(1) DEFAULT '1',
  `codigoservico` tinyint(1) DEFAULT '1',
  `gruponfe` tinyint(1) DEFAULT '1',
  `tipoitem` tinyint(1) DEFAULT '1',
  `numeroserie` tinyint(1) DEFAULT '1',
  `foto` tinyint(1) DEFAULT '1',
  `especificacoestecnicas` tinyint(1) DEFAULT '1',
  `itemespecifico` tinyint(1) DEFAULT '1',
  `usaremcondicional` tinyint(1) DEFAULT '1',
  `cadastro` tinyint(1) DEFAULT '1',
  `alteracao` tinyint(1) DEFAULT '1',
  `validade` tinyint(1) DEFAULT '1',
  `datavalidade` tinyint(1) DEFAULT '1',
  `auxiliarpesquisa` tinyint(1) DEFAULT '1',
  `aplicacao` tinyint(1) DEFAULT '1',
  `localizacao` tinyint(1) DEFAULT '1',
  `codigoadicional` tinyint(1) DEFAULT '1',
  `area` tinyint(1) DEFAULT '1',
  `site` tinyint(1) DEFAULT '1',
  `descricaocolecao` varchar(50) DEFAULT NULL,
  `descricaodepartamento` varchar(50) DEFAULT NULL,
  `descricaocor` varchar(50) DEFAULT NULL,
  `descricaotamanho` varchar(50) DEFAULT NULL,
  `descricaomarca` varchar(50) DEFAULT NULL,
  `descricaoaparecerpara` varchar(50) DEFAULT NULL,
  `descricaoramodeatividade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.configuracoestres
CREATE TABLE IF NOT EXISTS `configuracoestres` (
  `codigoempresa` varchar(10) NOT NULL DEFAULT '0',
  `validarestoquefiscalaogerarnota` tinyint(1) DEFAULT '0',
  `valoroucustomercadoriadashboard` varchar(20) DEFAULT 'Custo Mercadoria',
  `gerarsequencialotesautomaticamente` tinyint(1) DEFAULT '0',
  `exibirnumeroordemservicolistaatendimentos` tinyint(1) DEFAULT '0',
  `creditarstretidanomarkup` tinyint(1) DEFAULT '0',
  `bloquearadditemempresadiferenteaoatendimento` tinyint(1) DEFAULT '0',
  `nomeprimeiracolunaacompanhamentoatendimento` varchar(50) DEFAULT '1',
  `nomesegundacolunaacompanhamentoatendimento` varchar(50) DEFAULT '2',
  `partilhaicmsnoxml` tinyint(1) DEFAULT '1',
  `criarnovacontaaodevolvercheque` tinyint(1) DEFAULT '0',
  `documentochequedevolvido` varchar(50) DEFAULT NULL,
  `imagemprodutonobanco` tinyint(1) DEFAULT '0',
  `incluirnumeroordemnotemnfe` tinyint(1) DEFAULT '0',
  `diasalertavencimentoloteproduto` varchar(3) DEFAULT '0',
  `casasdecimaisquantidadelote` varchar(3) DEFAULT '3',
  `exibircontratolistaatendimentos` tinyint(1) DEFAULT '0',
  `tamanhoimagensprodutos` varchar(50) DEFAULT '317x197',
  `sicredicontatarifa` varchar(10) DEFAULT NULL,
  `tokenecommercerokey` text,
  `tempominutossincronizacaoecommerce` int(11) DEFAULT NULL,
  `substatusaoimportarpedidosite` varchar(20) DEFAULT NULL,
  `validacoesecommerceprodutos` tinyint(1) DEFAULT '0',
  `viasteleentrega` varchar(2) DEFAULT '1',
  `importaxmlinfaditem` tinyint(1) DEFAULT '0',
  `classeconsumomodelo21` varchar(20) DEFAULT NULL,
  `tipoutilizacaomodelo21` varchar(20) DEFAULT NULL,
  `grupotensaomodelo21` varchar(20) DEFAULT NULL,
  `subclasseconsumomodelo21` varchar(20) DEFAULT NULL,
  `imprimirvalortabelaobsprodutonfce` tinyint(1) DEFAULT '0',
  `incluirnumeropedidoitemdescricaonota` tinyint(1) DEFAULT '0',
  `exibirprazoentregalistaatendimentos` tinyint(1) DEFAULT '0',
  `servicopadraoimportacaocte` varchar(20) DEFAULT NULL,
  `exibirordemdecompranalistadeatendimentos` tinyint(1) DEFAULT '0',
  `gerarcreditoprincipalfornecedoraofaturarvenda` tinyint(1) DEFAULT '0',
  `gerarcreditoprincipalfornecedorparagrupodeprodutos` varchar(20) DEFAULT NULL,
  `tokenapiapp` text,
  `tempominutossincronizacaoapp` int(11) DEFAULT NULL,
  `empresaaconsiderarnocalculoestoque` varchar(10) DEFAULT NULL,
  `colaboradortodosaoselecionaragencia` tinyint(1) DEFAULT '0',
  `boletostitularcomopagador` tinyint(1) DEFAULT '0',
  `diretorioimportacaoemmassa` varchar(255) DEFAULT 'C:\\ERP VersÃ¡til\\XML-Nfe',
  `ocorrenciaobrigatoriaitemenvioconserto` tinyint(1) DEFAULT '0',
  `receberemailxmljuntamentecomdestinatario` tinyint(1) DEFAULT '1',
  `ordempreferencialmateriaprimaprodutos` varchar(50) DEFAULT NULL,
  `sincronizacaoagendaapp` tinyint(1) DEFAULT '1',
  `sincronizacaoprodutosapp` tinyint(1) DEFAULT '1',
  `sincronizacaohistoricofinanceiroapp` tinyint(1) DEFAULT '1',
  `atualizarcadastroclienteacada` varchar(10) DEFAULT NULL,
  `textopadraoetiquetaempacotamento` varchar(5000) DEFAULT NULL,
  `diretorioxmldestinatario` varchar(500) DEFAULT 'C:\\ERP VersÃ¡til\\XML-Download\\',
  `corobrigatorio` tinyint(1) DEFAULT '0',
  `tamanhoobrigatorio` tinyint(1) DEFAULT '0',
  `utilizarcodigodovendedorcomoempresaapp` tinyint(1) DEFAULT '0',
  `usarconfiguracaoprodutoparacalcularqntitensatendimento` tinyint(1) DEFAULT '0',
  `atualizarmarkupaofaturartransferenciaentrada` tinyint(1) DEFAULT '0',
  `empresatransferencialistaatendimentos` tinyint(1) DEFAULT '0',
  `calcularestoqueaoabrirousalvarprodutos` tinyint(1) DEFAULT '1',
  `calcularestoquedisponivel` tinyint(1) DEFAULT '1',
  `gestorosveiculoeplaca` tinyint(1) DEFAULT '0',
  `gestoroscelular` tinyint(1) DEFAULT '1',
  `gestorostipoos` tinyint(1) DEFAULT '1',
  `gestorosfuncionario` tinyint(1) DEFAULT '0',
  `tabelaprecoslistacolaboradores` tinyint(1) DEFAULT '0',
  `produtoseservicospadraosite` tinyint(1) DEFAULT '0',
  `tabelaexplosaocomposicao` varchar(20) DEFAULT NULL,
  `salvareabriritemaoselecionarpeloproduto` tinyint(1) DEFAULT '0',
  `arredondamentovendas` varchar(20) DEFAULT NULL,
  `cnpjboletoscresol` varchar(20) DEFAULT '02.910.987/0001-07',
  `valorpadraoboletos` varchar(20) DEFAULT 'Valor Inicial',
  `observacoesrelatoriorapidocontas` varchar(200) DEFAULT NULL,
  `tokenmacro` varchar(200) DEFAULT NULL,
  `diretoriodeimagensdosprodutos` varchar(200) DEFAULT NULL,
  `consumerkeytray` varchar(200) DEFAULT NULL,
  `consumersecrettray` varchar(200) DEFAULT NULL,
  `codetray` varchar(200) DEFAULT NULL,
  `pausaautomaticaapontamentogestaoos` varchar(20) DEFAULT NULL,
  `gradepadraoprodutos` varchar(20) DEFAULT 'Grade 2',
  `salvaraoimprimircupom` tinyint(1) DEFAULT '0',
  `dreincluirmarcaprodutosvendidos` tinyint(1) DEFAULT '0',
  `titulaigualaclientesetitularembranco` tinyint(1) DEFAULT '0',
  `exibirempresalistadecontas` tinyint(1) DEFAULT '0',
  `desconsiderarvalormercadoriaaogerargrade` tinyint(1) DEFAULT '0',
  `drerecebimentos` tinyint(1) DEFAULT '0',
  `drepagamentoscompras` tinyint(1) DEFAULT '0',
  `drevendasavista` tinyint(1) DEFAULT '0',
  `drecomprasavista` tinyint(1) DEFAULT '0',
  `percentualadicionalparacustoreal` decimal(10,2) DEFAULT NULL,
  `manterpesquisaemtelasegundoplano` tinyint(1) DEFAULT '1',
  `versaorocky` varchar(10) DEFAULT 'V1',
  `tipomovimentocontabildocredito` varchar(20) DEFAULT 'Nenhum',
  `contaoperacaopadrao` varchar(10) DEFAULT NULL,
  `descricaovendedornoatendimento` varchar(50) DEFAULT NULL,
  `incluirprovisoesnasremessas` tinyint(1) DEFAULT '0',
  `diretorioimpressaoavisos` varchar(250) DEFAULT NULL,
  `modeloordemproducaoplanejamento` varchar(50) DEFAULT NULL,
  `exibirgenerocolaboradornalista` tinyint(1) DEFAULT '0',
  `exibirdatanascimentocolaboradornalista` tinyint(1) DEFAULT '0',
  `atualizarcmvevmvaoabrirdre` tinyint(1) DEFAULT '0',
  `usarcondicaopagamentopadraocliente` tinyint(1) DEFAULT '0',
  `reduzirtelasgrandes` tinyint(1) DEFAULT '0',
  `proporcaoimagemnobanco` varchar(3) DEFAULT '100',
  `gerarnumeronota` tinyint(1) DEFAULT '1',
  `exibirvalordescontoitensatendimentos` tinyint(1) DEFAULT '0',
  `calcularestoquepelosku` tinyint(1) DEFAULT '0',
  `ajustarcodigoecommerce` tinyint(1) DEFAULT '0',
  `praticadopadraoecommerce` varchar(20) DEFAULT 'Praticado 1',
  `validafaturamentoaoimprimircondicional` tinyint(1) DEFAULT '0',
  `validafaturamentoaoimprimirpedido` tinyint(1) DEFAULT '0',
  `usarsequenciacomocodigorocky` tinyint(1) DEFAULT '0',
  `horabackup` time DEFAULT '12:15:00',
  `custofixoporgrupo` tinyint(1) DEFAULT '0',
  `imprimirobservacoesdocumentorecibovenda` tinyint(1) DEFAULT '0',
  `tabelasempreigualatabelacomdescontoservicoitemnovo` tinyint(1) DEFAULT '0',
  `tipodescontomoedaadditens` varchar(50) DEFAULT 'Tabela',
  `definicaofusohorario` varchar(50) DEFAULT 'Servidor Versátil',
  `issretidopadraoprodutosnfsegv` tinyint(1) DEFAULT '0',
  `exibirnofaturamentoavalista` tinyint(1) DEFAULT '0',
  `difalparaprodutosnacionais` tinyint(1) DEFAULT '1',
  `vencimentocertificadodigital` date DEFAULT NULL,
  `metodogeracaonfse` varchar(50) DEFAULT '??? Nfse',
  `metodocalculolimitecolaborador` varchar(50) DEFAULT 'Manual',
  `numeroestoquedeposito` varchar(50) DEFAULT NULL,
  `calculardiferencaaliquota` tinyint(1) DEFAULT '1',
  `processarparcelasacrescimo` tinyint(1) DEFAULT '0',
  `drecontaspagarabertascompetencia` tinyint(1) DEFAULT '0',
  `drecontaspagarabertascompetenciadataparametro` varchar(50) DEFAULT 'Vencimento',
  `validacoesrocky` tinyint(1) DEFAULT '0',
  `lotesobrigatoriosaofaturaratendimento` tinyint(1) DEFAULT '0',
  `gerarnumeroordemaosalvar` tinyint(1) DEFAULT '0',
  `dashboardestoqueminimo` varchar(10) DEFAULT 'Saldo',
  `fabricacaoloteobrigatoria` tinyint(1) DEFAULT '0',
  `orcamentosemestoque` tinyint(1) DEFAULT '0',
  `imprimircodigocolaboradornosdocumentos` tinyint(1) DEFAULT '0',
  `exibirmensagensdealerta` tinyint(1) DEFAULT '0',
  `captiondocumentoprevenda` varchar(50) DEFAULT NULL,
  `tabelaigualatabelacdquandoservico` tinyint(1) DEFAULT '0',
  `observacoes` text,
  `tributacaoobrigatoriaclientes` tinyint(1) DEFAULT '0',
  `intervalodatasxmlfornecedores` int(5) DEFAULT '3',
  `selecaomultipladeprodutos` tinyint(1) DEFAULT '0',
  `unicredcodigobanco` varchar(10) DEFAULT NULL,
  `unicredagencia2` varchar(10) DEFAULT NULL,
  `unicredbeneficiario2` varchar(20) DEFAULT NULL,
  `unicredcarteira2` varchar(10) DEFAULT NULL,
  `unicredconta2` varchar(20) DEFAULT NULL,
  `unicredagenciaremessa2` varchar(10) DEFAULT NULL,
  `unicredparametromovimento2` varchar(10) DEFAULT NULL,
  `percentualpontuacao` decimal(10,0) DEFAULT NULL,
  `pontuacaoapartirde` varchar(20) DEFAULT NULL,
  `padraocontrolarlotesprodutos` tinyint(1) DEFAULT '1',
  `marcartodascontasaoselecionarclienteparaquitacao` tinyint(1) DEFAULT '0',
  `dreespecificarvendasavistaeprazo` tinyint(1) DEFAULT '0',
  `dreespecificarcomprasfake` tinyint(1) DEFAULT '0',
  `selecionarloteobrigatorio` tinyint(1) DEFAULT '0',
  `entradaprodutoproducaosemcomposicao` tinyint(1) DEFAULT '1',
  `padraosimularnotaatendimento` tinyint(1) DEFAULT '0',
  `naturezaoperacaoobrigatoriaaoimprimirdocumento` tinyint(1) DEFAULT '0',
  `calcularnotaaoimprimirdocumento` tinyint(1) DEFAULT '0',
  `exibirsetorlistaatendimentos` tinyint(1) DEFAULT '0',
  `exibirhoraagendadalistaatendimentos` tinyint(1) DEFAULT '0',
  `documentopadraomapadecarga` varchar(50) DEFAULT 'Todos',
  `operacaopadraomapadecarga` varchar(50) DEFAULT 'Todas',
  `statuspadraomapadecarga` varchar(50) DEFAULT 'Todos',
  `diretorioctedestinados` varchar(200) DEFAULT NULL,
  `fretepadraonfce` varchar(30) DEFAULT NULL,
  `maximodiasprimeirovencimento` varchar(10) DEFAULT '0',
  `contadebitoobrigatoriaquandocompra` tinyint(1) DEFAULT '0',
  `sicoobaceite` varchar(5) DEFAULT 'NÃO',
  `validaritemdevolucaovenda` tinyint(1) DEFAULT '0',
  `formaanexosatendimentos` varchar(50) DEFAULT 'Criar Cópia',
  `ecommercemagento` tinyint(1) DEFAULT '0',
  `vendedorobrigatorioaofaturarvenda` tinyint(1) DEFAULT '0',
  `exibircidadecolaboradorlistacontas` tinyint(1) DEFAULT '0',
  `setorobrigatorio` tinyint(1) DEFAULT '0',
  `validadecertificadodigital` date DEFAULT NULL,
  `descontardevolucoesdototaldanota` tinyint(1) DEFAULT '0',
  `descontardevolucoesdofaturamento` tinyint(1) DEFAULT '1',
  `backupautomatico` tinyint(1) DEFAULT '1',
  `tipodocumentosnaofaturadosfechamentocaixa` varchar(50) DEFAULT 'Condicional',
  `descontardevolucoesdosubtotal` tinyint(4) DEFAULT '0',
  `deduzirdevolucoesdabasededesconto` tinyint(4) DEFAULT '0',
  `colaboradorobrigatorioemitirnfce` tinyint(4) DEFAULT '0',
  `ultimapesquisarelatoriosconsolidados` varchar(1000) DEFAULT NULL,
  `integrarsomenteestoqueeprecoecommerce` tinyint(1) DEFAULT '0',
  `boletossicrediquitacaodataocorrencia` tinyint(1) DEFAULT '0',
  `diretorioanexosprodutos` varchar(500) DEFAULT NULL,
  `inativarprodutoscomestoquezeradoporgrupo` tinyint(1) DEFAULT '0',
  `validarsequenciasetoresproducao` tinyint(1) DEFAULT '1',
  `nomeconsumidornaobsnfce` tinyint(1) DEFAULT '0',
  `tipoemitentepadraomdfe` varchar(200) DEFAULT '1 - Prestador de Serviço de Transporte',
  `cbenefpadraoaogerardocumentofiscal` varchar(20) DEFAULT NULL,
  `tagfinanceiromanuallistaatendimentos` tinyint(1) DEFAULT '0',
  `tokendooca` text,
  `captionavistaatendimentos` varchar(50) DEFAULT NULL,
  `listaatendimentoscredito` tinyint(1) DEFAULT '0',
  `listaatendimentosentregue` tinyint(1) DEFAULT '0',
  `destacarnaturalidadecolaborador` tinyint(1) DEFAULT '0',
  `exibirvalorpagoetroconofaturamento` tinyint(1) DEFAULT '0',
  `atendimentononumerosemdocumentofiscal` tinyint(1) DEFAULT '1',
  `origempadraoatendimento` varchar(20) DEFAULT NULL,
  `diretorioedi` varchar(200) DEFAULT NULL,
  `documentopadraoatendimentonovo` varchar(200) DEFAULT 'Nota',
  `consultardadoscontribuinteapi` tinyint(1) DEFAULT '0',
  `listaatendimentosdevolucoes` tinyint(1) DEFAULT '0',
  `diretorioanexoscolaboradores` varchar(500) DEFAULT NULL,
  `contacontabilcomissao` varchar(20) DEFAULT NULL,
  `timerpedidosapp` decimal(10,2) DEFAULT '0.00',
  `realizarnovaavaliacaoapos` varchar(4) DEFAULT NULL,
  `cielocontadebito` varchar(20) DEFAULT NULL,
  `cielocontataxa` varchar(20) DEFAULT NULL,
  `nsuobrigatorioquandocartao` tinyint(1) DEFAULT '0',
  `calcularcustosomentemateriaprima` tinyint(1) DEFAULT '0',
  `enviaravisoemailaocancelarnota` tinyint(1) DEFAULT '0',
  `exibirpregaolistaatendimento` tinyint(1) DEFAULT '0',
  `exibirobslistaatendimento` tinyint(1) DEFAULT '0',
  `exibirpregaocontas` tinyint(1) DEFAULT '0',
  `exibirobsatendimentocontas` tinyint(1) DEFAULT '0',
  `contrapartidapadraomovimentocontabil` varchar(20) DEFAULT NULL,
  `addautomaticamenteaposquantidade` tinyint(1) DEFAULT '0',
  `quantidadeaposcodigo` tinyint(1) DEFAULT '0',
  `banrisulcnabpreferencial` varchar(10) DEFAULT 'Cnab 400',
  `token_vittel` varchar(50) DEFAULT NULL,
  `url_vittel` varchar(200) DEFAULT NULL,
  `contacontabildepreciacao` varchar(20) DEFAULT NULL,
  `enviaratendimentosapp` tinyint(1) DEFAULT '0',
  `configuracaoespecialparatotalizacaodevendas` tinyint(1) DEFAULT '0',
  `datahoraesmanual` tinyint(1) DEFAULT '0',
  `operacaografico` varchar(100) DEFAULT 'Venda',
  `calculardifalfcpenderecoentrega` tinyint(1) DEFAULT '0',
  `unificarestoquemesmabaseteclae` tinyint(1) DEFAULT '0',
  `creditocomoparcelaquitada` tinyint(1) DEFAULT '0',
  `percentualcashback` varchar(3) DEFAULT NULL,
  `validadecashback` varchar(3) DEFAULT NULL,
  `statusgrafico` varchar(200) DEFAULT 'Faturado',
  `documentografico` varchar(200) DEFAULT 'Todos',
  `datagrafico` varchar(200) DEFAULT 'Faturamento',
  `lucronocalculodocustorealmarkupdivisor` tinyint(1) DEFAULT '1',
  `drecreditos` tinyint(1) DEFAULT '0',
  `atendimentoenviardocumento` varchar(50) DEFAULT NULL,
  `atendimentoenviaroperacao` varchar(100) DEFAULT NULL,
  `atendimentoenviarstatus` varchar(50) DEFAULT NULL,
  `atendimentoenviarcolaboradordoatendimento` tinyint(1) DEFAULT '0',
  `linktray` varchar(250) DEFAULT NULL,
  `diferencialicmscomprasdozeporcento` tinyint(1) DEFAULT '1',
  `incluircomissaomarkup` tinyint(1) DEFAULT '1',
  `observacaousoeconsumo` tinyint(1) DEFAULT '1',
  `baixarcomposicaomateriaprimaproducaoatenivel` varchar(50) DEFAULT '1',
  `diretorioanexospet` varchar(500) DEFAULT NULL,
  `codigosequencialosequipamento` tinyint(1) DEFAULT '0',
  `metroquadradoadditens` tinyint(1) DEFAULT '0',
  `calculometroquadradoadditens` varchar(50) DEFAULT NULL,
  `modelochecklist` varchar(100) DEFAULT 'Modelo 01',
  `integracaocodigogiver` varchar(10) DEFAULT NULL,
  `textopadraoenviaremail` text,
  `assuntopadraoenviaremail` varchar(500) DEFAULT NULL,
  `atualizarvmvecmvitensaofaturar` tinyint(1) DEFAULT '0',
  `concatenarcoretamanhonadescricaodoprodutograde` tinyint(1) DEFAULT '1',
  `notificaraoabrirsistemaagendamentos` tinyint(1) DEFAULT '0',
  `integracaodiretorioarquivosgiver` varchar(500) DEFAULT NULL,
  `woocunsumerkey` varchar(100) DEFAULT NULL,
  `woocunsumersecret` varchar(100) DEFAULT NULL,
  `woourl` varchar(200) DEFAULT NULL,
  `exibircompetenciacontas` tinyint(1) DEFAULT '0',
  `numerocomprascustomedio` decimal(10,0) DEFAULT '0',
  `csosn103quandocst20` tinyint(1) DEFAULT '0',
  `usuariospc` varchar(50) DEFAULT NULL,
  `senhaspc` varchar(50) DEFAULT NULL,
  `naoatualizarvmvsevalorformenoraoatual` tinyint(1) DEFAULT '0',
  `tipoimpressaocomposicao` varchar(50) DEFAULT 'ComposiÃ§Ã£o Modelo 2',
  `sincronizarcustoentrefiliais` tinyint(1) DEFAULT '1',
  `preferenciasaldoinicialgestorfinanceiro` tinyint(1) DEFAULT '1',
  `enviarprodutosdaempresaapp` tinyint(1) DEFAULT '0',
  `exibirhoracadastroatendimento` tinyint(1) DEFAULT '0',
  `sicredidiasdesconto` varchar(3) DEFAULT '00',
  `sicredipercentualdesconto` varchar(3) DEFAULT '0',
  `selecionarpalavrachaveapospesquisarproduto` tinyint(1) DEFAULT '0',
  `aliquotasimplesservico` decimal(10,3) DEFAULT NULL,
  `aliquotasimplesindustrializados` decimal(10,3) DEFAULT NULL,
  `diretorioanexoscentrodecustos` varchar(500) DEFAULT NULL,
  `diretoriofotoscentrodecustos` varchar(500) DEFAULT NULL,
  `dataagendadaigualdatadodianovoatendimento` tinyint(1) DEFAULT '0',
  `id_loja_opencart` varchar(10) DEFAULT NULL,
  `url_opencart` varchar(200) DEFAULT NULL,
  `token_opencart` text,
  `tempo_opencart` int(11) DEFAULT '60',
  `praticado_padrao_opencart` varchar(50) DEFAULT 'Praticado 1',
  `calculostreduzido` tinyint(1) DEFAULT '0',
  `departamentopadrao` varchar(20) DEFAULT NULL,
  `bancobrasiltipoimpressao` varchar(20) DEFAULT 'Normal',
  `eanassociadoimportacaoxml` tinyint(1) DEFAULT '0',
  `gerarboletopelotipodedocumento` tinyint(1) DEFAULT '0',
  `gerarcreditodadevolucaodevenda` tinyint(1) DEFAULT '0',
  `valorinicialigualvalorquitacaoparcial` tinyint(1) DEFAULT '0',
  `qrcoderecebimento` longblob,
  `parcelasaprazocomanda` tinyint(1) DEFAULT '0',
  `adicionarnovareferencia` tinyint(1) DEFAULT '0',
  `itenspesquisaprodutos` text,
  `exibirplacaatendimento` tinyint(1) DEFAULT '0',
  `usarcodigocolaboradorapp` tinyint(1) DEFAULT '0',
  `abrirteladeenviodoxmlaogerarnota` tinyint(1) DEFAULT '0',
  `atualizardescontoproduto` tinyint(1) DEFAULT '0',
  `boletosicredimensagem` varchar(500) DEFAULT NULL,
  `exibirvalidadenalistadeprodutos` tinyint(1) DEFAULT '0',
  `exibirprazodeentreganalistadeatendimentos` tinyint(1) DEFAULT '0',
  `bloquearlotesduplicados` tinyint(1) DEFAULT '0',
  `tokenlojasintegradas` varchar(50) DEFAULT NULL,
  `sicoobconvenio` varchar(20) DEFAULT NULL,
  `descricaopadraonfse` varchar(150) DEFAULT NULL,
  `variacaoobrigatoriaadditens` tinyint(1) DEFAULT '1',
  `exibirpedidoappnalista` tinyint(1) DEFAULT '0',
  `exibiralteracaocolaborador` tinyint(1) DEFAULT '0',
  `exibirunidadeequantidadebaixa` tinyint(1) DEFAULT '0',
  `percentualfunrural` decimal(20,6) DEFAULT '0.000000',
  `combustivelpadraonovoveiculocolaborador` varchar(50) DEFAULT 'Gasolina',
  `dataexecucaoigualdatadodianovoatendimento` tinyint(1) DEFAULT '0',
  `statuspadraoposvendas` varchar(50) DEFAULT 'ConcluÃ­do',
  `atualizarreducaobcicmsaoimportarxml` tinyint(1) DEFAULT '0',
  `calcularvalordoitemaoselecionarvariacoes` tinyint(1) DEFAULT '1',
  `complementardescricaodoitemaoselecionarvariacoes` tinyint(1) DEFAULT '1',
  `exibirbaixamateriaprimalistaatendimentos` tinyint(1) DEFAULT '0',
  `envionfcesincrono` tinyint(1) DEFAULT '0',
  `concluirsolicitacaodecompraaofaturarcompra` tinyint(1) DEFAULT '0',
  `exibirprevisaoentradanalistadeprodutos` tinyint(1) DEFAULT '0',
  `tempoobrigatorionaos` tinyint(1) DEFAULT '0',
  `reateiogrupocentrodecustos` tinyint(1) DEFAULT '0',
  `padraodalistacentrodecusto` varchar(20) DEFAULT NULL,
  `comandaddd` varchar(4) DEFAULT '(54)',
  `regraicms` varchar(20) DEFAULT NULL,
  `regraipi` varchar(20) DEFAULT NULL,
  `regrapis` varchar(20) DEFAULT NULL,
  `regracofins` varchar(20) DEFAULT NULL,
  `tipocontribuintecontribuinte` varchar(20) DEFAULT NULL,
  `tipocontribuintenaocontribuinte` varchar(20) DEFAULT NULL,
  `calcularnotaregrasfiscais` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigoempresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.configuracoesvera
CREATE TABLE IF NOT EXISTS `configuracoesvera` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(20) DEFAULT NULL,
  `nomerazaosocial` varchar(200) DEFAULT NULL,
  `faturamento` tinyint(1) DEFAULT '1',
  `customercadoriavendida` tinyint(1) DEFAULT '1',
  `lucrobruto` tinyint(1) DEFAULT '1',
  `devolucoesdevenda` tinyint(1) DEFAULT '1',
  `vendas` tinyint(1) DEFAULT '1',
  `ticketmedio` tinyint(1) DEFAULT '1',
  `topvendedor` tinyint(1) DEFAULT '1',
  `topcliente` tinyint(1) DEFAULT '1',
  `novosclientes` tinyint(1) DEFAULT '1',
  `novosfornecedores` tinyint(1) DEFAULT '1',
  `condicionaisdodia` tinyint(1) DEFAULT '1',
  `pedidosdodia` tinyint(1) DEFAULT '1',
  `orcamentosdodia` tinyint(1) DEFAULT '1',
  `contaspagasnodia` tinyint(1) DEFAULT '1',
  `contasrecebidasdodia` tinyint(1) DEFAULT '1',
  `totaldepedidosnaofaturados` tinyint(1) DEFAULT '1',
  `totaldecondicionaisnaofaturados` tinyint(1) DEFAULT '1',
  `totaldeorcamentosemnegociacao` tinyint(1) DEFAULT '1',
  `totaldecontasapagar` tinyint(1) DEFAULT '1',
  `totaldecontasareceber` tinyint(1) DEFAULT '1',
  `saldoemcaixaebancos` tinyint(1) DEFAULT '1',
  `receitaliquidadomesatual` tinyint(1) DEFAULT '1',
  `contasapagarproximos30dias` tinyint(1) DEFAULT '1',
  `contasapagarproximos60dias` tinyint(1) DEFAULT '1',
  `contasapagarproximos90dias` tinyint(1) DEFAULT '1',
  `contasareceberproximos30dias` tinyint(1) DEFAULT '1',
  `contasareceberproximos60dias` tinyint(1) DEFAULT '1',
  `contasareceberproximos90dias` tinyint(1) DEFAULT '1',
  `receitaliquidaultimos12meses` tinyint(1) DEFAULT '1',
  `vos` tinyint(1) DEFAULT '0',
  `enviarautomaticamente` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.consultanfedestinatario
CREATE TABLE IF NOT EXISTS `consultanfedestinatario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `dfe` varchar(20) NOT NULL DEFAULT 'NF-e',
  `cnpj` varchar(50) DEFAULT NULL,
  `xnome` varchar(200) DEFAULT NULL,
  `ie` varchar(20) DEFAULT NULL,
  `dataem` date NOT NULL,
  `horaem` time NOT NULL,
  `vnf` decimal(10,2) NOT NULL DEFAULT '0.00',
  `chnfe` varchar(50) NOT NULL,
  `nnfe` varchar(50) NOT NULL,
  `nprot` varchar(50) NOT NULL DEFAULT '',
  `csitnfe` tinyint(1) NOT NULL DEFAULT '0',
  `datacadastro` date NOT NULL,
  `nsuconsulta` varchar(50) NOT NULL DEFAULT '',
  `ctetomador` varchar(50) DEFAULT '',
  `empresa` varchar(10) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contas
CREATE TABLE IF NOT EXISTS `contas` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emissao` date DEFAULT NULL,
  `horaemissao` time DEFAULT NULL,
  `colaborador` varchar(20) DEFAULT NULL,
  `numerodocumento` varchar(50) DEFAULT NULL,
  `notaorigem` varchar(50) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `quitacao` date DEFAULT NULL,
  `origem` varchar(25) DEFAULT NULL,
  `parcela` varchar(25) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `vendedor` varchar(10) DEFAULT NULL,
  `atendimento` varchar(35) DEFAULT NULL,
  `tipodocumento` varchar(10) DEFAULT NULL,
  `formaquitacao` varchar(25) DEFAULT NULL,
  `tipooperacao` varchar(25) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `valorinicial` decimal(10,2) DEFAULT NULL,
  `valorquitacao` decimal(10,2) DEFAULT NULL,
  `multa` decimal(10,2) DEFAULT NULL,
  `valorjuros` decimal(10,2) DEFAULT NULL,
  `valordesconto` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `percentualcomissao` decimal(10,2) DEFAULT NULL,
  `valorcomissao` decimal(10,2) DEFAULT NULL,
  `valorprodutos` decimal(10,2) DEFAULT NULL,
  `comissaopaga` varchar(3) DEFAULT NULL,
  `localcobranca` varchar(10) DEFAULT NULL,
  `tipodaconta` varchar(10) DEFAULT NULL,
  `cartorio` decimal(10,2) DEFAULT NULL,
  `outras` decimal(10,2) DEFAULT NULL,
  `selecionada` varchar(1) DEFAULT NULL COMMENT 'usado na quitacao',
  `diadasemanavencimento` varchar(45) DEFAULT NULL,
  `centrodecusto` varchar(10) DEFAULT NULL,
  `empresa` varchar(10) DEFAULT '1',
  `contacontabil` varchar(10) DEFAULT NULL,
  `seunumerosicredi` varchar(25) DEFAULT NULL,
  `formatura` varchar(20) DEFAULT NULL,
  `boletogerado` varchar(3) DEFAULT NULL,
  `contaquitacao` varchar(20) DEFAULT NULL,
  `recebido` varchar(20) DEFAULT NULL,
  `boletobanco` varchar(100) DEFAULT NULL,
  `boletonossonumero` varchar(100) DEFAULT NULL,
  `boletoinformativo` varchar(100) DEFAULT NULL,
  `boletonumeroremessa` varchar(100) DEFAULT NULL,
  `boletonumeroretorno` varchar(100) DEFAULT NULL,
  `boletolinhadigitavel` varchar(100) DEFAULT NULL,
  `boletocodigodebarras` varchar(100) DEFAULT NULL,
  `boletotipocobranca` varchar(100) DEFAULT NULL,
  `boletodataprocessamento` date DEFAULT NULL,
  `statusdocheque` varchar(50) DEFAULT 'Caixa',
  `dataantecipacao` date DEFAULT NULL,
  `cultura` varchar(50) DEFAULT NULL,
  `boletodiasprotesto` varchar(10) DEFAULT NULL,
  `boletomulta` varchar(10) DEFAULT NULL,
  `boletojuros` varchar(10) DEFAULT NULL,
  `incc` decimal(10,3) DEFAULT NULL,
  `inccpago` decimal(10,3) DEFAULT NULL,
  `valorservicos` decimal(10,2) DEFAULT NULL,
  `perspectivaderecebimento` varchar(3) DEFAULT 'Sim',
  `motivocancelamento` varchar(100) DEFAULT NULL,
  `contrapartida` varchar(20) DEFAULT NULL,
  `valortodosservicos` decimal(10,2) DEFAULT NULL,
  `boletosolicitacaobaixa` varchar(50) DEFAULT NULL,
  `remessasolicitacaobaixa` varchar(50) DEFAULT NULL,
  `contaorigemrenegociada` varchar(100) DEFAULT NULL,
  `boletotipoimpressao` varchar(50) DEFAULT NULL,
  `motivodevolucao` varchar(50) DEFAULT NULL,
  `motivoestorno` varchar(50) DEFAULT NULL,
  `datadevolucao` date DEFAULT NULL,
  `dataestorno` date DEFAULT NULL,
  `destacar` varchar(50) DEFAULT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `atendimentorelacionado` varchar(50) DEFAULT NULL,
  `titular` varchar(50) DEFAULT NULL,
  `pedido` varchar(50) DEFAULT NULL,
  `tmpvalor` decimal(10,2) DEFAULT NULL,
  `tmpcodigoconta` varchar(50) DEFAULT NULL,
  `boletonossonumero2` varchar(50) DEFAULT NULL,
  `selecionado` varchar(1) DEFAULT NULL COMMENT 'usado para selecao geral',
  `boletopagador` varchar(20) DEFAULT NULL COMMENT 'Titular - Colaborador',
  `boletodiasdevolucao` varchar(10) DEFAULT NULL,
  `boletonumeroremessabaixa` varchar(100) DEFAULT NULL,
  `avalista` varchar(50) DEFAULT NULL,
  `tmpnossonumero` varchar(20) DEFAULT NULL,
  `origem2` varchar(20) DEFAULT NULL COMMENT 'Curso - Material',
  `turma` varchar(20) DEFAULT NULL,
  `tmpdescontoatendimento` decimal(10,2) DEFAULT NULL,
  `boletosubmodalidade` varchar(50) DEFAULT NULL,
  `seunumero` varchar(20) DEFAULT NULL,
  `descricaoservico` varchar(35) DEFAULT NULL,
  `mapadecarga` varchar(20) DEFAULT NULL,
  `valepresente` varchar(20) DEFAULT NULL,
  `historico` varchar(20) DEFAULT NULL,
  `boletoespeciedocumento` varchar(50) DEFAULT NULL,
  `datahoraemissao` datetime DEFAULT NULL,
  `boletodiasnegativar` varchar(2) DEFAULT NULL,
  `valororiginal` decimal(10,2) DEFAULT NULL,
  `datacancelamento` date DEFAULT NULL,
  `datajuridico` date DEFAULT NULL,
  `mora` decimal(10,2) DEFAULT NULL,
  `competencia` date DEFAULT NULL,
  `statusboleto` varchar(150) DEFAULT NULL,
  `codigoapp` varchar(20) DEFAULT NULL,
  `atendimentoapp` varchar(20) DEFAULT NULL,
  `observacoes2` varchar(5000) DEFAULT NULL,
  `dataoriginal` date DEFAULT NULL,
  `nsu` varchar(50) DEFAULT NULL,
  `boletopercentualdesconto` varchar(3) DEFAULT '0',
  `codigopdv` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `vendedor` (`vendedor`),
  KEY `atendimento` (`atendimento`),
  KEY `tipodocumento` (`tipodocumento`),
  KEY `formaquitacao` (`formaquitacao`),
  KEY `tipooperacao` (`tipooperacao`),
  KEY `localcobranca` (`localcobranca`),
  KEY `tipodaconta` (`tipodaconta`),
  KEY `centrodecusto` (`centrodecusto`),
  KEY `empresa` (`empresa`),
  KEY `contacontabil` (`contacontabil`),
  KEY `colaborador` (`colaborador`)
) ENGINE=InnoDB AUTO_INCREMENT=5361551 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contasatendimentos
CREATE TABLE IF NOT EXISTS `contasatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoconta` varchar(20) DEFAULT NULL,
  `codigoatendimento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contasbancarias
CREATE TABLE IF NOT EXISTS `contasbancarias` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nomedobanco` varchar(50) DEFAULT NULL,
  `agencia` varchar(10) DEFAULT NULL,
  `conta` varchar(20) DEFAULT NULL,
  `convenio` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contascontabeis
CREATE TABLE IF NOT EXISTS `contascontabeis` (
  `codigo` varchar(25) NOT NULL DEFAULT '',
  `contacontabil` varchar(200) DEFAULT NULL,
  `tipo` varchar(25) DEFAULT NULL,
  `colaborador` varchar(20) DEFAULT NULL,
  `hierarquia` varchar(200) DEFAULT NULL,
  `hierarquiacomformatacao` varchar(200) DEFAULT NULL,
  `hierarquicomformatacaocontacontabil` varchar(200) DEFAULT NULL,
  `codigointegracaooutrossistemas` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Ativo',
  `datainclusao` date DEFAULT NULL,
  `naturezadaconta` varchar(30) DEFAULT NULL,
  `tipodaconta` varchar(20) DEFAULT NULL,
  `niveldaconta` varchar(20) DEFAULT NULL,
  `codigocontareceitafederal` varchar(30) DEFAULT NULL,
  `exibirnodre` tinyint(1) DEFAULT '1',
  `bancopadraoboletos` varchar(50) DEFAULT NULL,
  `exibirdrenascomprasfake` tinyint(1) DEFAULT '1',
  `nomebancoarquivocielo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contascontabeisprojecao
CREATE TABLE IF NOT EXISTS `contascontabeisprojecao` (
  `codigo` int(13) NOT NULL AUTO_INCREMENT,
  `contacontabil` varchar(13) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `dataprevisao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contascontabeisrateio
CREATE TABLE IF NOT EXISTS `contascontabeisrateio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contacontabil` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `percentual` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contascontabeisusuarios
CREATE TABLE IF NOT EXISTS `contascontabeisusuarios` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `contacontabil` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contasencargos
CREATE TABLE IF NOT EXISTS `contasencargos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoconta` varchar(11) DEFAULT NULL,
  `codigodocumento` varchar(11) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contasmapadecarga
CREATE TABLE IF NOT EXISTS `contasmapadecarga` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mapa` varchar(50) DEFAULT NULL,
  `conta` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT 'Acertos',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contasrateio
CREATE TABLE IF NOT EXISTS `contasrateio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `contacontabil` varchar(50) DEFAULT NULL,
  `percentual` decimal(10,5) DEFAULT NULL,
  `conta` varchar(50) DEFAULT NULL,
  `grupoorcamentocentrodecusto` varchar(20) DEFAULT NULL,
  `tmpcodigoconta` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contastmp
CREATE TABLE IF NOT EXISTS `contastmp` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emissao` date DEFAULT NULL,
  `horaemissao` time DEFAULT NULL,
  `colaborador` varchar(20) DEFAULT NULL,
  `numerodocumento` varchar(25) DEFAULT NULL,
  `notaorigem` varchar(25) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `quitacao` date DEFAULT NULL,
  `origem` varchar(25) DEFAULT NULL,
  `parcela` varchar(25) DEFAULT NULL,
  `observacoes` varchar(300) DEFAULT NULL,
  `vendedor` varchar(10) DEFAULT NULL,
  `atendimento` varchar(25) DEFAULT NULL,
  `tipodocumento` varchar(10) DEFAULT NULL,
  `formaquitacao` varchar(25) DEFAULT NULL,
  `tipooperacao` varchar(25) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `valorinicial` decimal(10,2) DEFAULT NULL,
  `valorquitacao` decimal(10,2) DEFAULT NULL,
  `multa` decimal(10,2) DEFAULT NULL,
  `valorjuros` decimal(10,2) DEFAULT NULL,
  `valordesconto` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `percentualcomissao` decimal(10,2) DEFAULT NULL,
  `valorcomissao` decimal(10,2) DEFAULT NULL,
  `valorprodutos` decimal(10,2) DEFAULT NULL,
  `comissaopaga` varchar(3) DEFAULT NULL,
  `localcobranca` varchar(10) DEFAULT NULL,
  `tipodaconta` varchar(10) DEFAULT NULL,
  `cartorio` decimal(10,2) DEFAULT NULL,
  `outras` decimal(10,2) DEFAULT NULL,
  `selecionada` varchar(1) DEFAULT NULL,
  `diadasemanavencimento` varchar(45) DEFAULT NULL,
  `centrodecusto` varchar(10) DEFAULT NULL,
  `empresa` varchar(10) DEFAULT NULL,
  `contacontabil` varchar(10) DEFAULT NULL,
  `seunumerosicredi` varchar(25) DEFAULT NULL,
  `formatura` varchar(20) DEFAULT NULL,
  `boletogerado` varchar(3) DEFAULT NULL,
  `contaquitacao` varchar(20) DEFAULT NULL,
  `recebido` varchar(20) DEFAULT NULL,
  `boletobanco` varchar(100) DEFAULT NULL,
  `boletonossonumero` varchar(100) DEFAULT NULL,
  `boletoinformativo` varchar(100) DEFAULT NULL,
  `boletonumeroremessa` varchar(100) DEFAULT NULL,
  `boletonumeroretorno` varchar(100) DEFAULT NULL,
  `boletolinhadigitavel` varchar(100) DEFAULT NULL,
  `boletocodigodebarras` varchar(100) DEFAULT NULL,
  `boletotipocobranca` varchar(100) DEFAULT NULL,
  `boletodataprocessamento` date DEFAULT NULL,
  `statusdocheque` varchar(50) DEFAULT 'Caixa',
  `dataantecipacao` date DEFAULT NULL,
  `cultura` varchar(50) DEFAULT NULL,
  `boletodiasprotesto` varchar(10) DEFAULT NULL,
  `boletomulta` varchar(10) DEFAULT NULL,
  `boletojuros` varchar(10) DEFAULT NULL,
  `incc` decimal(10,3) DEFAULT NULL,
  `inccpago` decimal(10,3) DEFAULT NULL,
  `valorservicos` decimal(10,2) DEFAULT NULL,
  `perspectivaderecebimento` varchar(3) DEFAULT 'Sim',
  `motivocancelamento` varchar(100) DEFAULT NULL,
  `contrapartida` varchar(20) DEFAULT NULL,
  `valortodosservicos` decimal(10,2) DEFAULT NULL,
  `boletosolicitacaobaixa` varchar(50) DEFAULT NULL,
  `remessasolicitacaobaixa` varchar(50) DEFAULT NULL,
  `contaorigemrenegociada` varchar(100) DEFAULT NULL,
  `boletotipoimpressao` varchar(50) DEFAULT NULL,
  `motivodevolucao` varchar(50) DEFAULT NULL,
  `motivoestorno` varchar(50) DEFAULT NULL,
  `datadevolucao` date DEFAULT NULL,
  `dataestorno` date DEFAULT NULL,
  `destacar` varchar(50) DEFAULT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `atendimentorelacionado` varchar(50) DEFAULT NULL,
  `titular` varchar(50) DEFAULT NULL,
  `pedido` varchar(50) DEFAULT NULL,
  `tmpvalor` decimal(10,2) DEFAULT NULL,
  `tmpcodigoconta` varchar(50) DEFAULT NULL,
  `valorextenso` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contastmpparcial
CREATE TABLE IF NOT EXISTS `contastmpparcial` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) DEFAULT NULL,
  `vencimento` varchar(50) DEFAULT NULL,
  `valortotal` decimal(15,2) DEFAULT NULL,
  `valorpago` decimal(15,2) DEFAULT NULL,
  `saldo` decimal(15,2) DEFAULT NULL,
  `emissao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contatos
CREATE TABLE IF NOT EXISTS `contatos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `formadecontato` varchar(45) DEFAULT NULL,
  `tipodecontato` varchar(45) DEFAULT NULL,
  `statusdocontato` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ocorrencia` varchar(10000) DEFAULT NULL,
  `diagnostico` varchar(10000) DEFAULT NULL,
  `colaborador` varchar(45) DEFAULT NULL,
  `negociacaoefetivada` varchar(3) DEFAULT NULL,
  `protocolo` varchar(45) DEFAULT NULL,
  `imovel` varchar(20) DEFAULT NULL,
  `observacoes` varchar(300) DEFAULT NULL,
  `atendimento` varchar(20) DEFAULT NULL,
  `tipoocorrencia` varchar(20) DEFAULT NULL,
  `usuariolancamento` varchar(50) DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dataconclusao` date DEFAULT NULL,
  `horaconclusao` time DEFAULT NULL,
  `codigoetapa` varchar(50) DEFAULT NULL,
  `equipamento` varchar(50) DEFAULT NULL,
  `dataadicional` date DEFAULT NULL,
  `urgente` tinyint(1) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `destacar` varchar(20) DEFAULT NULL,
  `meavisarsenaoconcluido` date DEFAULT NULL,
  `ultimanotificacaonaoconcluido` date DEFAULT NULL,
  `acompanhar` tinyint(1) DEFAULT '0',
  `cincowdoish` varchar(15) DEFAULT NULL,
  `itematendimento` varchar(20) DEFAULT NULL,
  `exibirnaagenda` tinyint(1) DEFAULT '1',
  `tiposervico` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `alerta` tinyint(1) DEFAULT '0',
  `alertaexibido` tinyint(1) DEFAULT '0',
  `codigoconta` varchar(50) DEFAULT NULL,
  `dataalteracao` date DEFAULT NULL,
  `horaalteracao` time DEFAULT NULL,
  `appdatasincronizadoem` date DEFAULT NULL,
  `apphorasincronizadoem` time DEFAULT NULL,
  `codigoapp` varchar(50) DEFAULT NULL,
  `substatus` varchar(100) DEFAULT NULL,
  `estimativa` date DEFAULT NULL,
  `progresso` int(10) DEFAULT NULL,
  `prioridade` varchar(50) DEFAULT NULL,
  `contatopai` varchar(50) DEFAULT NULL,
  `gestaocontatos` tinyint(1) DEFAULT '0',
  `projeto` varchar(20) DEFAULT 'NÃO',
  `testado` varchar(20) DEFAULT 'NÃO',
  `liberado` varchar(20) DEFAULT 'NÃO',
  `atualizado` varchar(20) DEFAULT 'NÃO',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=609764 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contatosdiversos
CREATE TABLE IF NOT EXISTS `contatosdiversos` (
  `codigo` varchar(20) NOT NULL,
  `nome` varchar(130) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `observacoes` varchar(130) DEFAULT NULL,
  `endereco` varchar(65) DEFAULT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `complemento` varchar(25) DEFAULT NULL,
  `bairro` varchar(65) DEFAULT NULL,
  `cidade` varchar(10) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contatositens
CREATE TABLE IF NOT EXISTS `contatositens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contato` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `valorunitario` decimal(10,4) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `unidade` varchar(50) DEFAULT NULL,
  `total` decimal(10,4) DEFAULT NULL,
  `custounitario` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contatosocorrencias
CREATE TABLE IF NOT EXISTS `contatosocorrencias` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(10000) DEFAULT NULL,
  `protocolo` varchar(50) DEFAULT NULL,
  `codigoapp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=155163 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contatosocorrenciasanexos
CREATE TABLE IF NOT EXISTS `contatosocorrenciasanexos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contatoocorrencia` varchar(50) DEFAULT NULL,
  `nomeanexo` varchar(50) DEFAULT NULL,
  `arquivo` varchar(200) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `protocolo` varchar(50) DEFAULT NULL,
  `numeroanexo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contatosusuarios
CREATE TABLE IF NOT EXISTS `contatosusuarios` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contato` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contratosdejogos
CREATE TABLE IF NOT EXISTS `contratosdejogos` (
  `codigo` varchar(10) DEFAULT NULL,
  `codigocliente` varchar(20) DEFAULT NULL,
  `codigoequipamento` varchar(20) DEFAULT NULL,
  `datalancamento` date DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `instalacao` date DEFAULT NULL,
  `relogioinicial` varchar(14) DEFAULT NULL,
  `mesatipocontrato` varchar(25) DEFAULT NULL,
  `mesavalorficha` decimal(10,2) DEFAULT NULL,
  `mesavalorfichacobrado` decimal(10,2) DEFAULT NULL,
  `mesavalormensal` decimal(10,2) DEFAULT NULL,
  `jukeboxvalormusica` decimal(10,2) DEFAULT NULL,
  `jukeboxpercentualcobrado` decimal(10,2) DEFAULT NULL,
  `jukeboxregracomissao` varchar(60) DEFAULT NULL,
  `observacoes` varchar(300) DEFAULT NULL,
  `tipocontrato` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contratosdejogostrocas
CREATE TABLE IF NOT EXISTS `contratosdejogostrocas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contrato` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `codigoitem` varchar(50) DEFAULT NULL,
  `descricaoitem` varchar(200) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contratosimoveis
CREATE TABLE IF NOT EXISTS `contratosimoveis` (
  `codigo` varchar(11) NOT NULL,
  `colaborador` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `imovel` varchar(250) DEFAULT NULL,
  `valorimovel` decimal(14,4) DEFAULT NULL,
  `indice` varchar(10) DEFAULT NULL,
  `quantidadeindice` decimal(10,4) DEFAULT NULL,
  `parcelas` decimal(10,4) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `indicedata` decimal(10,4) DEFAULT NULL,
  `indiceatual` decimal(10,4) DEFAULT NULL,
  `numeroapartamento` varchar(6) DEFAULT NULL,
  `numeroboxgaragem` varchar(6) DEFAULT NULL,
  `pavimento` varchar(6) DEFAULT NULL,
  `areaprivativa` varchar(10) DEFAULT NULL,
  `areaglobal` varchar(10) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `escritura` tinyint(1) DEFAULT '0',
  `areacomum` varchar(10) DEFAULT NULL,
  `centrodecusto` varchar(13) DEFAULT NULL,
  `tmpidnota` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.contratosimoveisfinanceiro
CREATE TABLE IF NOT EXISTS `contratosimoveisfinanceiro` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocontrato` varchar(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `historico` varchar(150) DEFAULT NULL,
  `debito` decimal(10,4) DEFAULT NULL,
  `credito` decimal(10,4) DEFAULT NULL,
  `valorreal` decimal(14,4) DEFAULT NULL,
  `saldo` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.controledepublico
CREATE TABLE IF NOT EXISTS `controledepublico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigovendedor` varchar(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.controledequilometragem
CREATE TABLE IF NOT EXISTS `controledequilometragem` (
  `codigo` varchar(11) NOT NULL DEFAULT '',
  `codigocentrodecusto` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `destino` varchar(50) DEFAULT NULL,
  `kminicial` double(10,3) DEFAULT '0.000',
  `kmfinal` double(10,3) DEFAULT '0.000',
  `kmpercorrido` double(10,3) DEFAULT '0.000',
  `motorista` varchar(100) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `horasaida` time DEFAULT NULL,
  `horaretorno` time DEFAULT NULL,
  `codigomotorista` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.controledequilometragemdestinos
CREATE TABLE IF NOT EXISTS `controledequilometragemdestinos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoquilometragem` varchar(13) DEFAULT NULL,
  `codigocolaborador` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.controleseries
CREATE TABLE IF NOT EXISTS `controleseries` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(250) NOT NULL,
  `numeroinicio` int(11) NOT NULL,
  `numerofim` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `observacoes` varchar(1500) DEFAULT NULL,
  `etiquetaimpressa` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.convenios
CREATE TABLE IF NOT EXISTS `convenios` (
  `codigo` varchar(10) NOT NULL,
  `convenio` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.conversaodecfop
CREATE TABLE IF NOT EXISTS `conversaodecfop` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigonatureza` varchar(20) DEFAULT NULL,
  `cfoporigem` varchar(20) DEFAULT NULL,
  `cfopdestino` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.conversorunidades
CREATE TABLE IF NOT EXISTS `conversorunidades` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `origem` varchar(50) DEFAULT NULL,
  `destino` varchar(50) DEFAULT NULL,
  `fator` varchar(50) DEFAULT NULL,
  `cnpjfornecedor` varchar(50) DEFAULT NULL,
  `codigoprodutofornecedor` varchar(50) DEFAULT NULL,
  `usarestaconversaoparatodosprodutos` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cores
CREATE TABLE IF NOT EXISTS `cores` (
  `codigo` varchar(10) NOT NULL,
  `cor` varchar(65) DEFAULT NULL,
  `codigoadicional` varchar(50) DEFAULT NULL,
  `descricaoadicional` varchar(50) DEFAULT NULL,
  `descricaoadicional2` varchar(50) DEFAULT NULL,
  `ecommerce` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cotacoes
CREATE TABLE IF NOT EXISTS `cotacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `fornecedor` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'NÃO Cotado',
  `selecionado` varchar(10) DEFAULT NULL,
  `motivodacompra` varchar(200) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `etapa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.creditoatendimento
CREATE TABLE IF NOT EXISTS `creditoatendimento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `tipoatecipacao` varchar(50) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `codigocontacontabil` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.creditocolaboradores
CREATE TABLE IF NOT EXISTS `creditocolaboradores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `colaborador` varchar(20) DEFAULT NULL,
  `debito` decimal(15,4) DEFAULT NULL,
  `credito` decimal(15,4) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `atendimento` varchar(20) DEFAULT NULL,
  `movimentocontabil` varchar(20) DEFAULT NULL,
  `conta` varchar(50) DEFAULT NULL,
  `vendedor` varchar(50) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=1159 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ctecamposcartadecorrecao
CREATE TABLE IF NOT EXISTS `ctecamposcartadecorrecao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(50) DEFAULT NULL,
  `campo` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ctecartadecorrecao
CREATE TABLE IF NOT EXISTS `ctecartadecorrecao` (
  `codigo` varchar(13) NOT NULL DEFAULT '0',
  `atendimento` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `sequencia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ctecartadecorrecaoitens
CREATE TABLE IF NOT EXISTS `ctecartadecorrecaoitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocartadecorrecao` varchar(50) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `campo` varchar(50) DEFAULT NULL,
  `valor` varchar(700) DEFAULT NULL,
  `numeroitem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ctedocumentos
CREATE TABLE IF NOT EXISTS `ctedocumentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoatendimento` varchar(11) DEFAULT NULL,
  `chavedeacesso` varchar(44) DEFAULT NULL,
  `serie` varchar(2) DEFAULT NULL,
  `numeronf` varchar(11) DEFAULT NULL,
  `dataemissao` date DEFAULT NULL,
  `horaemissao` time DEFAULT NULL,
  `cfop` varchar(4) DEFAULT NULL,
  `modelonf` varchar(50) DEFAULT NULL,
  `basecalculoicms` decimal(10,4) DEFAULT NULL,
  `valoricms` decimal(10,4) DEFAULT NULL,
  `basecalculoicmsst` decimal(10,4) DEFAULT NULL,
  `valoricmsst` decimal(10,4) DEFAULT NULL,
  `valorprodutos` decimal(10,4) DEFAULT NULL,
  `valornota` decimal(10,4) DEFAULT NULL,
  `tiponotadocumento` varchar(20) DEFAULT NULL,
  `tipodocumentooriginario` varchar(20) DEFAULT NULL,
  `descricaooutrodocumento` varchar(50) DEFAULT NULL,
  `dataemissaooutrodocumento` date DEFAULT NULL,
  `horaemissaooutrodocumento` time DEFAULT NULL,
  `valornotanfe` decimal(10,4) DEFAULT NULL,
  `valoroutrosdocumentos` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ctedocumentosanteriores
CREATE TABLE IF NOT EXISTS `ctedocumentosanteriores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocte` varchar(20) DEFAULT NULL,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `chavedeacesso` varchar(44) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.culturas
CREATE TABLE IF NOT EXISTS `culturas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cultura` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `curso` varchar(50) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.danfefatura
CREATE TABLE IF NOT EXISTS `danfefatura` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cnpjemissor` varchar(100) DEFAULT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `numeronota` varchar(100) DEFAULT NULL,
  `parcela` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `vencimento` varchar(50) DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `cnpjemissor` (`cnpjemissor`),
  KEY `serie` (`serie`),
  KEY `numeronota` (`numeronota`)
) ENGINE=InnoDB AUTO_INCREMENT=34799 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.danfeitens
CREATE TABLE IF NOT EXISTS `danfeitens` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigodanfe` int(10) DEFAULT NULL,
  `codigoproduto` varchar(100) DEFAULT NULL,
  `descricaoproduto` varchar(300) DEFAULT NULL,
  `ncm` varchar(300) DEFAULT NULL,
  `origem` varchar(300) DEFAULT NULL,
  `cst` varchar(300) DEFAULT NULL,
  `cfop` varchar(300) DEFAULT NULL,
  `un` varchar(300) DEFAULT NULL,
  `valorunitario` varchar(300) DEFAULT NULL,
  `valortotal` varchar(300) DEFAULT NULL,
  `bcicms` varchar(300) DEFAULT NULL,
  `vicms` varchar(300) DEFAULT NULL,
  `valoripi` varchar(300) DEFAULT NULL,
  `picms` varchar(300) DEFAULT NULL,
  `pipi` varchar(300) DEFAULT NULL,
  `nota` varchar(100) DEFAULT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `cnpjemissor` varchar(100) DEFAULT NULL,
  `cstpis` varchar(300) DEFAULT NULL,
  `bcpis` varchar(300) DEFAULT NULL,
  `ppis` varchar(300) DEFAULT NULL,
  `vpis` varchar(300) DEFAULT NULL,
  `cstcofins` varchar(300) DEFAULT NULL,
  `bccofins` varchar(300) DEFAULT NULL,
  `pcofins` varchar(300) DEFAULT NULL,
  `vcofins` varchar(300) DEFAULT NULL,
  `quantidade` varchar(300) DEFAULT NULL,
  `nossadescricao` varchar(300) DEFAULT NULL,
  `nossocodigo` varchar(300) DEFAULT NULL,
  `bcst` varchar(300) DEFAULT NULL,
  `pst` varchar(300) DEFAULT NULL,
  `vst` varchar(300) DEFAULT NULL,
  `pstparacustos` varchar(300) DEFAULT NULL,
  `csosn` varchar(300) DEFAULT NULL,
  `nossareferencia` varchar(300) DEFAULT NULL,
  `ean` varchar(300) DEFAULT NULL,
  `unidadeoriginal` varchar(300) DEFAULT NULL,
  `descontoitem` varchar(10) DEFAULT NULL,
  `basecalculostretido` varchar(20) DEFAULT NULL,
  `pstret` varchar(20) DEFAULT NULL,
  `valorstretido` varchar(20) DEFAULT NULL,
  `indadprod` varchar(600) DEFAULT NULL,
  `vbcfcpst` varchar(20) DEFAULT NULL,
  `pfcpst` varchar(20) DEFAULT NULL,
  `vfcpst` varchar(20) DEFAULT NULL,
  `predbcicms` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `nota` (`nota`),
  KEY `serie` (`serie`),
  KEY `cnpjemissor` (`cnpjemissor`)
) ENGINE=InnoDB AUTO_INCREMENT=528452 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.danfeitensconversaomanual
CREATE TABLE IF NOT EXISTS `danfeitensconversaomanual` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cnpjemissor` varchar(20) NOT NULL,
  `nota` varchar(10) NOT NULL,
  `serie` varchar(10) NOT NULL,
  `codigoproduto` varchar(20) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `quantidade` decimal(12,6) DEFAULT '0.000000',
  `valorunitario` decimal(12,6) DEFAULT '0.000000',
  `valortotal` decimal(12,6) DEFAULT '0.000000',
  PRIMARY KEY (`cnpjemissor`,`nota`,`serie`,`codigoproduto`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.danfesubitens
CREATE TABLE IF NOT EXISTS `danfesubitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `danfeitem` varchar(50) DEFAULT NULL,
  `quantidade` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricaoproduto` varchar(200) DEFAULT NULL,
  `nossocodigo` varchar(50) DEFAULT NULL,
  `nossadescricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.denominacaobrasileiramedicamentos
CREATE TABLE IF NOT EXISTS `denominacaobrasileiramedicamentos` (
  `codigo` varchar(50) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `codigodcb` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.departamentos
CREATE TABLE IF NOT EXISTS `departamentos` (
  `codigo` varchar(10) NOT NULL,
  `departamento` varchar(130) DEFAULT NULL,
  `lucrodesejado` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.depositocereais
CREATE TABLE IF NOT EXISTS `depositocereais` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `cereal` varchar(50) DEFAULT NULL,
  `quantidadebrutadepositada` decimal(10,4) DEFAULT '0.0000',
  `quantidadedesconto` decimal(10,4) DEFAULT '0.0000',
  `quantidadeliquidadepositada` decimal(10,4) DEFAULT '0.0000',
  `quantidadefaturada` decimal(10,4) DEFAULT '0.0000',
  `valorunitario` decimal(10,4) DEFAULT '0.0000',
  `valortotalfaturado` decimal(10,4) DEFAULT '0.0000',
  `observacoes` varchar(500) DEFAULT NULL,
  `impureza` decimal(10,4) DEFAULT NULL,
  `umidade` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.devolucaocondicional
CREATE TABLE IF NOT EXISTS `devolucaocondicional` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(20) DEFAULT NULL,
  `produto` varchar(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `tabela` decimal(10,4) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.diarioobra
CREATE TABLE IF NOT EXISTS `diarioobra` (
  `codigo` varchar(11) NOT NULL DEFAULT '',
  `centrodecusto` varchar(10) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `manhatempo` varchar(50) DEFAULT NULL,
  `tardetempo` varchar(50) DEFAULT NULL,
  `noitetempo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.diarioobraocorrencias
CREATE TABLE IF NOT EXISTS `diarioobraocorrencias` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `diarioobra` varchar(11) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `ocorrencia` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.diarioobratarefasrealizadas
CREATE TABLE IF NOT EXISTS `diarioobratarefasrealizadas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `diarioobra` varchar(11) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.diretoriosbackup
CREATE TABLE IF NOT EXISTS `diretoriosbackup` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `diretorio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.documentos
CREATE TABLE IF NOT EXISTS `documentos` (
  `codigo` varchar(10) NOT NULL DEFAULT '',
  `documento` varchar(65) DEFAULT NULL,
  `historicorecebimento` varchar(130) DEFAULT NULL,
  `parcelaminima` decimal(10,2) DEFAULT NULL,
  `imprimircomprovantevendacupomfiscal` varchar(10) DEFAULT NULL,
  `clienteobrigatoriovendaprazo` tinyint(1) DEFAULT NULL,
  `baixaautomatica` tinyint(1) DEFAULT NULL,
  `localdecobrancaobrigatorio` tinyint(1) DEFAULT NULL,
  `intervalo` varchar(100) DEFAULT NULL,
  `exibirnaquitacao` varchar(50) DEFAULT 'Sim',
  `considerarnolimite` varchar(50) DEFAULT 'Sim',
  `contadebitoquitacaoautomatica` varchar(50) DEFAULT NULL,
  `contacreditoquitacaoautomatica` varchar(50) DEFAULT NULL,
  `historicoquitacao` varchar(50) DEFAULT NULL,
  `percentualdesagio` decimal(10,2) DEFAULT NULL,
  `contadesagio` varchar(50) DEFAULT NULL,
  `percentualdedescontoparazerarcomissao` decimal(10,2) DEFAULT NULL,
  `operacaopadrao` varchar(50) DEFAULT NULL,
  `contadebitopadraoquandovenda` varchar(50) DEFAULT NULL,
  `selecionado` varchar(1) DEFAULT NULL,
  `tipopagamentonfce` varchar(50) DEFAULT NULL,
  `considerarnobloqueioautomatico` tinyint(1) DEFAULT '1',
  `instituicaofinanceira` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Ativo',
  `exibirnofaturamento` tinyint(1) DEFAULT '1',
  `prazomaximo` decimal(10,0) DEFAULT '0',
  `lancarnaframentacaodaentrada` varchar(50) DEFAULT 'Sim',
  `pdv` tinyint(4) DEFAULT '0',
  `condicao` varchar(20) DEFAULT '',
  `ordempdv` int(11) DEFAULT '1',
  `alertaatraso` int(11) DEFAULT '1',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.documentossistema
CREATE TABLE IF NOT EXISTS `documentossistema` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nomedocumento` varchar(150) DEFAULT NULL,
  `arquivo` varchar(500) DEFAULT NULL,
  `destino` varchar(50) DEFAULT NULL,
  `tipodocumento` varchar(50) DEFAULT NULL,
  `botaoaserclicado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.dreformulas
CREATE TABLE IF NOT EXISTS `dreformulas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contacontabil` varchar(50) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.dreintervalos
CREATE TABLE IF NOT EXISTS `dreintervalos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `datainicial` date DEFAULT NULL,
  `datafinal` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ecf
CREATE TABLE IF NOT EXISTS `ecf` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `numerodeserie` varchar(50) DEFAULT NULL,
  `mfadicional` varchar(50) DEFAULT NULL,
  `tipodoecf` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `versaosoftwarebasico` varchar(50) DEFAULT NULL,
  `datasoftwarebasico` varchar(50) DEFAULT NULL,
  `horasoftwarebasico` varchar(50) DEFAULT NULL,
  `numerodoecfnaloja` varchar(50) DEFAULT NULL,
  `versaodll` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ecommercegruposprodutos
CREATE TABLE IF NOT EXISTS `ecommercegruposprodutos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(200) NOT NULL,
  `codigogrupo` varchar(200) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.edinotifis
CREATE TABLE IF NOT EXISTS `edinotifis` (
  `codigo` int(11) NOT NULL,
  `diretorioarquivo` text,
  `nomearquivo` varchar(100) DEFAULT NULL,
  `remetente` varchar(200) DEFAULT NULL,
  `destinatario` varchar(200) DEFAULT NULL,
  `data` varchar(20) DEFAULT NULL,
  `hora` varchar(20) DEFAULT NULL,
  `arquivo` varchar(20) DEFAULT NULL,
  `id_documento` varchar(20) DEFAULT NULL,
  `cgc_remetente` varchar(20) DEFAULT NULL,
  `ie_remetente` varchar(20) DEFAULT NULL,
  `razaosocial_remetente` varchar(200) DEFAULT NULL,
  `endereco_remetente` varchar(200) DEFAULT NULL,
  `cidade_remetente` varchar(200) DEFAULT NULL,
  `cep_remetente` varchar(20) DEFAULT NULL,
  `uf_remetente` varchar(20) DEFAULT NULL,
  `dt_embarque` varchar(20) DEFAULT NULL,
  `vnf` varchar(20) DEFAULT NULL,
  `peso` varchar(20) DEFAULT NULL,
  `cubagem` varchar(20) DEFAULT NULL,
  `volumes` varchar(20) DEFAULT NULL,
  `vcobrado` varchar(20) DEFAULT NULL,
  `vseguro` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.edinotifisnfes
CREATE TABLE IF NOT EXISTS `edinotifisnfes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoedinotifis` varchar(50) DEFAULT NULL,
  `razao_social_dest` varchar(200) DEFAULT NULL,
  `cpfcnpj_dest` varchar(200) DEFAULT NULL,
  `inscricao_estadual_dest` varchar(200) DEFAULT NULL,
  `endereco_dest` varchar(200) DEFAULT NULL,
  `bairro_dest` varchar(200) DEFAULT NULL,
  `cidade_dest` varchar(200) DEFAULT NULL,
  `cep_dest` varchar(200) DEFAULT NULL,
  `telefone_dest` varchar(200) DEFAULT NULL,
  `num_romaneio` varchar(200) DEFAULT NULL,
  `cod_rota` varchar(200) DEFAULT NULL,
  `meio_transporte` varchar(200) DEFAULT NULL,
  `tipo_transporte` varchar(200) DEFAULT NULL,
  `tipo_carga` varchar(200) DEFAULT NULL,
  `condicao_frete` varchar(200) DEFAULT NULL,
  `serie_nf` varchar(200) DEFAULT NULL,
  `numero_nf` varchar(200) DEFAULT NULL,
  `dt_emissao` varchar(200) DEFAULT NULL,
  `natureza_tipo` varchar(200) DEFAULT NULL,
  `especie_acondicionamento` varchar(200) DEFAULT NULL,
  `qtd_volumes` varchar(200) DEFAULT NULL,
  `valor_nota` varchar(200) DEFAULT NULL,
  `peso_total` varchar(200) DEFAULT NULL,
  `peso_densidade_cubagem` varchar(200) DEFAULT NULL,
  `chnfe` varchar(200) DEFAULT NULL,
  `email_dest` varchar(200) DEFAULT NULL,
  `endereco_entrega` varchar(200) DEFAULT NULL,
  `ponto_referencia` varchar(200) DEFAULT NULL,
  `telefone_contato` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.emailcobranca
CREATE TABLE IF NOT EXISTS `emailcobranca` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(3000) DEFAULT NULL,
  `assinatura` varchar(3000) DEFAULT NULL,
  `assunto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.emailcolaboradores
CREATE TABLE IF NOT EXISTS `emailcolaboradores` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `email` varchar(135) DEFAULT NULL,
  `colaborador` varchar(45) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `finalidade` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.enderecoscolaboradores
CREATE TABLE IF NOT EXISTS `enderecoscolaboradores` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomeendereco` varchar(65) DEFAULT NULL,
  `endereco` varchar(65) DEFAULT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `complemento` varchar(25) DEFAULT NULL,
  `cidade` varchar(10) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `bairro` varchar(65) DEFAULT NULL,
  `contato` varchar(65) DEFAULT NULL,
  `colaborador` varchar(20) DEFAULT NULL,
  `pista` varchar(100) DEFAULT NULL,
  `distancia` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.envioconserto
CREATE TABLE IF NOT EXISTS `envioconserto` (
  `codigo` int(11) NOT NULL DEFAULT '0',
  `codigocolaborador` varchar(50) DEFAULT NULL,
  `dataenvio` date DEFAULT NULL,
  `datarecebimento` date DEFAULT NULL,
  `dataenviofabricante` date DEFAULT NULL,
  `datadevolucaovendedor` date DEFAULT NULL,
  `codigovendedor` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `enviado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.envioconsertoitens
CREATE TABLE IF NOT EXISTS `envioconsertoitens` (
  `codigo` int(11) NOT NULL,
  `codigoenvioconserto` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  `resumoproblema` varchar(200) DEFAULT NULL,
  `garantia` tinyint(1) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `codigotmp` varchar(50) DEFAULT NULL,
  `custo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.envioconsertoitensocorrencias
CREATE TABLE IF NOT EXISTS `envioconsertoitensocorrencias` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoitem` int(11) DEFAULT NULL,
  `codigoocorrencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.envioconsertoitenstiposdefeitos
CREATE TABLE IF NOT EXISTS `envioconsertoitenstiposdefeitos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(50) DEFAULT NULL,
  `defeito` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.equipamentoeventos
CREATE TABLE IF NOT EXISTS `equipamentoeventos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `equipamento` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `evento` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.equipamentos
CREATE TABLE IF NOT EXISTS `equipamentos` (
  `codigo` varchar(10) NOT NULL DEFAULT '',
  `equipamento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.equipamentosordemservicos
CREATE TABLE IF NOT EXISTS `equipamentosordemservicos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(20) DEFAULT NULL,
  `codigoequipamento` varchar(20) DEFAULT NULL,
  `equipamento` varchar(100) DEFAULT NULL,
  `numerodeserie` varchar(100) DEFAULT NULL,
  `servico` varchar(50) DEFAULT NULL,
  `numeromarcaverificacao` varchar(50) DEFAULT NULL,
  `inmetro` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `capacidade` varchar(50) DEFAULT NULL,
  `garantia` varchar(3) DEFAULT NULL,
  `autorizado` varchar(3) DEFAULT NULL,
  `retirada` varchar(3) DEFAULT NULL,
  `notadecompra` varchar(10) DEFAULT NULL,
  `parecertecnico` varchar(20) DEFAULT NULL,
  `acessorios` varchar(100) DEFAULT NULL,
  `aparencia` varchar(100) DEFAULT NULL,
  `laudointerno` varchar(1000) DEFAULT NULL,
  `defeitoapresentado` varchar(1000) DEFAULT NULL,
  `laudotecnico` varchar(1000) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `numeroequipamento` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `contatocliente` varchar(3) DEFAULT NULL,
  `dataconclusao` date DEFAULT NULL,
  `previsaoconclusao` date DEFAULT NULL,
  `previsaoentrega` date DEFAULT NULL,
  `dataentrega` date DEFAULT NULL,
  `tecnicoresponsavel` varchar(50) DEFAULT NULL,
  `tipoatendimento` varchar(50) DEFAULT NULL,
  `terceirizado` varchar(50) DEFAULT NULL,
  `valorterceirizacao` decimal(10,2) DEFAULT NULL,
  `previsaoretornoterceirizado` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `horaentrega` time DEFAULT NULL,
  `datainicio` date DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horaconclusaoentrega` time DEFAULT NULL,
  `horaconclusao` time DEFAULT NULL,
  `responsavelentrega` varchar(50) DEFAULT NULL,
  `responsavelmontagem` varchar(50) DEFAULT NULL,
  `previsaomontagem` date DEFAULT NULL,
  `horaprevisaomontagem` time DEFAULT NULL,
  `datafabricacao` date DEFAULT NULL,
  `dataautorizacao` date DEFAULT NULL,
  `voltagem` varchar(50) DEFAULT NULL,
  `agendarentrega` tinyint(1) DEFAULT '1',
  `agendarmontagem` tinyint(1) DEFAULT '1',
  `agendarexecucao` tinyint(1) DEFAULT '1',
  `valorservicos` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.especificacoesprodutos
CREATE TABLE IF NOT EXISTS `especificacoesprodutos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `codigoadicional` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.estados
CREATE TABLE IF NOT EXISTS `estados` (
  `estado` varchar(2) DEFAULT NULL,
  `aliquotaicms` varchar(12) DEFAULT NULL,
  `aliquotaicmsproprio` varchar(12) DEFAULT '12',
  `conveniost` varchar(12) DEFAULT NULL,
  `fcp` varchar(12) DEFAULT '2',
  `iesubstitutotributario` varchar(50) DEFAULT NULL,
  `empresa` varchar(10) DEFAULT NULL,
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.estoque
CREATE TABLE IF NOT EXISTS `estoque` (
  `codigo` varchar(50) NOT NULL,
  `estoque` varchar(50) DEFAULT NULL,
  `tipoestoque` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.examestoxicologicos
CREATE TABLE IF NOT EXISTS `examestoxicologicos` (
  `codigo` varchar(11) NOT NULL,
  `colaborador` varchar(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `finalidade` varchar(500) DEFAULT NULL,
  `declaracaomedicacao` varchar(1000) DEFAULT NULL,
  `anfetamina` tinyint(1) DEFAULT '0',
  `metanfetamina` tinyint(1) DEFAULT '0',
  `mdma` tinyint(1) DEFAULT '0',
  `mda` tinyint(1) DEFAULT '0',
  `anfepramona` tinyint(1) DEFAULT '0',
  `femproporex` tinyint(1) DEFAULT '0',
  `mazindol` tinyint(1) DEFAULT '0',
  `morfina` tinyint(1) DEFAULT '0',
  `codeina` tinyint(1) DEFAULT '0',
  `monoacetilmorfina` tinyint(1) DEFAULT '0',
  `cocaina` tinyint(1) DEFAULT '0',
  `benzoillecgonina` tinyint(1) DEFAULT '0',
  `cocaetileno` tinyint(1) DEFAULT '0',
  `aeme` tinyint(1) DEFAULT '0',
  `thc` tinyint(1) DEFAULT '0',
  `thccooh` tinyint(1) DEFAULT '0',
  `pcp` tinyint(1) DEFAULT '0',
  `amostracabelo` tinyint(1) DEFAULT '0',
  `amostrapelo` tinyint(1) DEFAULT '0',
  `amostraregiaocorpo` varchar(50) DEFAULT NULL,
  `amostracorcabelo` varchar(30) DEFAULT NULL,
  `amostratratamento` varchar(3) DEFAULT NULL,
  `amostraqual` varchar(50) DEFAULT NULL,
  `amostraquando` varchar(50) DEFAULT NULL,
  `substanciasilicitas` varchar(3) DEFAULT NULL,
  `substanciasilicitasqual` varchar(50) DEFAULT NULL,
  `substanciasilicitasdataultimouso` date DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `numerocadeiacustodia` varchar(10) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `coletor` varchar(200) DEFAULT NULL,
  `cpfcoletor` varchar(20) DEFAULT NULL,
  `testemunha` varchar(200) DEFAULT NULL,
  `cpftestemunha` varchar(20) DEFAULT NULL,
  `finalidadecnh` tinyint(1) DEFAULT '0',
  `finalidadeclt` tinyint(1) DEFAULT '0',
  `finalidadeconcurso` tinyint(1) DEFAULT '0',
  `finalidadeoutros` tinyint(1) DEFAULT '0',
  `numeronf` varchar(50) DEFAULT NULL,
  `solicitante` varchar(11) DEFAULT NULL,
  `boletogerado` tinyint(1) DEFAULT '0',
  `codigoconta` varchar(20) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `integracao` tinyint(1) DEFAULT '0',
  `datacoleta` date DEFAULT NULL,
  `horacoleta` time DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.feriados
CREATE TABLE IF NOT EXISTS `feriados` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `feriado` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.folhapagamento
CREATE TABLE IF NOT EXISTS `folhapagamento` (
  `codigo` varchar(20) NOT NULL DEFAULT '',
  `datapagamento` date DEFAULT NULL,
  `codigocolaborador` varchar(50) DEFAULT NULL,
  `salario` double(10,2) DEFAULT NULL,
  `gratificacao` double(10,2) DEFAULT NULL,
  `valorperda` double(10,2) DEFAULT NULL,
  `vale` double(10,2) DEFAULT NULL,
  `valeporfora` double(10,2) DEFAULT NULL,
  `inss` double(10,2) DEFAULT NULL,
  `valorapagar` double(10,2) DEFAULT NULL,
  `depositopagamento` double(10,2) DEFAULT NULL,
  `dinheiropagamento` double(10,2) DEFAULT NULL,
  `valortotal` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.folhapagamentoitens
CREATE TABLE IF NOT EXISTS `folhapagamentoitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigofolhadepagamento` int(11) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `valor` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.formaturas
CREATE TABLE IF NOT EXISTS `formaturas` (
  `codigo` varchar(20) NOT NULL DEFAULT '',
  `formatura` varchar(50) DEFAULT '0',
  `data` date DEFAULT NULL,
  `representante` varchar(20) DEFAULT '0',
  `curso` varchar(20) DEFAULT '0',
  `instituicao` varchar(20) DEFAULT '0',
  `clientescolacao` decimal(10,0) DEFAULT '0',
  `clientesbaile` decimal(10,0) DEFAULT '0',
  `clientestotal` decimal(10,0) DEFAULT '0',
  `clientesbaile2` decimal(10,0) DEFAULT '0',
  `datadefinida` varchar(3) DEFAULT NULL,
  `obsbaile1` varchar(300) DEFAULT NULL,
  `obsbaile2` varchar(300) DEFAULT NULL,
  `localcolacao` varchar(300) DEFAULT NULL,
  `localbaile` varchar(300) DEFAULT NULL,
  `tmpvalorcolacao` decimal(10,2) DEFAULT NULL,
  `tmpvalorbaile1` decimal(10,2) DEFAULT NULL,
  `tmpvalorbaile2` decimal(10,2) DEFAULT NULL,
  `tmpvalortotalformatura` decimal(10,2) DEFAULT NULL,
  `tmpdespesasextras` decimal(10,2) DEFAULT NULL,
  `tmpvalormissa` decimal(10,2) DEFAULT NULL,
  `tmpindividual` decimal(10,2) DEFAULT NULL,
  `tmprecebido` decimal(10,2) DEFAULT NULL,
  `tmpalunoscomfinanceiro` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'A Realizar',
  `valordeentrada` decimal(10,2) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT 'Formatura',
  `selecionado` varchar(50) DEFAULT NULL,
  `localdamissa` varchar(50) DEFAULT NULL,
  `tabeladeprecos` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `prazoassinatura` date DEFAULT NULL,
  `obscolacao` varchar(300) DEFAULT NULL,
  `obsmissa` varchar(300) DEFAULT NULL,
  `empresa` varchar(10) DEFAULT '1',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.formaturasbrindes
CREATE TABLE IF NOT EXISTS `formaturasbrindes` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `formatura` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `brinde` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.formaturascreditos
CREATE TABLE IF NOT EXISTS `formaturascreditos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `formatura` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.formaturaseventos
CREATE TABLE IF NOT EXISTS `formaturaseventos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `formatura` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `evento` varchar(50) DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'NÃO ConcluÃ­do',
  `formando` varchar(50) DEFAULT '',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.formaturasformandos
CREATE TABLE IF NOT EXISTS `formaturasformandos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `formatura` varchar(20) DEFAULT NULL,
  `formando` varchar(20) DEFAULT NULL,
  `colacao` varchar(3) DEFAULT NULL,
  `baile` varchar(3) DEFAULT NULL,
  `parcelas` varchar(10) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `desconto` decimal(10,4) DEFAULT NULL,
  `acrescimo` decimal(10,4) DEFAULT NULL,
  `numerobaile` varchar(3) DEFAULT NULL,
  `faturamento` varchar(20) DEFAULT NULL,
  `pdesconto` decimal(10,4) DEFAULT NULL,
  `pacrescimo` decimal(10,4) DEFAULT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `individual` decimal(10,2) DEFAULT NULL,
  `creditoformando` decimal(10,2) DEFAULT NULL,
  `condicoes` varchar(100) DEFAULT NULL,
  `titular` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.formaturasprofissionais
CREATE TABLE IF NOT EXISTS `formaturasprofissionais` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `formatura` varchar(50) DEFAULT NULL,
  `produtoservico` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.formaturasresponsaveis
CREATE TABLE IF NOT EXISTS `formaturasresponsaveis` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `formatura` varchar(20) DEFAULT NULL,
  `responsavel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.formaturasusuarios
CREATE TABLE IF NOT EXISTS `formaturasusuarios` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `formatura` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.generodosprodutos
CREATE TABLE IF NOT EXISTS `generodosprodutos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigosped` varchar(50) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.gnre
CREATE TABLE IF NOT EXISTS `gnre` (
  `codigo` int(11) NOT NULL,
  `atendimento` varchar(20) DEFAULT NULL,
  `uffavorecida` varchar(20) DEFAULT NULL,
  `tipognre` varchar(50) DEFAULT NULL,
  `codigoreceita` varchar(200) DEFAULT NULL,
  `numerodocumento` varchar(20) DEFAULT NULL,
  `chavedeacesso` varchar(44) DEFAULT NULL,
  `datavencimento` date DEFAULT NULL,
  `valorgnre` decimal(20,6) DEFAULT NULL,
  `periodo` varchar(10) DEFAULT NULL,
  `mes` varchar(10) DEFAULT NULL,
  `ano` varchar(10) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `detalhamentoreceita` varchar(200) DEFAULT NULL,
  `observacoes` varchar(100) DEFAULT NULL,
  `numerorecibo` varchar(20) DEFAULT NULL,
  `ambiente` varchar(10) DEFAULT NULL,
  `situacaoguia` varchar(100) DEFAULT NULL,
  `nossonumero` varchar(20) DEFAULT NULL,
  `linhadigitavel` varchar(150) DEFAULT NULL,
  `codigodebarras` varchar(150) DEFAULT NULL,
  `empresa` varchar(10) DEFAULT NULL,
  `hashdata` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.grades
CREATE TABLE IF NOT EXISTS `grades` (
  `codigo` varchar(10) NOT NULL DEFAULT '',
  `grade` varchar(50) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `codigobarras` varchar(45) DEFAULT NULL,
  `codigograde` varchar(50) DEFAULT NULL,
  `nomeexterior` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.grupos
CREATE TABLE IF NOT EXISTS `grupos` (
  `codigo` varchar(30) NOT NULL,
  `grupo` varchar(130) DEFAULT NULL,
  `tipo` varchar(65) DEFAULT NULL,
  `tipoetiqueta` varchar(65) DEFAULT NULL,
  `hierarquia` varchar(200) DEFAULT NULL,
  `hierarquiacomformatacao` varchar(200) DEFAULT NULL,
  `data` varchar(200) DEFAULT NULL,
  `hora` varchar(200) DEFAULT NULL,
  `grupomestre` varchar(200) DEFAULT NULL,
  `selecionado` varchar(50) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `tipodocodigo` varchar(50) DEFAULT NULL,
  `ncm` varchar(50) DEFAULT NULL,
  `icone` varchar(50) DEFAULT NULL,
  `lucrodesejado` decimal(10,2) DEFAULT NULL,
  `exibirnascomandas` tinyint(1) DEFAULT '1',
  `adicionalpraticado2` decimal(10,2) DEFAULT NULL,
  `adicionalpraticado3` decimal(10,2) DEFAULT NULL,
  `descontomaximo` decimal(10,2) DEFAULT NULL,
  `hierarquiamestre` varchar(50) DEFAULT NULL,
  `usaremcondicionais` tinyint(1) DEFAULT '1',
  `valormensalidade` decimal(10,2) DEFAULT NULL,
  `diasalertaclientenaoretornar` decimal(10,2) DEFAULT NULL,
  `codigoadicional` varchar(50) DEFAULT NULL,
  `ecommerce` tinyint(1) DEFAULT '0',
  `empresa` varchar(3) DEFAULT NULL,
  `custofixo` decimal(10,2) DEFAULT NULL,
  `inativarprodutossemestoque` tinyint(1) DEFAULT '0',
  `id_opencart` varchar(20) DEFAULT NULL,
  `enviar_opencart` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.gruposcomplementos
CREATE TABLE IF NOT EXISTS `gruposcomplementos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(50) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `valoradicional` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.gruposimpressoras
CREATE TABLE IF NOT EXISTS `gruposimpressoras` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(50) DEFAULT NULL,
  `impressora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.gruposposvendas
CREATE TABLE IF NOT EXISTS `gruposposvendas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(50) DEFAULT NULL,
  `nomeposvenda` varchar(50) DEFAULT NULL,
  `dias` double DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.grupostabelasdeprecos
CREATE TABLE IF NOT EXISTS `grupostabelasdeprecos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(50) DEFAULT NULL,
  `tabela` varchar(50) DEFAULT NULL,
  `desconto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.gtin14
CREATE TABLE IF NOT EXISTS `gtin14` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) NOT NULL,
  `gtin14` varchar(14) NOT NULL,
  `quantidade` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `gtin14` (`gtin14`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.historicopontuacao
CREATE TABLE IF NOT EXISTS `historicopontuacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `pontos` varchar(20) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `atendimento` varchar(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `tmppontos` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=13883 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.historicos
CREATE TABLE IF NOT EXISTS `historicos` (
  `codigo` varchar(10) NOT NULL,
  `historico` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.horarios
CREATE TABLE IF NOT EXISTS `horarios` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `horario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.horariosagenda
CREATE TABLE IF NOT EXISTS `horariosagenda` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `horario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.imagemcabecalho
CREATE TABLE IF NOT EXISTS `imagemcabecalho` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `configuracao` varchar(10) DEFAULT NULL,
  `imagem` longblob,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.imagemrodape
CREATE TABLE IF NOT EXISTS `imagemrodape` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `configuracao` varchar(10) DEFAULT NULL,
  `imagem` longblob,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.imoveis
CREATE TABLE IF NOT EXISTS `imoveis` (
  `codigo` varchar(20) NOT NULL,
  `imovel` varchar(100) DEFAULT NULL,
  `proprietario` varchar(20) DEFAULT NULL,
  `inquilino` varchar(20) DEFAULT NULL,
  `observacoes` varchar(5000) DEFAULT NULL,
  `valoraluguel` decimal(10,2) DEFAULT '0.00',
  `tipodoimovel` varchar(50) DEFAULT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(15) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `situacao` varchar(50) DEFAULT NULL,
  `tiporeajuste` varchar(50) DEFAULT NULL,
  `indicedereajuste` varchar(50) DEFAULT NULL,
  `percentualdemultaaluguel` varchar(50) DEFAULT NULL,
  `percentualdescontopgtoemdia` varchar(50) DEFAULT NULL,
  `valoriptu` decimal(10,2) DEFAULT '0.00',
  `areautil` decimal(10,3) DEFAULT NULL,
  `areacomum` decimal(10,3) DEFAULT NULL,
  `areaterreno` decimal(10,3) DEFAULT NULL,
  `dimensoesfrente` decimal(10,3) DEFAULT NULL,
  `dimensoesfundos` decimal(10,3) DEFAULT NULL,
  `dimensoesesquerda` decimal(10,3) DEFAULT NULL,
  `dimensoesdireita` decimal(10,3) DEFAULT NULL,
  `areagaragem` decimal(10,3) DEFAULT NULL,
  `areautiltotal` decimal(10,3) DEFAULT NULL,
  `areacomumtotal` decimal(10,3) DEFAULT NULL,
  `diretoriodoimovel` varchar(255) DEFAULT NULL,
  `dormitorios` decimal(10,0) DEFAULT NULL,
  `suites` decimal(10,0) DEFAULT NULL,
  `elevadores` decimal(10,0) DEFAULT NULL,
  `vagasgaragem` decimal(10,0) DEFAULT NULL,
  `agenciador` varchar(50) DEFAULT NULL,
  `corretor` varchar(50) DEFAULT NULL,
  `valordoimovel` decimal(20,2) DEFAULT NULL,
  `zona` varchar(50) DEFAULT NULL,
  `imagemgeral` longblob,
  `diretorioimagemgeral` varchar(200) DEFAULT NULL,
  `procurador` varchar(50) DEFAULT NULL,
  `regzona` varchar(50) DEFAULT NULL,
  `reglivro` varchar(50) DEFAULT NULL,
  `regfolha` varchar(50) DEFAULT NULL,
  `regmatricula` varchar(50) DEFAULT NULL,
  `regprefeitura` varchar(50) DEFAULT NULL,
  `nomedocondominio` varchar(50) DEFAULT NULL,
  `administradora` varchar(50) DEFAULT NULL,
  `valorcondominio` varchar(50) DEFAULT NULL,
  `andar` varchar(50) DEFAULT NULL,
  `apartamentosdoandar` varchar(50) DEFAULT NULL,
  `sauna` tinyint(1) DEFAULT NULL,
  `deposito` tinyint(1) DEFAULT NULL,
  `seg24hs` tinyint(1) DEFAULT NULL,
  `piscina` tinyint(1) DEFAULT NULL,
  `interfone` tinyint(1) DEFAULT NULL,
  `saladejogos` tinyint(1) DEFAULT NULL,
  `zeladoria` tinyint(1) DEFAULT NULL,
  `telefonecomunitario` tinyint(1) DEFAULT NULL,
  `playground` tinyint(1) DEFAULT NULL,
  `portaria` tinyint(1) DEFAULT NULL,
  `elevador` tinyint(1) DEFAULT NULL,
  `salaginastica` tinyint(1) DEFAULT NULL,
  `subsolo` tinyint(1) DEFAULT NULL,
  `elevadorserv` tinyint(1) DEFAULT NULL,
  `salaodefestas` tinyint(1) DEFAULT NULL,
  `parabolica` tinyint(1) DEFAULT NULL,
  `quadraesportiva` tinyint(1) DEFAULT NULL,
  `pracas` tinyint(1) DEFAULT NULL,
  `supermercado` tinyint(1) DEFAULT NULL,
  `postocombustivel` tinyint(1) DEFAULT NULL,
  `shopping` tinyint(1) DEFAULT NULL,
  `clube` tinyint(1) DEFAULT NULL,
  `postopolicial` tinyint(1) DEFAULT NULL,
  `escola` tinyint(1) DEFAULT NULL,
  `ruasasfaltadas` tinyint(1) DEFAULT NULL,
  `pontodetaxi` tinyint(1) DEFAULT NULL,
  `farmacia` tinyint(1) DEFAULT NULL,
  `videolocadora` tinyint(1) DEFAULT NULL,
  `onibus` tinyint(1) DEFAULT NULL,
  `padaria` tinyint(1) DEFAULT NULL,
  `tvacabo` tinyint(1) DEFAULT NULL,
  `lotacao` tinyint(1) DEFAULT NULL,
  `saneamento` tinyint(1) DEFAULT NULL,
  `creche` tinyint(1) DEFAULT NULL,
  `exclusividadeexclusivo` tinyint(1) DEFAULT NULL,
  `exclusividadeplacavendese` tinyint(1) DEFAULT NULL,
  `exclusividadejornais` tinyint(1) DEFAULT NULL,
  `exclusividadeoutros` varchar(50) DEFAULT NULL,
  `solarnorte` tinyint(1) DEFAULT NULL,
  `solarsul` tinyint(1) DEFAULT NULL,
  `solarleste` tinyint(1) DEFAULT NULL,
  `solaroeste` tinyint(1) DEFAULT NULL,
  `construtora` varchar(50) DEFAULT NULL,
  `prazodeentrega` varchar(50) DEFAULT NULL,
  `posicaodoimovel` varchar(50) DEFAULT NULL,
  `sitiostopografia` varchar(50) DEFAULT NULL,
  `sitioscriacao` varchar(50) DEFAULT NULL,
  `sitioscultivo` varchar(50) DEFAULT NULL,
  `sitiosagua` tinyint(1) DEFAULT NULL,
  `sitiosenergiaeletrica` tinyint(1) DEFAULT NULL,
  `sitiospomar` tinyint(1) DEFAULT NULL,
  `sitioscercado` tinyint(1) DEFAULT NULL,
  `comerciaisestoque` varchar(50) DEFAULT NULL,
  `comerciaisequipamentos` varchar(50) DEFAULT NULL,
  `comerciaisfaturamento` varchar(50) DEFAULT NULL,
  `comerciaistempoatividade` varchar(50) DEFAULT NULL,
  `comerciaisservico` tinyint(1) DEFAULT NULL,
  `comerciaisindustria` tinyint(1) DEFAULT NULL,
  `comerciaiscomercio` tinyint(1) DEFAULT NULL,
  `comerciaisemfuncionamento` tinyint(1) DEFAULT NULL,
  `cartorio` varchar(50) DEFAULT NULL,
  `dataprocuracao` date DEFAULT NULL,
  `tipodopiso` varchar(50) DEFAULT NULL,
  `aquecimentoeletrico` tinyint(4) DEFAULT NULL,
  `arcentral` tinyint(4) DEFAULT NULL,
  `arcondicionado` tinyint(4) DEFAULT NULL,
  `areadeservico` tinyint(4) DEFAULT NULL,
  `armariocozinha` tinyint(4) DEFAULT NULL,
  `armarioembutido` tinyint(4) DEFAULT NULL,
  `banheirosocial` tinyint(4) DEFAULT NULL,
  `carpete` tinyint(4) DEFAULT NULL,
  `churrasqueira` tinyint(4) DEFAULT NULL,
  `closet` tinyint(4) DEFAULT NULL,
  `cozinha` tinyint(4) DEFAULT NULL,
  `depempregada` tinyint(4) DEFAULT NULL,
  `despensa` tinyint(4) DEFAULT NULL,
  `edicula` tinyint(4) DEFAULT NULL,
  `estarintimo` tinyint(4) DEFAULT NULL,
  `estarsocial` tinyint(4) DEFAULT NULL,
  `gabinete` tinyint(4) DEFAULT NULL,
  `gascentral` tinyint(4) DEFAULT NULL,
  `grades` tinyint(4) DEFAULT NULL,
  `lareira` tinyint(4) DEFAULT NULL,
  `lavabo` tinyint(4) DEFAULT NULL,
  `lavanderia` tinyint(4) DEFAULT NULL,
  `piscinaimovel` tinyint(4) DEFAULT NULL,
  `portagarautom` tinyint(4) DEFAULT NULL,
  `sacada` tinyint(4) DEFAULT NULL,
  `saladejantar` tinyint(4) DEFAULT NULL,
  `wcauxiliar` tinyint(4) DEFAULT NULL,
  `vendaindexador` varchar(50) DEFAULT NULL,
  `vendavaloravista` decimal(15,2) DEFAULT NULL,
  `vendavaloraprazo` decimal(15,2) DEFAULT NULL,
  `vendavalorentrada` decimal(15,2) DEFAULT NULL,
  `vendaescritura` varchar(50) DEFAULT NULL,
  `vendaparcelas` varchar(50) DEFAULT NULL,
  `vendachaves` varchar(50) DEFAULT NULL,
  `vendareforcos` varchar(50) DEFAULT NULL,
  `vendanomeagenciador` varchar(50) DEFAULT NULL,
  `vendapercentualagenciador` decimal(10,4) DEFAULT NULL,
  `vendavaloragenciador` decimal(10,4) DEFAULT NULL,
  `vendapercentualvendedor` decimal(10,4) DEFAULT NULL,
  `vendavalorvendedor` decimal(10,4) DEFAULT NULL,
  `vendapercentualcorretor` decimal(10,4) DEFAULT NULL,
  `vendavalorcorretor` decimal(10,4) DEFAULT NULL,
  `vendapercentualcomprador` decimal(10,4) DEFAULT NULL,
  `vendavalorcomprador` decimal(10,4) DEFAULT NULL,
  `vendapermutaimovel` tinyint(4) DEFAULT NULL,
  `vendapermutaautomovel` tinyint(4) DEFAULT NULL,
  `vendapermutaoutros` varchar(50) DEFAULT NULL,
  `vendapermutapercentualdoimovel` decimal(10,4) DEFAULT NULL,
  `vendacaracteristicasdapermuta` varchar(50) DEFAULT NULL,
  `vendasaldodevedor` decimal(10,2) DEFAULT NULL,
  `vendaagente` varchar(50) DEFAULT NULL,
  `vendanumerocontrato` varchar(50) DEFAULT NULL,
  `vendaprestacao` decimal(10,2) DEFAULT NULL,
  `vendamesesrestantes` decimal(10,2) DEFAULT NULL,
  `terrenoaverbado` varchar(50) DEFAULT NULL,
  `construcaoaverbada` varchar(50) DEFAULT NULL,
  `valorproprietario` decimal(10,2) DEFAULT NULL,
  `honorarios` decimal(10,2) DEFAULT NULL,
  `valordevenda` decimal(10,2) DEFAULT NULL,
  `formadepagamento` varchar(50) DEFAULT NULL,
  `financiado` varchar(50) DEFAULT NULL,
  `pontodereferencia` varchar(100) DEFAULT NULL,
  `diasehorarioavisita` varchar(100) DEFAULT NULL,
  `outrasinformacoes` varchar(100) DEFAULT NULL,
  `percentualhonorarios` decimal(10,2) DEFAULT NULL,
  `valoremincc` decimal(10,3) DEFAULT NULL,
  `areabox2` decimal(10,3) DEFAULT NULL,
  `reservado` tinyint(1) DEFAULT '0',
  `diretoriocontrato` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.imoveiscaracteristicas
CREATE TABLE IF NOT EXISTS `imoveiscaracteristicas` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `imovel` varchar(50) DEFAULT NULL,
  `caracteristica` varchar(200) DEFAULT NULL,
  `valor` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.imoveiscolaboradores
CREATE TABLE IF NOT EXISTS `imoveiscolaboradores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `imovel` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.imoveisfiadores
CREATE TABLE IF NOT EXISTS `imoveisfiadores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `imovel` varchar(20) DEFAULT NULL,
  `fiador` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.imoveisimagens
CREATE TABLE IF NOT EXISTS `imoveisimagens` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `imovel` varchar(50) DEFAULT NULL,
  `nomedaimagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.imoveisvisita
CREATE TABLE IF NOT EXISTS `imoveisvisita` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `imovel` varchar(20) DEFAULT NULL,
  `colaborador` varchar(20) DEFAULT NULL,
  `feedback` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.impressoras
CREATE TABLE IF NOT EXISTS `impressoras` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `impressora` varchar(50) DEFAULT NULL,
  `diretorioimpressao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.indices
CREATE TABLE IF NOT EXISTS `indices` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `valor` decimal(10,4) DEFAULT NULL,
  `mesdereferencia` date DEFAULT NULL,
  `indice` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.instituicoes
CREATE TABLE IF NOT EXISTS `instituicoes` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `instituicao` varchar(50) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.inutilizacoesnfe
CREATE TABLE IF NOT EXISTS `inutilizacoesnfe` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `ambiente` varchar(50) DEFAULT NULL,
  `ano` varchar(50) DEFAULT NULL,
  `cnpj` varchar(50) DEFAULT NULL,
  `modelodocumentofiscal` varchar(50) DEFAULT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `numeroinicial` varchar(50) DEFAULT NULL,
  `numerofinal` varchar(50) DEFAULT NULL,
  `justificativa` varchar(50) DEFAULT NULL,
  `situacaodainutilizacao` varchar(100) DEFAULT NULL,
  `protocolo` varchar(100) DEFAULT NULL,
  `datainutilizacao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.itensatendimentos
CREATE TABLE IF NOT EXISTS `itensatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `item` int(11) NOT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `produto` varchar(130) DEFAULT NULL,
  `quantidade` decimal(20,7) DEFAULT NULL,
  `tabela` decimal(20,7) DEFAULT NULL,
  `total` decimal(20,7) DEFAULT NULL,
  `tabelacomdesconto` decimal(20,7) DEFAULT NULL,
  `totalcomdesconto` decimal(20,7) DEFAULT NULL,
  `st` varchar(3) DEFAULT NULL,
  `cfop` varchar(4) DEFAULT NULL,
  `aliquotaicms` varchar(5) DEFAULT NULL,
  `freteitem` decimal(20,5) DEFAULT NULL COMMENT 'percentual',
  `seguroitem` decimal(20,5) DEFAULT NULL,
  `descontoitem` decimal(20,5) DEFAULT NULL,
  `reducaobcicms` decimal(20,5) DEFAULT NULL,
  `valoricmsst` decimal(20,5) DEFAULT NULL,
  `aliquotaicmsst` decimal(20,5) DEFAULT NULL,
  `valoricms` decimal(20,5) DEFAULT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `valorbasecalculoicms` decimal(20,5) DEFAULT NULL,
  `incidenciaicms` decimal(20,5) DEFAULT NULL,
  `valorbasecalculoicmsst` decimal(20,5) DEFAULT NULL,
  `valoripi` decimal(20,5) DEFAULT NULL,
  `despesasitem` decimal(20,5) DEFAULT NULL,
  `vmv` decimal(20,5) DEFAULT NULL,
  `totalvmv` decimal(20,5) DEFAULT NULL,
  `ipi` decimal(20,5) DEFAULT NULL,
  `psubstituicao` decimal(20,5) DEFAULT NULL,
  `fornecedortextolivre` varchar(50) DEFAULT NULL,
  `mva` decimal(20,5) DEFAULT NULL,
  `codigoequipamentoos` varchar(20) DEFAULT NULL,
  `pcomissaoitem` decimal(20,5) DEFAULT NULL,
  `comissaoitem` decimal(20,5) DEFAULT NULL,
  `observacoes` varchar(2000) DEFAULT NULL,
  `marcatextolivre` varchar(50) DEFAULT NULL,
  `descontoadicional1` decimal(20,5) DEFAULT NULL,
  `descontoadicional2` decimal(20,5) DEFAULT NULL,
  `descontoadicional3` decimal(20,5) DEFAULT NULL,
  `descontoadicional4` decimal(20,5) DEFAULT NULL,
  `descontoadicional5` decimal(20,5) DEFAULT NULL,
  `cmvunitario` decimal(20,5) DEFAULT NULL,
  `ppis` decimal(20,5) DEFAULT NULL,
  `bcpis` decimal(20,5) DEFAULT NULL,
  `vpis` decimal(20,5) DEFAULT NULL,
  `pcofins` decimal(20,5) DEFAULT NULL,
  `bccofins` decimal(20,5) DEFAULT NULL,
  `vcofins` decimal(20,5) DEFAULT NULL,
  `cstpis` varchar(50) DEFAULT NULL,
  `cstcofins` varchar(50) DEFAULT NULL,
  `numerodeserie` varchar(100) DEFAULT NULL,
  `datalancamentoitem` datetime DEFAULT NULL,
  `pdesconto` decimal(20,5) DEFAULT NULL,
  `textolivre` varchar(100) DEFAULT NULL,
  `imagem` longblob,
  `idpedido` int(11) DEFAULT NULL,
  `idorigem` int(11) DEFAULT NULL,
  `_idorigem` int(11) DEFAULT NULL,
  `iddispositivo` varchar(50) DEFAULT NULL,
  `referenciatmp` varchar(50) DEFAULT NULL,
  `vendedor` varchar(25) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `diametro` varchar(100) DEFAULT NULL,
  `curvas` varchar(100) DEFAULT NULL,
  `nivel` varchar(100) DEFAULT NULL,
  `cstipi` varchar(10) DEFAULT NULL,
  `bcipi` decimal(20,2) DEFAULT NULL,
  `tmpespecificacoestecnicas` varchar(5000) DEFAULT NULL,
  `modelo2` varchar(100) DEFAULT NULL,
  `numeroserie2` varchar(100) DEFAULT NULL,
  `tmplocalizacao` varchar(100) DEFAULT NULL,
  `tmpgrupo` varchar(100) DEFAULT NULL,
  `tmppraticado` decimal(20,2) DEFAULT NULL,
  `tmpdescontomaximo` decimal(20,2) DEFAULT NULL,
  `tmppesoliquido` decimal(20,2) DEFAULT NULL,
  `tmppesobruto` decimal(20,2) DEFAULT NULL,
  `selecionado` varchar(3) DEFAULT NULL,
  `tmpcor` varchar(100) DEFAULT NULL,
  `tmptamanho` varchar(100) DEFAULT NULL,
  `largura` decimal(10,3) DEFAULT NULL,
  `altura` decimal(10,3) DEFAULT NULL,
  `pecas` decimal(10,3) DEFAULT NULL,
  `tmpnumeroitem` int(11) DEFAULT NULL,
  `cores` decimal(10,2) DEFAULT NULL,
  `pontos` decimal(10,2) DEFAULT NULL,
  `custorealunitario` decimal(10,2) DEFAULT NULL,
  `valoraproximadotributos` decimal(10,2) DEFAULT NULL,
  `vir` decimal(10,2) DEFAULT NULL,
  `vcsll` decimal(10,2) DEFAULT NULL,
  `indice` decimal(10,4) DEFAULT NULL,
  `inss` decimal(10,4) DEFAULT NULL,
  `iss` decimal(10,4) DEFAULT NULL,
  `issretido` decimal(10,4) DEFAULT NULL,
  `tmpdevolucao` decimal(10,4) DEFAULT NULL,
  `pedido` varchar(50) DEFAULT NULL,
  `numeroitempedido` varchar(50) DEFAULT NULL,
  `pfcp` decimal(10,2) DEFAULT NULL,
  `basecalculoicmsufdestino` decimal(10,2) DEFAULT NULL,
  `aliquotainternaufdestino` decimal(10,2) DEFAULT NULL,
  `aliquotainterestadual` decimal(10,2) DEFAULT NULL,
  `valoricmspartilhadestino` decimal(10,2) DEFAULT NULL,
  `valoricmspartilharemetente` decimal(10,2) DEFAULT NULL,
  `valoricmsfcp` decimal(10,2) DEFAULT NULL,
  `unidadecomercial` varchar(10) DEFAULT NULL COMMENT 'Desabilitado',
  `quantidadecomercial` decimal(10,6) DEFAULT NULL COMMENT 'Desabilitado',
  `tabelacomercial` decimal(10,6) DEFAULT NULL COMMENT 'Desabilitado',
  `tmptabelacomdesconto` decimal(10,6) DEFAULT NULL,
  `tmptabelacomdescontousada` tinyint(1) DEFAULT NULL,
  `tipooperacao` varchar(20) DEFAULT NULL,
  `centrodecusto` varchar(20) DEFAULT NULL,
  `tabelaespecificaproduto` varchar(20) DEFAULT NULL,
  `datautilizacao` date DEFAULT NULL,
  `dataentrega` date DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `bcissitem` decimal(10,2) DEFAULT NULL,
  `piss` decimal(10,2) DEFAULT NULL,
  `tipoproduto` varchar(50) DEFAULT NULL,
  `codigofornecedor` varchar(20) DEFAULT NULL,
  `statusgestaodeprocessos` varchar(50) DEFAULT NULL,
  `veiculostipooperacao` varchar(150) DEFAULT NULL,
  `veiculoschassi` varchar(20) DEFAULT NULL,
  `veiculoscodigocor` varchar(4) DEFAULT NULL,
  `veiculoscor` varchar(40) DEFAULT NULL,
  `veiculospotencia` varchar(4) DEFAULT NULL,
  `veiculoscilindradas` varchar(4) DEFAULT NULL,
  `veiculospesoliquido` decimal(10,4) DEFAULT NULL,
  `veiculospesobruto` decimal(10,4) DEFAULT NULL,
  `veiculosnumeroserie` varchar(9) DEFAULT NULL,
  `veiculostipocombustivel` varchar(150) DEFAULT NULL,
  `veiculosnumeromotor` varchar(21) DEFAULT NULL,
  `veiculoscmt` decimal(10,4) DEFAULT NULL,
  `veiculosdistanciaentreeixos` decimal(10,4) DEFAULT NULL,
  `veiculosanomodelo` varchar(4) DEFAULT NULL,
  `veiculosanofabricacao` varchar(4) DEFAULT NULL,
  `veiculostipopintura` varchar(1) DEFAULT NULL,
  `veiculostipoveiculo` varchar(150) DEFAULT NULL,
  `veiculosespecieveiculo` varchar(100) DEFAULT NULL,
  `veiculoscondicaochassi` varchar(100) DEFAULT NULL,
  `veiculoscondicaoveiculo` varchar(100) DEFAULT NULL,
  `veiculoscodigomarcamodelo` varchar(6) DEFAULT NULL,
  `veiculoscordenatran` varchar(100) DEFAULT NULL,
  `veiculospassageiros` varchar(3) DEFAULT NULL,
  `veiculosrestricao` varchar(150) DEFAULT NULL,
  `observacoesfinais` varchar(5000) DEFAULT NULL,
  `imagemsite` varchar(1500) DEFAULT NULL,
  `bcfcp` decimal(10,2) DEFAULT NULL,
  `dataenvioproducao` date DEFAULT NULL,
  `dataenvioaprovacao` date DEFAULT NULL,
  `percentualadicionalcusto` decimal(10,2) DEFAULT NULL,
  `armatipo` varchar(30) DEFAULT NULL,
  `armanumeroseriearma` varchar(15) DEFAULT NULL,
  `armanumeroseriecano` varchar(15) DEFAULT NULL,
  `armadescricao` varchar(300) DEFAULT NULL,
  `variacao` varchar(20) DEFAULT NULL,
  `bcicmsstret` decimal(10,2) DEFAULT NULL,
  `valoricmsstret` decimal(10,2) DEFAULT NULL,
  `bcicmsefet` decimal(10,2) DEFAULT NULL,
  `picmsefet` decimal(10,2) DEFAULT NULL,
  `valoricmsefet` decimal(10,2) DEFAULT NULL,
  `valoripidevolucao` decimal(10,2) DEFAULT NULL,
  `pipidevolucao` decimal(10,2) DEFAULT NULL,
  `variacaodaproducao` varchar(50) DEFAULT NULL,
  `auxpercentualcustofixo` decimal(10,2) DEFAULT NULL,
  `auxpercentualcomissao` decimal(10,2) DEFAULT NULL,
  `etapa` varchar(50) DEFAULT NULL,
  `tmpncm` varchar(8) DEFAULT NULL,
  `bcicmsfrete` decimal(10,2) DEFAULT NULL,
  `ordemitem` int(11) DEFAULT NULL,
  `produtolicitado` varchar(20) DEFAULT NULL,
  `configuracao` varchar(20) DEFAULT NULL,
  `tmpcredito` decimal(10,2) DEFAULT NULL,
  `unidadetributada` varchar(10) DEFAULT NULL,
  `quantidadetributada` decimal(20,7) DEFAULT NULL,
  `tabelatributada` decimal(15,6) DEFAULT NULL,
  `tmpcodigocor` varchar(50) DEFAULT NULL,
  `tmpcodigotamanho` varchar(50) DEFAULT NULL,
  `bcfcpst` decimal(10,2) DEFAULT NULL,
  `pfcpst` decimal(10,2) DEFAULT NULL,
  `vfcpst` decimal(10,2) DEFAULT NULL,
  `nfseitemlista` varchar(20) DEFAULT NULL,
  `nfsededucoes` decimal(15,2) DEFAULT NULL,
  `pissretido` decimal(10,2) DEFAULT NULL,
  `cstpiscofinsnaturezadaoperacao` tinyint(1) DEFAULT '0',
  `valoricmsdiferido` decimal(15,2) DEFAULT '0.00',
  `percentualdiferimento` decimal(15,5) DEFAULT '0.00000',
  `metrosquadrados` decimal(15,5) DEFAULT '0.00000',
  `tmpvmv` decimal(15,5) DEFAULT '0.00000',
  `tmpcodigoprodutopai` varchar(50) DEFAULT NULL,
  `cbenef` varchar(20) DEFAULT NULL,
  `atributo` varchar(50) DEFAULT NULL,
  `unidadebaixa` varchar(50) DEFAULT NULL,
  `quantidadebaixa` decimal(20,6) DEFAULT '0.000000',
  `basedecalculoipi` decimal(20,6) DEFAULT '0.000000',
  `preducaobcicmsst` decimal(20,6) DEFAULT '0.000000',
  `cubagem` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`codigo`),
  KEY `atendimento` (`atendimento`),
  KEY `item` (`item`),
  KEY `codigoproduto` (`codigoproduto`),
  KEY `codigo` (`codigo`),
  KEY `codigoequipamentoos` (`codigoequipamentoos`),
  KEY `vendedor` (`vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=10369592 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.itensatendimentosatributos
CREATE TABLE IF NOT EXISTS `itensatendimentosatributos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itematendimento` int(11) DEFAULT NULL,
  `atributo` varchar(50) DEFAULT NULL,
  `valor` varchar(1000) DEFAULT NULL,
  `adicional` decimal(10,2) DEFAULT NULL,
  `observacoes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.itensatendimentospersonalizacao
CREATE TABLE IF NOT EXISTS `itensatendimentospersonalizacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itematendimento` int(11) DEFAULT NULL,
  `personalizacao` varchar(50) DEFAULT NULL,
  `obsevacao` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.itensatendimentosvariacoesvalores
CREATE TABLE IF NOT EXISTS `itensatendimentosvariacoesvalores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itematendimento` int(11) DEFAULT '1',
  `variacao` varchar(50) DEFAULT NULL,
  `valor` varchar(50) DEFAULT '',
  `configuracao` varchar(50) DEFAULT NULL,
  `estavariacaoepartede` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `valoradicional` decimal(10,2) DEFAULT NULL,
  `valordecimal` decimal(15,3) DEFAULT NULL,
  `itematendimentoantesdesalvar` int(11) DEFAULT '1',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=1799 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.itensdeclaracaoimportacao
CREATE TABLE IF NOT EXISTS `itensdeclaracaoimportacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itematendimento` varchar(50) DEFAULT NULL,
  `numerodi` varchar(50) DEFAULT NULL,
  `dataregistro` varchar(50) DEFAULT NULL,
  `localdesembaraco` varchar(50) DEFAULT NULL,
  `ufdesembaraco` varchar(50) DEFAULT NULL,
  `datadesembaraco` varchar(50) DEFAULT NULL,
  `codigoexportador` varchar(50) DEFAULT NULL,
  `numeroadicao` varchar(50) DEFAULT NULL,
  `codigofabricante` varchar(50) DEFAULT NULL,
  `viatransporte` varchar(3) DEFAULT NULL,
  `valorafrmm` decimal(20,3) DEFAULT NULL,
  `formaimportacao` varchar(3) DEFAULT NULL,
  `cfpcnpjadquirente` varchar(20) DEFAULT NULL,
  `ufadquirente` varchar(20) DEFAULT NULL,
  `valordescontodi` decimal(20,3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.itenspontuacao
CREATE TABLE IF NOT EXISTS `itenspontuacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `produto` varchar(150) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `pontosunitario` decimal(10,2) DEFAULT NULL,
  `totalpontos` decimal(10,2) DEFAULT NULL,
  `datalancamentoitem` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.leituradearquivos
CREATE TABLE IF NOT EXISTS `leituradearquivos` (
  `codigo` varchar(11) NOT NULL,
  `nomearquivo` varchar(200) DEFAULT NULL,
  `processado` varchar(5) DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `empresa` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.leituradearquivositens
CREATE TABLE IF NOT EXISTS `leituradearquivositens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoarquivo` varchar(11) DEFAULT NULL,
  `codigocoligada` varchar(3) DEFAULT NULL,
  `seunumero` varchar(30) DEFAULT NULL,
  `numerodocumento` varchar(10) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `valorbruto` decimal(11,2) DEFAULT NULL,
  `valorbolsa` decimal(11,2) DEFAULT NULL,
  `valorliquido` decimal(11,2) DEFAULT NULL,
  `cpfcnpjsacado` varchar(20) DEFAULT NULL,
  `nomerazaosocialsacado` varchar(40) DEFAULT NULL,
  `endereco` varchar(40) DEFAULT NULL,
  `numero` varchar(6) DEFAULT NULL,
  `complemento` varchar(10) DEFAULT NULL,
  `bairro` varchar(15) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `nomealuno` varchar(60) DEFAULT NULL,
  `emissao` date DEFAULT NULL,
  `turma` varchar(20) DEFAULT NULL,
  `descricaoservico` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.leiturascontratosjogosmesa
CREATE TABLE IF NOT EXISTS `leiturascontratosjogosmesa` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigocontrato` varchar(10) DEFAULT '0',
  `dataleitura` datetime DEFAULT NULL,
  `ultimaleitura` decimal(10,2) DEFAULT '0.00',
  `leituranadata` decimal(10,2) DEFAULT '0.00',
  `fichas` decimal(10,2) DEFAULT '0.00',
  `valordaficha` decimal(10,2) DEFAULT '0.00',
  `valorcobrado` decimal(10,2) DEFAULT '0.00',
  `subtotal` decimal(10,2) DEFAULT '0.00',
  `desconto` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `tipodocontrato` varchar(50) DEFAULT NULL,
  `valormensal` decimal(10,2) DEFAULT '0.00',
  `observacoes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.leiturascontratosjukebox
CREATE TABLE IF NOT EXISTS `leiturascontratosjukebox` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigocontrato` varchar(10) DEFAULT NULL,
  `dataleitura` date DEFAULT NULL,
  `ultimaleitura` decimal(10,2) DEFAULT NULL,
  `leituranadata` decimal(10,2) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `valormusica` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `desconto` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `creditos` decimal(10,2) DEFAULT NULL,
  `percentualcobrado` decimal(10,2) DEFAULT NULL,
  `valorrecebido` decimal(10,2) DEFAULT NULL,
  `comissaopaga` decimal(10,2) DEFAULT NULL,
  `regracomissao` varchar(50) DEFAULT NULL,
  `valormensal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.liberacaoacessos
CREATE TABLE IF NOT EXISTS `liberacaoacessos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `solicitante` varchar(50) DEFAULT NULL,
  `solicitacao` varchar(255) DEFAULT NULL,
  `situacao` varchar(20) DEFAULT NULL,
  `usuarioliberacao` varchar(50) DEFAULT NULL,
  `datahora` datetime DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.locaisdecobranca
CREATE TABLE IF NOT EXISTS `locaisdecobranca` (
  `codigo` varchar(10) NOT NULL,
  `localdecobranca` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.loericaprodutosresumo
CREATE TABLE IF NOT EXISTS `loericaprodutosresumo` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `resumo` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,0) DEFAULT NULL,
  `valorunitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.logacertosconsignacoes
CREATE TABLE IF NOT EXISTS `logacertosconsignacoes` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `vendida` decimal(10,2) DEFAULT NULL,
  `unitario` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `reposto` decimal(10,2) DEFAULT NULL,
  `novo` decimal(10,2) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.logsincronizacao
CREATE TABLE IF NOT EXISTS `logsincronizacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `numeropedido` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `obs` text,
  `errosistema` text,
  `sistema` varchar(50) DEFAULT NULL,
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.lotericaitens
CREATE TABLE IF NOT EXISTS `lotericaitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `resumo` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `tabela` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.lotericaprodutos
CREATE TABLE IF NOT EXISTS `lotericaprodutos` (
  `codigo` varchar(50) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `codigogrupo` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.lotericaresumo
CREATE TABLE IF NOT EXISTS `lotericaresumo` (
  `codigo` varchar(50) NOT NULL,
  `data` date DEFAULT NULL,
  `operador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.lotes
CREATE TABLE IF NOT EXISTS `lotes` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(20) DEFAULT NULL,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `numerolote` varchar(50) DEFAULT NULL,
  `datafabricacao` date DEFAULT NULL,
  `datavalidade` date DEFAULT NULL,
  `quantidade` decimal(20,7) DEFAULT NULL,
  `movimentoestoque` int(10) DEFAULT NULL,
  `item` int(20) DEFAULT NULL,
  `descricaoproduto` varchar(300) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `origem` varchar(20) DEFAULT NULL,
  `quantidadebaixa` decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.lotescadastro
CREATE TABLE IF NOT EXISTS `lotescadastro` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `lote` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `datafabricacao` date DEFAULT NULL,
  `datavalidade` date DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `quantidadefabricada` decimal(10,2) DEFAULT NULL,
  `laboratorio` varchar(50) DEFAULT NULL,
  `datacadastro` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.lotesfechamentocaixas
CREATE TABLE IF NOT EXISTS `lotesfechamentocaixas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `dataabertura` date DEFAULT NULL,
  `horaabertura` time DEFAULT NULL,
  `datafechamento` date DEFAULT NULL,
  `horafechamento` time DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.lotesmateriaprima
CREATE TABLE IF NOT EXISTS `lotesmateriaprima` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `lote` varchar(50) DEFAULT NULL,
  `materiaprima` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `lotemateriaprima` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.lotessetores
CREATE TABLE IF NOT EXISTS `lotessetores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `lote` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `dataentrada` date DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `entregue` decimal(10,3) DEFAULT NULL,
  `perda` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.maladiretacolaborador
CREATE TABLE IF NOT EXISTS `maladiretacolaborador` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `nomemaladireta` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.manifestacaodestinatario
CREATE TABLE IF NOT EXISTS `manifestacaodestinatario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT NULL,
  `chavedeacesso` varchar(50) DEFAULT NULL,
  `tipoevento` varchar(60) DEFAULT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `retornosefaz` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.maodeobra
CREATE TABLE IF NOT EXISTS `maodeobra` (
  `codigo` varchar(13) NOT NULL,
  `descricao` varchar(130) DEFAULT NULL,
  `unidade` varchar(25) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.maodeobraprodutos
CREATE TABLE IF NOT EXISTS `maodeobraprodutos` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(13) NOT NULL,
  `codigomaodeobra` varchar(13) NOT NULL,
  `quantidademaodeobra` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mapadecarga
CREATE TABLE IF NOT EXISTS `mapadecarga` (
  `codigo` varchar(50) NOT NULL,
  `datalancamento` date DEFAULT NULL,
  `motorista` varchar(50) DEFAULT NULL,
  `datasaida` date DEFAULT NULL,
  `dataretorno` date DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `veiculo` varchar(50) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `materiaprimabaixada` varchar(50) DEFAULT NULL,
  `diferenca` decimal(15,2) DEFAULT NULL,
  `debito` decimal(15,2) DEFAULT NULL,
  `credito` decimal(15,2) DEFAULT NULL,
  `totalatendimentosparaacerto` decimal(15,2) DEFAULT NULL,
  `totalatendimentosautomatico` tinyint(1) DEFAULT '0',
  `colaborador` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'NÃO Faturado',
  `totalnf` decimal(10,2) DEFAULT NULL,
  `observacoes2` varchar(1000) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `quantidadeprodutosmapa` decimal(12,2) DEFAULT '0.00',
  `emproducao` decimal(12,2) DEFAULT '0.00',
  `produzidas` decimal(12,2) DEFAULT '0.00',
  `prazo` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mapadecargaadicionais
CREATE TABLE IF NOT EXISTS `mapadecargaadicionais` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mapa` varchar(50) DEFAULT NULL,
  `adicional` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mapadecargaapontamentoproducao
CREATE TABLE IF NOT EXISTS `mapadecargaapontamentoproducao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mapa` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricaoproduto` varchar(255) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `apontamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mapadecargaatendimentos
CREATE TABLE IF NOT EXISTS `mapadecargaatendimentos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `mapa` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mapadecargaatendimentosordemproducao
CREATE TABLE IF NOT EXISTS `mapadecargaatendimentosordemproducao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mapa` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `atendimentobaixamateriaprima` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mapadecargaenvioproducao
CREATE TABLE IF NOT EXISTS `mapadecargaenvioproducao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mapadecarga` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricaoproduto` varchar(255) DEFAULT NULL,
  `quantidadeenviada` decimal(10,4) DEFAULT NULL,
  `dataenvioproducao` date DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mapadecargaoutrosvalores
CREATE TABLE IF NOT EXISTS `mapadecargaoutrosvalores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `mapadecarga` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `valor` double(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.marcas
CREATE TABLE IF NOT EXISTS `marcas` (
  `codigo` varchar(10) NOT NULL,
  `marca` varchar(130) DEFAULT NULL,
  `codigoadicional` varchar(130) DEFAULT NULL,
  `markup` varchar(20) DEFAULT NULL,
  `id_opencart` varchar(20) DEFAULT NULL,
  `enviar_opencart` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.markup
CREATE TABLE IF NOT EXISTS `markup` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `markup` varchar(50) DEFAULT NULL,
  `custofixo` decimal(10,2) DEFAULT NULL,
  `lucrodesejado` decimal(10,2) DEFAULT NULL,
  `usarsugestao` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.materiais
CREATE TABLE IF NOT EXISTS `materiais` (
  `codigo` varchar(10) NOT NULL,
  `material` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mdfe
CREATE TABLE IF NOT EXISTS `mdfe` (
  `codigo` varchar(11) NOT NULL DEFAULT '',
  `modelo` varchar(2) DEFAULT NULL,
  `serie` int(11) DEFAULT NULL,
  `numeromdfe` varchar(50) DEFAULT NULL,
  `dataemissao` date DEFAULT NULL,
  `horaemissao` time DEFAULT NULL,
  `dataes` date DEFAULT NULL,
  `horaes` time DEFAULT NULL,
  `uf` varchar(50) DEFAULT NULL,
  `tipoemitente` varchar(50) DEFAULT NULL,
  `modalidade` varchar(50) DEFAULT NULL,
  `formaemissao` varchar(50) DEFAULT NULL,
  `totalcterelacionado` decimal(10,2) DEFAULT NULL,
  `totalnferelacionado` decimal(10,2) DEFAULT NULL,
  `totalnfmod1relacionado` decimal(10,2) DEFAULT NULL,
  `valortotalmercadoria` decimal(10,2) DEFAULT NULL,
  `unidademedida` varchar(10) DEFAULT NULL,
  `pesobrutototal` decimal(10,4) DEFAULT NULL,
  `ufdescarregamento` varchar(2) DEFAULT NULL,
  `rntrc` varchar(50) DEFAULT NULL,
  `codigodeagendamentodoporto` varchar(50) DEFAULT NULL,
  `codigointernodoveiculo` varchar(50) DEFAULT NULL,
  `ufveiculo` varchar(2) DEFAULT NULL,
  `tipocarroceria` varchar(50) DEFAULT NULL,
  `tiporodado` varchar(50) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `capacidadekg` decimal(10,4) DEFAULT NULL,
  `tara` decimal(10,4) DEFAULT NULL,
  `capacidadem3` decimal(10,4) DEFAULT NULL,
  `renavam` varchar(50) DEFAULT NULL,
  `chave` varchar(50) DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `recibo` varchar(50) DEFAULT NULL,
  `protocolo` varchar(50) DEFAULT NULL,
  `ciot` varchar(50) DEFAULT NULL,
  `cpfcnpjciot` varchar(20) DEFAULT NULL,
  `cpfcnpjciotcontratante` varchar(20) DEFAULT NULL,
  `responsavelseguro` varchar(100) DEFAULT NULL,
  `cpfcnpjresponsavelseguro` varchar(20) DEFAULT NULL,
  `seguradora` varchar(100) DEFAULT NULL,
  `cnpjseguradora` varchar(20) DEFAULT NULL,
  `numeroapolice` varchar(30) DEFAULT NULL,
  `numeroaverbacao` varchar(40) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tipocarga` varchar(30) DEFAULT NULL,
  `codigoprodutopredominante` varchar(20) DEFAULT NULL,
  `produtopredominante` varchar(120) DEFAULT NULL,
  `codigoeanprodutopredominante` varchar(20) DEFAULT NULL,
  `ncmprodutopredominante` varchar(8) DEFAULT NULL,
  `cepcarregamento` varchar(10) DEFAULT NULL,
  `cepdescarregamento` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mdfecondutores
CREATE TABLE IF NOT EXISTS `mdfecondutores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigomdfe` varchar(11) DEFAULT NULL,
  `nomecondutor` varchar(50) DEFAULT NULL,
  `cpfcondutor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mdfecte
CREATE TABLE IF NOT EXISTS `mdfecte` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigomdfe` varchar(11) DEFAULT NULL,
  `codigocidade` varchar(50) DEFAULT NULL,
  `chavedeacesso` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mdfelocalcarregamento
CREATE TABLE IF NOT EXISTS `mdfelocalcarregamento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigomdfe` varchar(11) DEFAULT NULL,
  `codigocidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mdfemunicipiodescarregamento
CREATE TABLE IF NOT EXISTS `mdfemunicipiodescarregamento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigomdfe` varchar(11) DEFAULT NULL,
  `codigocidade` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mdfenfe
CREATE TABLE IF NOT EXISTS `mdfenfe` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigomdfe` varchar(11) DEFAULT NULL,
  `codigocidade` varchar(50) DEFAULT NULL,
  `chavedeacesso` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mdfereboque
CREATE TABLE IF NOT EXISTS `mdfereboque` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigomdfe` varchar(11) DEFAULT NULL,
  `codigointernoveiculo` varchar(50) DEFAULT NULL,
  `uf` varchar(50) DEFAULT NULL,
  `tipocarroceria` varchar(50) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `capacidadekg` decimal(10,4) DEFAULT NULL,
  `tara` decimal(10,4) DEFAULT NULL,
  `capacidadem3` decimal(10,4) DEFAULT NULL,
  `renavam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mdfeufsdopercurso
CREATE TABLE IF NOT EXISTS `mdfeufsdopercurso` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigomdfe` varchar(11) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.medicos
CREATE TABLE IF NOT EXISTS `medicos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `crm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.metas
CREATE TABLE IF NOT EXISTS `metas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nomedameta` varchar(50) DEFAULT NULL,
  `datainicial` date DEFAULT NULL,
  `datafinal` date DEFAULT NULL,
  `valormeta` decimal(10,2) DEFAULT NULL,
  `vendedor` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Faturado',
  `tipodocumento` varchar(50) DEFAULT 'Todos',
  `tipodadata` varchar(50) DEFAULT 'Faturamento',
  `statusdameta` varchar(50) DEFAULT 'Ativo',
  `totalizador` varchar(50) DEFAULT 'Total da Nota',
  `vendascompartilhadas` tinyint(1) DEFAULT NULL,
  `descontardevolucoesdevenda` tinyint(1) DEFAULT '0',
  `painel` tinyint(1) DEFAULT '1',
  `acumularproximomes` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.metasmensais
CREATE TABLE IF NOT EXISTS `metasmensais` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `meta` varchar(50) DEFAULT NULL,
  `mes` varchar(50) DEFAULT NULL,
  `valor` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.movimentocontabil
CREATE TABLE IF NOT EXISTS `movimentocontabil` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigocontacontabil` varchar(25) DEFAULT NULL,
  `debito` decimal(14,2) DEFAULT NULL,
  `credito` decimal(14,2) DEFAULT NULL,
  `codigohistorico` varchar(25) DEFAULT NULL,
  `empresa` varchar(25) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `numerodocumento` varchar(45) DEFAULT NULL,
  `atendimento` varchar(25) DEFAULT NULL,
  `observacoes` varchar(300) DEFAULT NULL,
  `contrapartida` varchar(25) DEFAULT NULL,
  `codigocontareceberpagar` varchar(25) DEFAULT NULL,
  `codigolancamentocontabil` varchar(25) DEFAULT NULL,
  `tipodocumento` varchar(25) DEFAULT NULL,
  `centrodecusto` varchar(25) DEFAULT NULL,
  `lancamento` date DEFAULT NULL,
  `competencia` date DEFAULT NULL,
  `valepresente` varchar(50) DEFAULT NULL,
  `odometroinicial` decimal(10,2) DEFAULT NULL,
  `odometrofinal` decimal(10,2) DEFAULT NULL,
  `quantidadecombustivel` decimal(10,2) DEFAULT NULL,
  `turma` varchar(20) DEFAULT NULL,
  `lote` varchar(20) DEFAULT NULL,
  `deducaodevenda` tinyint(1) DEFAULT '0',
  `hora` time DEFAULT NULL,
  `datahora` datetime DEFAULT NULL,
  `mapadecarga` varchar(50) DEFAULT NULL,
  `hashquitacao` varchar(20) DEFAULT NULL,
  `nsu` varchar(20) DEFAULT NULL,
  `grupoorcamentocentrodecusto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `codigocontacontabil` (`codigocontacontabil`),
  KEY `codigohistorico` (`codigohistorico`),
  KEY `atendimento` (`atendimento`),
  KEY `contrapartida` (`contrapartida`),
  KEY `codigocontareceberpagar` (`codigocontareceberpagar`),
  KEY `codigolancamentocontabil` (`codigolancamentocontabil`),
  KEY `centrodecusto` (`centrodecusto`)
) ENGINE=InnoDB AUTO_INCREMENT=1077265 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.movimentoestoque
CREATE TABLE IF NOT EXISTS `movimentoestoque` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `tipomovimentacao` varchar(10) DEFAULT NULL,
  `qnt` decimal(12,4) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `origemoudestino` varchar(130) DEFAULT NULL,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `atendimento` varchar(10) DEFAULT NULL,
  `observacoes` varchar(2000) DEFAULT NULL,
  `documento` varchar(20) DEFAULT '',
  `lote` varchar(50) DEFAULT NULL,
  `empresa` varchar(10) DEFAULT '1',
  `usuario` varchar(50) DEFAULT '1',
  `loteproducao` varchar(50) DEFAULT '',
  `tmpsaldo` decimal(12,4) DEFAULT NULL,
  `motivomovimento` varchar(15) DEFAULT 'Atendimento',
  `tmpentrada` decimal(12,4) DEFAULT NULL,
  `tmpsaida` decimal(12,4) DEFAULT NULL,
  `valor` decimal(12,4) DEFAULT NULL,
  `itementregafutura` varchar(20) DEFAULT NULL,
  `variacao` varchar(20) DEFAULT NULL,
  `estoque` varchar(20) DEFAULT '1',
  `tmpqnt` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `codigoproduto` (`codigoproduto`),
  KEY `codigocolaborador` (`codigocolaborador`),
  KEY `atendimento` (`atendimento`)
) ENGINE=InnoDB AUTO_INCREMENT=16011846 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.movimentoestoquemanual
CREATE TABLE IF NOT EXISTS `movimentoestoquemanual` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `movimento` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.mudancadehistoricodecolaboradores
CREATE TABLE IF NOT EXISTS `mudancadehistoricodecolaboradores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaboradororigem` varchar(50) DEFAULT NULL,
  `colaboradordestino` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.naturezasdaoperacao
CREATE TABLE IF NOT EXISTS `naturezasdaoperacao` (
  `codigo` varchar(10) NOT NULL,
  `naturezaoperacao` varchar(130) DEFAULT NULL,
  `tipomovimentacao` varchar(7) DEFAULT NULL,
  `financeiro` varchar(3) DEFAULT NULL,
  `substituicao` varchar(3) DEFAULT NULL,
  `tiponota` varchar(25) DEFAULT NULL,
  `operacao` varchar(25) DEFAULT NULL,
  `estoque` varchar(25) DEFAULT NULL,
  `atendimentodeorigemobrigatorio` tinyint(1) DEFAULT '0',
  `faturamentoentregafutura` varchar(50) DEFAULT NULL,
  `utilizarregrasdocadastrodeestados` tinyint(1) DEFAULT '1',
  `cfopcte` varchar(4) DEFAULT NULL,
  `contacontabil` varchar(20) DEFAULT NULL,
  `chavereferenciadaobrigatoria` tinyint(1) DEFAULT '0',
  `cstcte` varchar(3) DEFAULT NULL,
  `tmpselecionadaprocessarestoque` varchar(10) DEFAULT NULL,
  `situacao` varchar(10) DEFAULT 'Ativo',
  `entradareferenteestoqueterceiro` tinyint(1) DEFAULT '0',
  `saidareferenteestoqueterceiro` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.naturezasdaoperacaoicms
CREATE TABLE IF NOT EXISTS `naturezasdaoperacaoicms` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stproduto` varchar(3) DEFAULT NULL,
  `stnanota` varchar(3) DEFAULT NULL,
  `cfopestadual` varchar(4) DEFAULT NULL,
  `cfopestadualisentos` varchar(4) DEFAULT NULL,
  `icms` varchar(10) DEFAULT NULL,
  `icmsisentos` varchar(10) DEFAULT NULL,
  `stnotainterestatual` varchar(3) DEFAULT NULL,
  `cfopinterestadual` varchar(4) DEFAULT NULL,
  `cfopinterestadualisentos` varchar(4) DEFAULT NULL,
  `icmsinterestadual` varchar(10) DEFAULT NULL,
  `icmsisentosinterestadual` varchar(10) DEFAULT NULL,
  `codigonatureza` varchar(10) DEFAULT NULL,
  `substituicaotributaria` varchar(3) DEFAULT NULL,
  `stnotaisentoestadual` varchar(3) DEFAULT NULL,
  `stnotaisentointerestadual` varchar(3) DEFAULT NULL,
  `stparaufsemconveniost` varchar(3) DEFAULT NULL,
  `cfopparaufsemconveniost` varchar(4) DEFAULT NULL,
  `icmsporproduto` tinyint(1) DEFAULT NULL,
  `stpis` varchar(2) DEFAULT NULL,
  `stcofins` varchar(2) DEFAULT NULL,
  `informacoesadicionais` varchar(200) DEFAULT NULL,
  `aplicarcstpisecofinsnfe` tinyint(1) DEFAULT '0',
  `reducaobasecalculocontribuinte` decimal(12,5) DEFAULT NULL,
  `observacoesnotacontribuinte` varchar(255) DEFAULT NULL,
  `percentualdiferimento` decimal(12,5) DEFAULT NULL,
  `observacaonotainterestadualisetos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ncm
CREATE TABLE IF NOT EXISTS `ncm` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `ncm` varchar(8) DEFAULT NULL,
  `informacoes` varchar(2000) DEFAULT NULL,
  `incidenciapis` varchar(3) DEFAULT NULL,
  `codigoauxiliar` varchar(10) DEFAULT NULL,
  `icms` varchar(10) DEFAULT NULL,
  `pst` varchar(10) DEFAULT NULL,
  `informacoesnotafiscal` varchar(200) DEFAULT NULL,
  `stpis` varchar(2) DEFAULT NULL,
  `ppis` decimal(10,2) DEFAULT NULL,
  `stcofins` varchar(2) DEFAULT NULL,
  `pcofins` decimal(10,2) DEFAULT NULL,
  `sticms` varchar(10) DEFAULT NULL,
  `mvamarkup` decimal(10,2) DEFAULT NULL,
  `mvamarkupimportados` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=100012 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ncmcest
CREATE TABLE IF NOT EXISTS `ncmcest` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ncm` varchar(50) DEFAULT NULL,
  `cest` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=45099 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ncmmva
CREATE TABLE IF NOT EXISTS `ncmmva` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigoncm` int(10) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `mva` decimal(10,6) DEFAULT NULL,
  `aliquotaicms` decimal(10,6) DEFAULT NULL,
  `reducaosimples` decimal(10,6) DEFAULT NULL,
  `ncmsecundario` varchar(10) DEFAULT NULL,
  `mvasubstitutotributario` decimal(10,6) DEFAULT NULL,
  `diferimento` decimal(10,6) DEFAULT NULL,
  `aliquotaicmsproprio` decimal(10,6) DEFAULT NULL,
  `aliquotaicmspessoafisica` decimal(10,6) DEFAULT NULL,
  `st` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `stpessoafisica` varchar(50) DEFAULT NULL,
  `cfoppessoafisica` varchar(50) DEFAULT NULL,
  `reducaobcst` decimal(10,6) DEFAULT NULL,
  `reducaobcicms` decimal(10,6) DEFAULT NULL,
  `icmsnaocontribuinte` decimal(10,6) DEFAULT NULL,
  `icmsproprionaocontribuinte` decimal(10,6) DEFAULT NULL,
  `strevendedorpessoafisica` varchar(50) DEFAULT NULL,
  `cfoprevendedorpessoafisica` varchar(50) DEFAULT NULL,
  `icmspropriorevendedorpessoafisica` decimal(10,6) DEFAULT NULL,
  `mvamei` decimal(10,6) DEFAULT NULL,
  `icmsmei` decimal(10,6) DEFAULT NULL,
  `stmei` varchar(50) DEFAULT NULL,
  `cfopmei` varchar(50) DEFAULT NULL,
  `icmspropriomei` decimal(10,6) DEFAULT NULL,
  `ampara` decimal(10,6) DEFAULT NULL,
  `cargamedia` decimal(10,6) DEFAULT NULL,
  `observacaonota` varchar(1000) DEFAULT NULL,
  `storgaopublico` varchar(50) DEFAULT NULL,
  `cfoporgaopublico` varchar(50) DEFAULT NULL,
  `icmsorgaopublico` varchar(50) DEFAULT NULL,
  `icmsproprioorgaopublico` varchar(50) DEFAULT NULL,
  `observacoesorgaopublico` varchar(1000) DEFAULT NULL,
  `stipi` varchar(2) DEFAULT NULL,
  `percentualipi` decimal(10,6) DEFAULT NULL,
  `descontoorgaopublico` decimal(10,6) DEFAULT NULL,
  `ppis` decimal(10,6) DEFAULT NULL,
  `stpis` varchar(10) DEFAULT NULL,
  `pcofins` decimal(10,6) DEFAULT NULL,
  `stcofins` varchar(10) DEFAULT NULL,
  `percentualauxiliarprecofinal` varchar(10) DEFAULT NULL,
  `operacao` varchar(20) DEFAULT 'Venda',
  `zonafrancamva` decimal(10,6) DEFAULT NULL,
  `zonafrancast` varchar(50) DEFAULT NULL,
  `zonafrancacfop` varchar(50) DEFAULT NULL,
  `zonafrancaicmsufdestino` decimal(10,6) DEFAULT NULL,
  `zonafrancaicmsproprio` decimal(10,6) DEFAULT NULL,
  `zonafrancapis` decimal(10,6) DEFAULT NULL,
  `zonafrancacofins` decimal(10,6) DEFAULT NULL,
  `zonafrancastpis` varchar(50) DEFAULT NULL,
  `zonafrancastcofins` varchar(50) DEFAULT NULL,
  `zonafrancaobsnota` varchar(100) DEFAULT NULL,
  `consumidorcontribuintest` varchar(2) DEFAULT NULL,
  `consumidorcontribuintecfop` varchar(4) DEFAULT NULL,
  `consumidorcontribuinteicms` decimal(10,6) DEFAULT NULL,
  `consumidorcontribuinteicmsproprio` decimal(10,6) DEFAULT NULL,
  `consumidorcontribuinteobs` varchar(100) DEFAULT NULL,
  `industrializacaost` varchar(2) DEFAULT NULL,
  `industrializacaocfop` varchar(4) DEFAULT NULL,
  `industrializacaoicms` decimal(10,6) DEFAULT NULL,
  `industrializacaoicmsproprio` decimal(10,6) DEFAULT NULL,
  `industrializacaomva` decimal(10,6) DEFAULT NULL,
  `industrializacaoobsnota` varchar(100) DEFAULT NULL,
  `consumidorcontribuintemva` decimal(10,6) DEFAULT NULL,
  `stpis_contribuinte` varchar(10) DEFAULT NULL,
  `ppis_contribuinte` decimal(10,6) DEFAULT NULL,
  `stcofins_contribuinte` varchar(10) NOT NULL,
  `pcofins_contribuinte` decimal(10,6) DEFAULT NULL,
  `stipi_contribuinte` varchar(10) DEFAULT NULL,
  `pipi_contribuinte` decimal(10,6) DEFAULT NULL,
  `obs_contribuinte` text,
  `pdiferimento_contribuinte` decimal(10,6) DEFAULT NULL,
  `stpis_naocontribuinte` varchar(50) DEFAULT NULL,
  `ppis_naocontribuinte` decimal(10,6) DEFAULT NULL,
  `stcofins_naocontribuinte` varchar(10) DEFAULT NULL,
  `pcofins_naocontribuinte` decimal(10,6) DEFAULT NULL,
  `stipi_naocontribuinte` varchar(10) DEFAULT NULL,
  `pipi_naocontribuinte` decimal(10,6) DEFAULT NULL,
  `obs_naocontribuinte` text,
  `stpis_consumidorcontribuinte` varchar(10) DEFAULT NULL,
  `ppis_consumidorcontribuinte` decimal(10,6) DEFAULT NULL,
  `stcofins_consumidorcontribuinte` varchar(10) DEFAULT NULL,
  `pcofins_consumidorcontribuinte` decimal(10,6) DEFAULT NULL,
  `stipi_consumidorcontribuinte` varchar(10) DEFAULT NULL,
  `pipi_consumidorcontribuinte` decimal(10,6) DEFAULT NULL,
  `stpis_revendapf` varchar(10) DEFAULT NULL,
  `ppis_revendapf` decimal(10,6) DEFAULT NULL,
  `stcofins_revendapf` varchar(10) DEFAULT NULL,
  `pcofins_revendapf` decimal(10,6) DEFAULT NULL,
  `stipi_revendapf` varchar(10) DEFAULT NULL,
  `pipi_revendapf` decimal(10,6) DEFAULT NULL,
  `obs_revendapf` text,
  `stpis_industrializacao` varchar(10) DEFAULT NULL,
  `ppis_industrializacao` decimal(10,6) DEFAULT NULL,
  `stcofins_industrializacao` varchar(10) DEFAULT NULL,
  `pcofins_industrializacao` decimal(10,6) DEFAULT NULL,
  `stipi_industrializacao` varchar(10) DEFAULT NULL,
  `pipi_industrializacao` decimal(10,6) DEFAULT NULL,
  `pdiferimento_industrializacao` decimal(10,6) DEFAULT NULL,
  `cbenef` varchar(10) DEFAULT NULL,
  `ipinabaseicms` varchar(10) DEFAULT 'NÃO',
  `ipinabaseicms_contrinuinte` varchar(10) DEFAULT 'NÃO',
  `ipinabaseicms_consumidorcontrinuinte` varchar(10) DEFAULT 'NÃO',
  `ipinabaseicms_industrializacao` varchar(10) DEFAULT 'NÃO',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4893 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ncmtributos
CREATE TABLE IF NOT EXISTS `ncmtributos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ncm` varchar(50) DEFAULT NULL,
  `nacional` decimal(10,2) DEFAULT NULL,
  `importado` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `ncm` (`ncm`)
) ENGINE=InnoDB AUTO_INCREMENT=11442 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.negociacaoouro
CREATE TABLE IF NOT EXISTS `negociacaoouro` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocolaborador` varchar(13) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `perda` decimal(10,4) DEFAULT NULL,
  `quantidadeliquida` decimal(10,4) DEFAULT NULL,
  `maodeobragrama` decimal(10,4) DEFAULT NULL,
  `totalmaodeobra` decimal(10,4) DEFAULT NULL,
  `pesocompra` decimal(10,4) DEFAULT NULL,
  `saldo` decimal(10,4) DEFAULT NULL,
  `cotacao` decimal(10,4) DEFAULT NULL,
  `totalcotacao` decimal(10,4) DEFAULT NULL,
  `valortotal` decimal(10,4) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.nfseclassificacao
CREATE TABLE IF NOT EXISTS `nfseclassificacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `classificacao` varchar(10) DEFAULT NULL,
  `descricao` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.niveis
CREATE TABLE IF NOT EXISTS `niveis` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.notapromissoria
CREATE TABLE IF NOT EXISTS `notapromissoria` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.notapromissoriaatendimento
CREATE TABLE IF NOT EXISTS `notapromissoriaatendimento` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `emissao` varchar(200) DEFAULT NULL,
  `vencimento` varchar(200) DEFAULT NULL,
  `valor` varchar(200) DEFAULT NULL,
  `pagara` varchar(200) DEFAULT NULL,
  `cnpjcpfpagara` varchar(200) DEFAULT NULL,
  `localdepagamento` varchar(200) DEFAULT NULL,
  `nomeemitente` varchar(200) DEFAULT NULL,
  `cnpjcpfemitente` varchar(200) DEFAULT NULL,
  `valorporextenso` varchar(200) DEFAULT NULL,
  `enderecoemitente` varchar(200) DEFAULT NULL,
  `atendimento` varchar(200) DEFAULT NULL,
  `parcela` varchar(200) DEFAULT NULL,
  `nota` varchar(200) DEFAULT NULL,
  `nomeavalista` varchar(200) DEFAULT NULL,
  `cpfavalista` varchar(200) DEFAULT NULL,
  `enderecoavalista` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.numerodeserie
CREATE TABLE IF NOT EXISTS `numerodeserie` (
  `codigo` varchar(50) NOT NULL DEFAULT '',
  `produto` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `numerodeserie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.observacoes
CREATE TABLE IF NOT EXISTS `observacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeobservacao` varchar(50) DEFAULT NULL,
  `observacao` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ocorrencias
CREATE TABLE IF NOT EXISTS `ocorrencias` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `ocorrencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ocorrenciasbanco
CREATE TABLE IF NOT EXISTS `ocorrenciasbanco` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(50) DEFAULT NULL,
  `descricaoocorrencia` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ocorrenciasbanco2
CREATE TABLE IF NOT EXISTS `ocorrenciasbanco2` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(50) DEFAULT NULL,
  `descricaoocorrencia` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ocorrenciasbancodobrasil
CREATE TABLE IF NOT EXISTS `ocorrenciasbancodobrasil` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(50) DEFAULT NULL,
  `descricaoocorrencia` varchar(50) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `descricaomotivo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ocorrenciasbanrisul
CREATE TABLE IF NOT EXISTS `ocorrenciasbanrisul` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(50) DEFAULT NULL,
  `descricaoocorrencia` varchar(200) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `descricaomotivo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ocorrenciasmotivos
CREATE TABLE IF NOT EXISTS `ocorrenciasmotivos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(50) DEFAULT NULL,
  `descricaoocorrencia` varchar(200) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `descricaomotivo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ocorrenciasretornodebitoautomatico
CREATE TABLE IF NOT EXISTS `ocorrenciasretornodebitoautomatico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(50) DEFAULT NULL,
  `descricaoocorrencia` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ocorrenciassicoob240
CREATE TABLE IF NOT EXISTS `ocorrenciassicoob240` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(50) DEFAULT NULL,
  `descricaoocorrencia` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ocorrenciasunicred
CREATE TABLE IF NOT EXISTS `ocorrenciasunicred` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(50) DEFAULT NULL,
  `descricaoocorrencia` varchar(200) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `descricaomotivo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.operacoesordemdeservicooptica
CREATE TABLE IF NOT EXISTS `operacoesordemdeservicooptica` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(11) DEFAULT NULL,
  `marcarelogios` varchar(50) DEFAULT NULL,
  `referenciarelogios` varchar(50) DEFAULT NULL,
  `tipoarmacaorelogios` varchar(50) DEFAULT NULL,
  `observacaopecarelogios` varchar(1000) DEFAULT NULL,
  `servicosaexecutarrelogios` varchar(1000) DEFAULT NULL,
  `laudotecnicorelogios` varchar(1000) DEFAULT NULL,
  `autorizadorelogios` varchar(10) DEFAULT NULL,
  `dataautorizacaorelogios` date DEFAULT NULL,
  `situacaorelogios` varchar(10) DEFAULT NULL,
  `tipojoias` varchar(50) DEFAULT NULL,
  `pesojoias` decimal(10,4) DEFAULT NULL,
  `tamanhojoias` varchar(10) DEFAULT NULL,
  `kilagemjoias` decimal(10,4) DEFAULT NULL,
  `observacaopecajoias` varchar(1000) DEFAULT NULL,
  `servicosaexecutarjoias` varchar(1000) DEFAULT NULL,
  `laudotecnicojoias` varchar(1000) DEFAULT NULL,
  `autorizadojoias` varchar(10) DEFAULT NULL,
  `dataautorizacaojoias` date DEFAULT NULL,
  `situacaojoias` varchar(10) DEFAULT NULL,
  `dataprevisao` date DEFAULT NULL,
  `horaprevisao` time DEFAULT NULL,
  `odesf` varchar(50) DEFAULT NULL,
  `odcil` varchar(50) DEFAULT NULL,
  `odeixo` varchar(50) DEFAULT NULL,
  `oddnp` varchar(50) DEFAULT NULL,
  `odaltura` varchar(50) DEFAULT NULL,
  `oeesf` varchar(50) DEFAULT NULL,
  `oecil` varchar(50) DEFAULT NULL,
  `oeeixo` varchar(50) DEFAULT NULL,
  `oednp` varchar(50) DEFAULT NULL,
  `oealtura` varchar(50) DEFAULT NULL,
  `alturaverticalarmacao` varchar(50) DEFAULT NULL,
  `medidadiagonal` varchar(50) DEFAULT NULL,
  `tamanhohorizontal` varchar(50) DEFAULT NULL,
  `ponte` varchar(50) DEFAULT NULL,
  `tipoarmacao` varchar(50) DEFAULT NULL,
  `medico` varchar(50) DEFAULT NULL,
  `datareceita` date DEFAULT NULL,
  `angulopant` varchar(50) DEFAULT NULL,
  `curvatura` varchar(50) DEFAULT NULL,
  `olhodom` varchar(10) DEFAULT NULL,
  `distancialeitura` varchar(50) DEFAULT NULL,
  `crood` varchar(50) DEFAULT NULL,
  `crooe` varchar(50) DEFAULT NULL,
  `coeficienteolhos` varchar(20) DEFAULT NULL,
  `situacaooptica` varchar(50) DEFAULT NULL,
  `generorelogio` varchar(50) DEFAULT NULL,
  `maquinarelogio` varchar(50) DEFAULT NULL,
  `modelorelogio` varchar(50) DEFAULT NULL,
  `kilatagemouroentreguejoias1` varchar(50) DEFAULT NULL,
  `quantidadeouroentreguejoias1` decimal(10,4) DEFAULT NULL,
  `totalliquidoouroentreguejoias1` decimal(10,4) DEFAULT NULL,
  `kilatagemouroentreguejoias2` varchar(50) DEFAULT NULL,
  `quantidadeouroentreguejoias2` decimal(10,4) DEFAULT NULL,
  `totalliquidoouroentreguejoias2` decimal(10,4) DEFAULT NULL,
  `postura` varchar(50) DEFAULT NULL,
  `adicaood` varchar(50) DEFAULT NULL,
  `adicaooe` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `laboratorio` varchar(500) DEFAULT NULL,
  `tipoordemdeservico` varchar(50) DEFAULT NULL,
  `estabilidade` varchar(50) DEFAULT NULL,
  `crmmedico` varchar(50) DEFAULT NULL,
  `item` varchar(3) DEFAULT '1',
  `odesfperto` varchar(50) DEFAULT NULL,
  `odcilperto` varchar(50) DEFAULT NULL,
  `odeixoperto` varchar(50) DEFAULT NULL,
  `oddnpperto` varchar(50) DEFAULT NULL,
  `odalturaperto` varchar(50) DEFAULT NULL,
  `odadicaoperto` varchar(50) DEFAULT NULL,
  `oeesfperto` varchar(50) DEFAULT NULL,
  `oecilperto` varchar(50) DEFAULT NULL,
  `oeeixoperto` varchar(50) DEFAULT NULL,
  `oednpperto` varchar(50) DEFAULT NULL,
  `oealturaperto` varchar(50) DEFAULT NULL,
  `oeadicaoperto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.operacoesordemdeservicoseguradoras
CREATE TABLE IF NOT EXISTS `operacoesordemdeservicoseguradoras` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(11) DEFAULT NULL,
  `codigocondutor` varchar(11) DEFAULT NULL,
  `codigocorretor` varchar(11) DEFAULT NULL,
  `attseguro` varchar(50) DEFAULT NULL,
  `ordemsinistro` varchar(50) DEFAULT NULL,
  `veiculo` varchar(50) DEFAULT NULL,
  `anomodelo` varchar(10) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `chassi` varchar(50) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(1000) DEFAULT NULL,
  `codigonegociador` varchar(11) DEFAULT NULL,
  `valornegociado` decimal(10,4) DEFAULT NULL,
  `previsaochegada` date DEFAULT NULL,
  `mensagemalerta` varchar(1000) DEFAULT NULL,
  `codigofornecedor` varchar(11) DEFAULT NULL,
  `vendedor` varchar(11) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `datacompra` date DEFAULT NULL,
  `prazoentrega` date DEFAULT NULL,
  `orcamentocotacao` varchar(1000) DEFAULT NULL,
  `dataagendada` date DEFAULT NULL,
  `horario` time DEFAULT NULL,
  `servicomovel` varchar(1000) DEFAULT NULL,
  `horachegada` time DEFAULT NULL,
  `previsaoentrega` time DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horatermino` time DEFAULT NULL,
  `codigotecnicoresponsavel` varchar(11) DEFAULT NULL,
  `laudotecnico` varchar(1000) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `statusos` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ordemproducaodetalhamento
CREATE TABLE IF NOT EXISTS `ordemproducaodetalhamento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `valorcomplemento` varchar(100) DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ordemproducaoesquadriasobservacoes
CREATE TABLE IF NOT EXISTS `ordemproducaoesquadriasobservacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(10) DEFAULT NULL,
  `observacoesprensagemfolha` varchar(1000) DEFAULT NULL,
  `tituloprensagemfolha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ordemproducaoinstalacao
CREATE TABLE IF NOT EXISTS `ordemproducaoinstalacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  `ambiente` varchar(50) DEFAULT NULL,
  `largura` decimal(10,4) DEFAULT NULL,
  `altura` decimal(10,4) DEFAULT NULL,
  `base` varchar(20) DEFAULT NULL,
  `caixa` decimal(10,4) DEFAULT NULL,
  `lado` varchar(10) DEFAULT NULL,
  `largurafinal` decimal(10,4) DEFAULT NULL,
  `alturafinal` decimal(10,4) DEFAULT NULL,
  `medidasemrebaixo` decimal(10,4) DEFAULT NULL,
  `quantidadepecasverticais` decimal(10,4) DEFAULT NULL,
  `medidacortepecasverticais` decimal(10,4) DEFAULT NULL,
  `quantidadepecashorizontais` decimal(10,4) DEFAULT NULL,
  `medidacortepecashorizontais` decimal(10,4) DEFAULT NULL,
  `larguraprensar` decimal(10,4) DEFAULT NULL,
  `alturaprensar` decimal(10,4) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `quantidadeguarnicoes` decimal(10,4) DEFAULT NULL,
  `larguraguarnicoes` decimal(10,4) DEFAULT NULL,
  `alturafora` decimal(10,4) DEFAULT NULL,
  `alturadentro` decimal(10,4) DEFAULT NULL,
  `quantidadeguarnicoes2` decimal(10,4) DEFAULT NULL,
  `larguraguarnicoes2` decimal(10,4) DEFAULT NULL,
  `comprimentofora` decimal(10,4) DEFAULT NULL,
  `comprimentodentro` decimal(10,4) DEFAULT NULL,
  `codigoporta` decimal(10,4) DEFAULT NULL,
  `materal` varchar(20) DEFAULT NULL,
  `observacoesprensagemfolha` varchar(50) DEFAULT NULL,
  `mdf12` decimal(10,4) DEFAULT NULL,
  `mdf25` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ordemproducaoinstalacao2
CREATE TABLE IF NOT EXISTS `ordemproducaoinstalacao2` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  `ambiente` varchar(50) DEFAULT NULL,
  `largura` decimal(10,4) DEFAULT NULL,
  `altura` decimal(10,4) DEFAULT NULL,
  `caixa` decimal(10,4) DEFAULT NULL,
  `largurafinal` decimal(10,4) DEFAULT NULL,
  `alturafinal` decimal(10,4) DEFAULT NULL,
  `quantidadepecasverticais` decimal(10,4) DEFAULT NULL,
  `medidacortepecasverticais` decimal(10,4) DEFAULT NULL,
  `quantidadepecashorizontais` decimal(10,4) DEFAULT NULL,
  `medidacortepecashorizontais` decimal(10,4) DEFAULT NULL,
  `medidatrilho` decimal(10,4) DEFAULT NULL,
  `quantidadevertical` decimal(10,4) DEFAULT NULL,
  `medidavertical` decimal(10,4) DEFAULT NULL,
  `quantidadehorizontal` decimal(10,4) DEFAULT NULL,
  `medidahorizontal` decimal(10,4) DEFAULT NULL,
  `codigoporta` decimal(10,4) DEFAULT NULL,
  `mdf12` decimal(10,4) DEFAULT NULL,
  `mdf25` decimal(10,4) DEFAULT NULL,
  `medidalarguraprensar` decimal(10,4) DEFAULT NULL,
  `medidaalturaprensar` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.pagamentoterceiros
CREATE TABLE IF NOT EXISTS `pagamentoterceiros` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contaquitada` varchar(20) DEFAULT NULL,
  `contautilizada` varchar(20) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.paises
CREATE TABLE IF NOT EXISTS `paises` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopais` varchar(50) DEFAULT NULL,
  `nomepais` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=614 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.parcelasacrescimos
CREATE TABLE IF NOT EXISTS `parcelasacrescimos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `parcelas` int(11) DEFAULT NULL,
  `acrescimo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.pdv
CREATE TABLE IF NOT EXISTS `pdv` (
  `codigo` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `codigocolaborador` varchar(50) DEFAULT NULL,
  `nomecolaborador` varchar(100) DEFAULT NULL,
  `cpfcnpj` varchar(20) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `codigovendedor` varchar(10) DEFAULT NULL,
  `valortotal` decimal(20,7) DEFAULT '0.0000000',
  `atendimento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.pdvitens
CREATE TABLE IF NOT EXISTS `pdvitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopdv` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(11) DEFAULT NULL,
  `produto` varchar(150) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `tabela` decimal(20,7) DEFAULT NULL,
  `total` decimal(20,7) DEFAULT NULL,
  `tabelacomdesconto` decimal(20,7) DEFAULT NULL,
  `totalcomdesconto` decimal(20,7) DEFAULT NULL,
  `vmv` decimal(20,7) DEFAULT NULL,
  `vmvtotal` decimal(20,7) DEFAULT NULL,
  `cmv` decimal(20,7) DEFAULT NULL,
  `cmvtotal` decimal(20,7) DEFAULT NULL,
  `cmvreal` decimal(20,7) DEFAULT NULL,
  `cmvrealtotal` decimal(20,7) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.pendenciascolaboradores
CREATE TABLE IF NOT EXISTS `pendenciascolaboradores` (
  `codigo` int(10) unsigned NOT NULL DEFAULT '0',
  `datasolicitacao` date DEFAULT NULL,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `codigoproduto` varchar(10) DEFAULT NULL,
  `quantidadedesejada` decimal(10,4) DEFAULT NULL,
  `valornegociado` decimal(10,4) DEFAULT NULL,
  `codigousuario` varchar(10) DEFAULT NULL,
  `produto` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.pet
CREATE TABLE IF NOT EXISTS `pet` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(20) DEFAULT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `apelido` varchar(20) DEFAULT NULL,
  `especie` varchar(20) DEFAULT NULL,
  `raca` varchar(20) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `castrado` tinyint(4) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `pelagem` varchar(20) DEFAULT NULL,
  `microship` varchar(20) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `porte` varchar(50) DEFAULT NULL,
  `localizacaomicrochip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petanexos
CREATE TABLE IF NOT EXISTS `petanexos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pet` varchar(20) DEFAULT NULL,
  `nomeanexo` varchar(200) DEFAULT NULL,
  `arquivo` varchar(500) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petatestados
CREATE TABLE IF NOT EXISTS `petatestados` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopet` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `nomevacina` varchar(50) DEFAULT NULL,
  `fabricante` varchar(50) DEFAULT NULL,
  `numerolote` varchar(50) DEFAULT NULL,
  `datavacinacao` date DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `medicoveterinario` varchar(200) DEFAULT NULL,
  `numerocrmv` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petautorizacao
CREATE TABLE IF NOT EXISTS `petautorizacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopet` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `medicoveterinario` varchar(200) DEFAULT NULL,
  `procedimento` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petexames
CREATE TABLE IF NOT EXISTS `petexames` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopet` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `exame` varchar(50) DEFAULT NULL,
  `valornormal` varchar(50) DEFAULT NULL,
  `resultado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petfarmacos
CREATE TABLE IF NOT EXISTS `petfarmacos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigofichaanestesica` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `farmaco` varchar(200) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petfichaanestesica
CREATE TABLE IF NOT EXISTS `petfichaanestesica` (
  `codigo` varchar(50) NOT NULL DEFAULT '',
  `codigopet` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `peso` decimal(10,4) DEFAULT NULL,
  `cirurgia` varchar(200) DEFAULT NULL,
  `frequenciac` varchar(500) DEFAULT NULL,
  `frequenciar` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petmedicacaoposoperatorio
CREATE TABLE IF NOT EXISTS `petmedicacaoposoperatorio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigofichaanestesica` varchar(50) DEFAULT NULL,
  `medicacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petpesagem
CREATE TABLE IF NOT EXISTS `petpesagem` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopet` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `peso` double(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petreceituario
CREATE TABLE IF NOT EXISTS `petreceituario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopet` varchar(50) DEFAULT NULL,
  `viaadministracao` varchar(100) DEFAULT NULL,
  `medicamento` varchar(200) DEFAULT NULL,
  `posologia` varchar(200) DEFAULT NULL,
  `mododeadministracao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petrelatorioclinico
CREATE TABLE IF NOT EXISTS `petrelatorioclinico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopet` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `relatorioclinico` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.pettemperatura
CREATE TABLE IF NOT EXISTS `pettemperatura` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigofichaanestesica` varchar(50) DEFAULT NULL,
  `temperatura` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petvacinas
CREATE TABLE IF NOT EXISTS `petvacinas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopet` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `vacina` varchar(50) DEFAULT NULL,
  `dose` varchar(10) DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.petvermifugos
CREATE TABLE IF NOT EXISTS `petvermifugos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopet` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `vermifugo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.postit
CREATE TABLE IF NOT EXISTS `postit` (
  `codigo` varchar(20) NOT NULL,
  `postit` varchar(200) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.postitusuarios
CREATE TABLE IF NOT EXISTS `postitusuarios` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `postit` varchar(10) DEFAULT NULL,
  `selecionado` varchar(10) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `lido` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.potenciaiscolaboradores
CREATE TABLE IF NOT EXISTS `potenciaiscolaboradores` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigocolaborador` varchar(45) DEFAULT NULL,
  `codigoproduto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.prazomediopedidominimo
CREATE TABLE IF NOT EXISTS `prazomediopedidominimo` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `prazomedioinicial` varchar(50) DEFAULT NULL,
  `prazomediofinal` varchar(50) DEFAULT NULL,
  `pedidominimo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.processos
CREATE TABLE IF NOT EXISTS `processos` (
  `codigo` varchar(13) NOT NULL DEFAULT '0',
  `descricao` varchar(100) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `tempo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.processosequipamentos
CREATE TABLE IF NOT EXISTS `processosequipamentos` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigoprocesso` varchar(13) DEFAULT NULL,
  `codigoequipamento` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.processositensatendimentos
CREATE TABLE IF NOT EXISTS `processositensatendimentos` (
  `codigo` int(13) NOT NULL AUTO_INCREMENT,
  `codigoitematendimento` varchar(20) DEFAULT NULL,
  `codigoprocesso` varchar(20) DEFAULT NULL,
  `valor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.processosprodutos
CREATE TABLE IF NOT EXISTS `processosprodutos` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `codigoprocesso` varchar(20) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT '1.000',
  `ordem` int(10) DEFAULT NULL,
  `tempo` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=1100 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoeservicoscodigosassociados
CREATE TABLE IF NOT EXISTS `produtoeservicoscodigosassociados` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `codigoassociado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoscomissoesvendedores
CREATE TABLE IF NOT EXISTS `produtoscomissoesvendedores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `codigovendedor` varchar(50) DEFAULT NULL,
  `comissao` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoscomplementos
CREATE TABLE IF NOT EXISTS `produtoscomplementos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(13) DEFAULT '0',
  `hd` varchar(10) DEFAULT '0',
  `genero` varchar(10) DEFAULT '0',
  `moedeiro` varchar(10) DEFAULT '0',
  `noteiro` varchar(10) DEFAULT '0',
  `monitor` varchar(10) DEFAULT '0',
  `placa` varchar(10) DEFAULT '0',
  `altofalante` varchar(10) DEFAULT '0',
  `rele` varchar(10) DEFAULT '0',
  `tw` varchar(10) DEFAULT '0',
  `amplificador` varchar(10) DEFAULT '0',
  `software` varchar(10) DEFAULT '0',
  `int` varchar(10) DEFAULT '0',
  `cor` varchar(10) DEFAULT '0',
  `corcaixa` varchar(10) DEFAULT '0',
  `cordoquadro` varchar(10) DEFAULT '0',
  `pedra` varchar(10) DEFAULT '0',
  `pano` varchar(10) DEFAULT '0',
  `numeroabcf` varchar(50) DEFAULT '0',
  `numeroaprova` varchar(50) DEFAULT '0',
  `coletor` varchar(10) DEFAULT '0',
  `lampada` varchar(10) DEFAULT '0',
  `cultura` varchar(100) DEFAULT NULL,
  `dosagem` varchar(100) DEFAULT NULL,
  `equipamento` varchar(100) DEFAULT NULL,
  `carencia` varchar(100) DEFAULT NULL,
  `formulacao` varchar(100) DEFAULT NULL,
  `classe` varchar(100) DEFAULT NULL,
  `diagnostico` varchar(100) DEFAULT NULL,
  `epocaaplicacao` varchar(100) DEFAULT NULL,
  `fitotoxicidade` varchar(100) DEFAULT NULL,
  `toxidade` varchar(100) DEFAULT NULL,
  `ingredienteativo` varchar(100) DEFAULT NULL,
  `concentracao` varchar(100) DEFAULT NULL,
  `observacoes` varchar(3000) DEFAULT NULL,
  `informacaoextra` varchar(50) DEFAULT NULL,
  `porcao` varchar(50) DEFAULT NULL,
  `valorenergetico` varchar(50) DEFAULT NULL,
  `carboidratos` varchar(50) DEFAULT NULL,
  `proteinas` varchar(50) DEFAULT NULL,
  `gordurastotais` varchar(50) DEFAULT NULL,
  `gordurassaturadas` varchar(50) DEFAULT NULL,
  `gordurastrans` varchar(50) DEFAULT NULL,
  `fibraalimentar` varchar(50) DEFAULT NULL,
  `sodio` varchar(50) DEFAULT NULL,
  `valorenergeticokj` varchar(50) DEFAULT NULL,
  `indicecotacao` decimal(10,4) DEFAULT NULL,
  `pesoourocotacao` decimal(10,4) DEFAULT NULL,
  `cotacao` decimal(10,4) DEFAULT NULL,
  `descontocotacao` decimal(10,4) DEFAULT NULL,
  `kilatagemcotacao` varchar(50) DEFAULT NULL,
  `compradiacotacao` decimal(10,4) DEFAULT NULL,
  `custocotacao` decimal(10,4) DEFAULT NULL,
  `indicevendacotacao` decimal(10,4) DEFAULT NULL,
  `valorgramacotacao` decimal(10,4) DEFAULT NULL,
  `calcularmanualmenteindicevendacotacao` tinyint(1) DEFAULT '0',
  `tipodapedra` varchar(50) DEFAULT NULL,
  `quantidadedepedras` varchar(50) DEFAULT NULL,
  `pontuacaodapedra` varchar(50) DEFAULT NULL,
  `pontuacaototal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicos
CREATE TABLE IF NOT EXISTS `produtoseservicos` (
  `codigo` varchar(25) NOT NULL,
  `tipo` varchar(25) DEFAULT NULL,
  `situacao` varchar(25) DEFAULT NULL,
  `datacadastro` datetime DEFAULT NULL,
  `codigogrupo` varchar(100) DEFAULT NULL,
  `codigosubgrupo` varchar(25) DEFAULT NULL,
  `codigoprincipalfornecedor` varchar(100) DEFAULT NULL,
  `descricao` varchar(130) DEFAULT NULL,
  `valormercadoria` decimal(12,4) DEFAULT NULL,
  `lucrodesejado` decimal(12,4) DEFAULT NULL,
  `custoreal` decimal(12,4) DEFAULT NULL,
  `sugestao` decimal(12,4) DEFAULT NULL,
  `praticado` decimal(12,4) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `codigodepartamento` varchar(25) DEFAULT NULL,
  `unidade` varchar(25) DEFAULT NULL,
  `embalagem` varchar(25) DEFAULT NULL,
  `codigocor` varchar(25) DEFAULT NULL,
  `codigotamanho` varchar(25) DEFAULT NULL,
  `registroms` varchar(25) DEFAULT NULL,
  `codigomarca` varchar(100) DEFAULT NULL,
  `codigocolecao` varchar(25) DEFAULT NULL,
  `tempoentrega` varchar(25) DEFAULT NULL,
  `codigoean` varchar(25) DEFAULT NULL,
  `codigoramoatividade` varchar(25) DEFAULT NULL,
  `codigosetor` varchar(25) DEFAULT NULL,
  `listaprecos` varchar(3) DEFAULT NULL,
  `promocao` varchar(3) DEFAULT NULL,
  `precopromocao` decimal(12,4) DEFAULT NULL,
  `validadepromocao` date DEFAULT NULL,
  `especificacoestecnicas` varchar(2000) DEFAULT NULL,
  `auxiliarpesquisa` varchar(2000) DEFAULT NULL,
  `creditoicms` decimal(12,4) DEFAULT NULL,
  `aliquotaicms` decimal(12,4) DEFAULT NULL,
  `diferencaicms` decimal(12,4) DEFAULT NULL,
  `ipi` decimal(12,4) DEFAULT NULL,
  `fretesobrecompras` decimal(12,4) DEFAULT NULL,
  `fretesobrevendas` decimal(12,4) DEFAULT NULL,
  `comissao` decimal(12,4) DEFAULT NULL,
  `aliquotasubstituicao` decimal(12,4) DEFAULT NULL,
  `customercadoria` decimal(12,6) DEFAULT NULL,
  `classificacaofiscal` varchar(8) DEFAULT NULL,
  `origemmercadoria` varchar(1) DEFAULT NULL,
  `situacaotributaria` varchar(4) DEFAULT NULL,
  `markup` decimal(12,4) DEFAULT NULL,
  `descontoautomatico` decimal(12,4) DEFAULT NULL,
  `descontomaximo` decimal(12,4) DEFAULT NULL,
  `estoqueideal` decimal(12,4) DEFAULT NULL,
  `estoqueminimo` decimal(12,4) DEFAULT NULL,
  `estoquedesejado` decimal(12,4) DEFAULT NULL,
  `entrada` decimal(12,4) DEFAULT '0.0000',
  `saida` decimal(12,4) DEFAULT '0.0000',
  `saldo` decimal(12,4) DEFAULT '0.0000',
  `ultimacompra` date DEFAULT NULL,
  `pesoliquido` decimal(12,8) DEFAULT NULL,
  `pesobruto` decimal(12,8) DEFAULT NULL,
  `usartabelas` varchar(3) DEFAULT NULL,
  `usarsugestao` varchar(3) DEFAULT NULL,
  `codigoca` varchar(10) DEFAULT NULL,
  `praticado2` decimal(12,4) DEFAULT NULL,
  `reducaobcicmsestadual` decimal(12,4) DEFAULT NULL,
  `reducaobcicmsinterestadual` decimal(12,4) DEFAULT NULL,
  `codigointerno` varchar(25) NOT NULL,
  `aplicacao` varchar(2000) DEFAULT NULL,
  `localizacao` varchar(200) DEFAULT NULL,
  `tipomarkup` varchar(50) DEFAULT NULL,
  `validade` datetime DEFAULT NULL,
  `sequencia` int(11) NOT NULL AUTO_INCREMENT,
  `observacoes` varchar(300) DEFAULT NULL,
  `pis` decimal(12,4) DEFAULT NULL,
  `cofins` decimal(12,4) DEFAULT NULL,
  `stpis` varchar(50) DEFAULT NULL,
  `stcofins` varchar(50) DEFAULT NULL,
  `simulado1` decimal(10,4) DEFAULT NULL,
  `simulado2` decimal(10,4) DEFAULT NULL,
  `simulado3` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida1` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida2` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida3` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida4` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida5` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida6` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida7` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida8` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida9` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida10` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida11` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida12` decimal(10,4) DEFAULT NULL,
  `cfopespecificavendaestado` varchar(4) DEFAULT NULL,
  `cfopespecificavendainterestadual` varchar(4) DEFAULT NULL,
  `pesoembalagem` decimal(10,4) DEFAULT NULL,
  `quantidadeembalagem` varchar(50) DEFAULT NULL,
  `estoquedisponivel` decimal(10,4) DEFAULT NULL,
  `codigonumerico` decimal(20,0) DEFAULT NULL,
  `observacaoparaetiqueta` varchar(100) DEFAULT NULL,
  `parcelas` varchar(10) DEFAULT NULL,
  `divisor` varchar(10) DEFAULT NULL,
  `tmplogoetiquetas` blob,
  `tipodoitem` varchar(2) DEFAULT NULL,
  `generodoitem` varchar(10) DEFAULT NULL,
  `codigodoservico` varchar(10) DEFAULT NULL,
  `precomaximoconsumidor` decimal(10,4) DEFAULT NULL,
  `itemespecifico` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `site` tinyint(1) DEFAULT NULL,
  `usaremcondicional` varchar(3) DEFAULT NULL,
  `ultimaalteracao` date DEFAULT NULL,
  `grupoparanotafiscaleletronica` varchar(50) DEFAULT NULL,
  `outrasdespesas` decimal(10,4) DEFAULT NULL,
  `praticado3` decimal(10,4) DEFAULT '0.0000',
  `controlarestoque` varchar(3) DEFAULT 'Sim',
  `codigoadicional` varchar(20) DEFAULT NULL,
  `tmpterminal` varchar(20) DEFAULT NULL,
  `numerodeserie` varchar(100) DEFAULT NULL,
  `tmpbalaco` decimal(10,2) DEFAULT NULL,
  `tempo` decimal(10,2) DEFAULT '0.00',
  `tmpfornecedor` varchar(200) DEFAULT NULL,
  `tmpnota` varchar(200) DEFAULT NULL,
  `validadeemtempo` varchar(50) DEFAULT NULL,
  `centrodecustos` varchar(50) DEFAULT NULL,
  `area` decimal(10,2) DEFAULT NULL,
  `tmpsimples` decimal(10,2) DEFAULT NULL,
  `tmpcustofixo` decimal(10,2) DEFAULT NULL,
  `tmpdespesasvariaveis` decimal(10,2) DEFAULT NULL,
  `tmpmarkupsemlucro` decimal(10,2) DEFAULT NULL,
  `tmpipi` decimal(10,2) DEFAULT NULL,
  `tmpfretesobrecompras` decimal(10,2) DEFAULT NULL,
  `tmpcreditoicms` decimal(10,2) DEFAULT NULL,
  `tmpdiferencaicms` decimal(10,2) DEFAULT NULL,
  `tmpaliquotasubstituicao` decimal(10,2) DEFAULT NULL,
  `tmpoutrasdespesas` decimal(10,2) DEFAULT NULL,
  `iss` decimal(10,2) DEFAULT NULL,
  `ir` decimal(10,2) DEFAULT NULL,
  `csll` decimal(10,2) DEFAULT NULL,
  `inss` decimal(10,2) DEFAULT NULL,
  `issretido` decimal(10,2) DEFAULT NULL,
  `deducoes` decimal(10,2) DEFAULT NULL,
  `comissaotabela2` decimal(10,2) DEFAULT NULL,
  `comissaotabela3` decimal(10,2) DEFAULT NULL,
  `issretidointermunicipal` decimal(10,2) DEFAULT NULL,
  `ultimavenda` date DEFAULT NULL,
  `tmpemissao` date DEFAULT NULL,
  `tmpentrada` decimal(10,2) DEFAULT NULL,
  `tmpsaida` decimal(10,2) DEFAULT NULL,
  `tmpinventario` decimal(10,2) DEFAULT NULL,
  `ecf` varchar(50) DEFAULT NULL,
  `nomecomercial` varchar(100) DEFAULT NULL,
  `tipodois` varchar(100) DEFAULT NULL,
  `outrosimpostos` decimal(10,2) DEFAULT NULL,
  `tmpdivisor` decimal(10,2) DEFAULT NULL,
  `tmpvalordivido` decimal(10,2) DEFAULT NULL,
  `dcb` varchar(50) DEFAULT NULL,
  `fabricante` varchar(50) DEFAULT NULL,
  `impressora` varchar(50) DEFAULT NULL,
  `tmpempresa` varchar(50) DEFAULT NULL,
  `observacoes2` varchar(100) DEFAULT NULL,
  `observacoes3` varchar(100) DEFAULT NULL,
  `observacoes4` varchar(100) DEFAULT NULL,
  `tmpquantidadeembalagem` decimal(10,4) DEFAULT NULL,
  `alteracao` tinyint(1) DEFAULT NULL,
  `destacar` varchar(10) DEFAULT NULL,
  `valormanual` decimal(10,2) DEFAULT NULL,
  `tmpentradaestoquemanual` decimal(10,2) DEFAULT NULL,
  `tmpsaidaestoquemanual` decimal(10,2) DEFAULT NULL,
  `tmpsaldoestoquemanual` decimal(10,2) DEFAULT NULL,
  `familia` varchar(20) DEFAULT NULL,
  `estoquemaximo` decimal(10,4) DEFAULT NULL,
  `loteeconomico` decimal(10,4) DEFAULT NULL,
  `balanca` tinyint(1) DEFAULT NULL,
  `descontosimulado` decimal(10,2) DEFAULT NULL,
  `tmpatendimento` varchar(50) DEFAULT NULL,
  `descricaocomplementar` varchar(50) DEFAULT NULL,
  `precominimo` decimal(10,2) DEFAULT NULL,
  `vendafracionada` tinyint(1) DEFAULT '1',
  `status2` varchar(50) DEFAULT NULL,
  `imovel` tinyint(1) DEFAULT '0',
  `dataestoqueminimo` date DEFAULT NULL,
  `catalogo` tinyint(1) DEFAULT '1',
  `calculadiferencaicms` tinyint(1) DEFAULT '1',
  `percentualcustoautomatico` decimal(10,4) DEFAULT NULL,
  `cnae` varchar(10) DEFAULT NULL,
  `codigoserviconfse` varchar(10) DEFAULT NULL,
  `descontocompra` decimal(10,4) DEFAULT NULL,
  `tmpcustomedio` decimal(10,4) DEFAULT NULL,
  `mensagemalerta` varchar(130) DEFAULT NULL,
  `nve` varchar(6) DEFAULT NULL,
  `producaoescalarelevante` varchar(3) DEFAULT NULL,
  `codigobeneficiofiscal` varchar(10) DEFAULT NULL,
  `kit` tinyint(1) DEFAULT '0',
  `valorinstalacao` decimal(10,2) DEFAULT NULL,
  `linhasagenda` varchar(2) DEFAULT NULL,
  `fragil` tinyint(1) DEFAULT '0',
  `exipi` varchar(10) DEFAULT NULL,
  `codigoanp` varchar(9) DEFAULT NULL,
  `tmpcapacidadeproducao` decimal(10,4) DEFAULT NULL,
  `tmpkit` varchar(1) DEFAULT NULL,
  `tmpquantidadepedido` decimal(10,4) DEFAULT NULL,
  `reservas` decimal(10,4) DEFAULT NULL,
  `codigograde` varchar(10) DEFAULT NULL,
  `numeronota` varchar(10) DEFAULT NULL,
  `clienteinstalado` varchar(200) DEFAULT NULL,
  `patrimonio` varchar(10) DEFAULT NULL,
  `custoadicional` decimal(10,4) DEFAULT NULL,
  `valoraluguel` decimal(10,4) DEFAULT NULL,
  `franquia` decimal(10,4) DEFAULT NULL,
  `valoradicional` decimal(10,4) DEFAULT NULL,
  `variacao` tinyint(1) DEFAULT '0',
  `vbcstret` decimal(10,4) DEFAULT NULL,
  `pst` decimal(10,4) DEFAULT NULL COMMENT 'Para Fins de Calculo da Retencao',
  `valorstret` decimal(10,4) DEFAULT NULL,
  `garantia` varchar(3) DEFAULT NULL,
  `validadegarantia` varchar(20) DEFAULT NULL,
  `tmpmva` decimal(10,2) DEFAULT NULL,
  `custogerencial` decimal(10,2) DEFAULT NULL,
  `codigograde2` varchar(10) DEFAULT NULL,
  `codigograde3` varchar(10) DEFAULT NULL,
  `tmpvendas` decimal(10,2) DEFAULT '0.00',
  `tmpdevolucaovendas` decimal(10,2) DEFAULT '0.00',
  `tmpcompras` decimal(10,2) DEFAULT '0.00',
  `tmptransferenciaentrada` decimal(10,2) DEFAULT '0.00',
  `tmptranferenciasaida` decimal(10,2) DEFAULT '0.00',
  `tmpsaldo` decimal(10,2) DEFAULT '0.00',
  `tmpsaldofinal` decimal(10,2) DEFAULT '0.00',
  `tmpauditoria` decimal(10,2) DEFAULT '0.00',
  `praticado4` decimal(10,2) DEFAULT '0.00',
  `praticado5` decimal(10,2) DEFAULT '0.00',
  `especie` varchar(50) DEFAULT NULL,
  `cultivar` varchar(50) DEFAULT NULL,
  `informacaodoitemnanota` varchar(600) DEFAULT NULL,
  `tmauxiliartabeladeprecos` varchar(2) DEFAULT '1',
  `tmpestoqueantesdaauditoria` decimal(10,2) DEFAULT '0.00',
  `selecionadogestaoestoque` varchar(1) DEFAULT 'X',
  `lucrodesejadop2` decimal(10,2) DEFAULT '0.00',
  `codigosiasg` varchar(20) DEFAULT NULL,
  `numeroministeriosaude` varchar(20) DEFAULT NULL,
  `tmptemimagem` tinyint(1) DEFAULT '0',
  `largura` varchar(20) DEFAULT NULL,
  `altura` varchar(20) DEFAULT NULL,
  `comprimento` varchar(20) DEFAULT NULL,
  `classificacaoitemmodelo21` varchar(20) DEFAULT NULL,
  `validarfiscal` tinyint(4) DEFAULT '1',
  `codigoantigo` varchar(25) DEFAULT NULL,
  `calcularvolumes` tinyint(1) DEFAULT '1',
  `calcularitensnoatendimento` tinyint(1) DEFAULT '1',
  `enviadoecommerce` tinyint(1) DEFAULT '0',
  `codigoecommerce` varchar(50) DEFAULT NULL,
  `codigovariacao` varchar(50) DEFAULT NULL,
  `situacaoecommerce` tinyint(1) DEFAULT '0',
  `lancamentoecommerce` tinyint(1) DEFAULT '0',
  `datapublicacao` date DEFAULT NULL,
  `dataexpiracao` date DEFAULT NULL,
  `multiplicador` varchar(10) DEFAULT '1',
  `minimo` varchar(10) DEFAULT '1',
  `descricaolonga` text,
  `opcaovariacao` varchar(100) DEFAULT NULL,
  `variacao1` varchar(100) DEFAULT NULL,
  `variacao2` varchar(100) DEFAULT NULL,
  `referenciaecommerce` varchar(100) DEFAULT NULL,
  `codigocor2` varchar(100) DEFAULT NULL,
  `percentualadicionalparacustoreal` decimal(10,2) DEFAULT NULL,
  `estoquedeterminante` tinyint(1) DEFAULT '1',
  `sku` varchar(50) DEFAULT NULL,
  `produtogenerico` tinyint(1) DEFAULT '0',
  `tmpreservas` decimal(10,4) DEFAULT '0.0000',
  `tmpestoque` decimal(10,2) DEFAULT '0.00',
  `tmpdisponivel` decimal(10,2) DEFAULT '0.00',
  `controlarlote` tinyint(1) DEFAULT '1',
  `tmpsaldoentregafutura` decimal(10,2) DEFAULT NULL,
  `tmpquantidadeatendimento` decimal(10,2) DEFAULT NULL,
  `pontos` tinyint(1) DEFAULT '0',
  `valorpontos` decimal(10,2) DEFAULT NULL,
  `tmpestoqueanterior` decimal(10,2) DEFAULT NULL,
  `tmpcalculandoreservas` decimal(10,2) DEFAULT NULL,
  `praticadoecommerce` decimal(12,4) DEFAULT '0.0000',
  `caminhoimagemecommerce` varchar(200) DEFAULT '',
  `site2` tinyint(1) DEFAULT '0',
  `lucrodesejadop3` decimal(10,2) DEFAULT NULL,
  `valoripi` decimal(10,2) DEFAULT NULL,
  `valorfretesobrecompra` decimal(10,2) DEFAULT NULL,
  `valorst` decimal(10,2) DEFAULT NULL,
  `valoroutrossobrecompra` decimal(10,2) DEFAULT NULL,
  `valoricmsdifal` decimal(10,2) DEFAULT NULL,
  `valoricmscredito` decimal(10,2) DEFAULT NULL,
  `valordesconto` decimal(10,2) DEFAULT NULL,
  `valorsimples` decimal(10,2) DEFAULT NULL,
  `valorfreteentrega` decimal(10,2) DEFAULT NULL,
  `valorcomissao` decimal(10,2) DEFAULT NULL,
  `valorcustofixo` decimal(10,2) DEFAULT NULL,
  `valoroutrosimpostos` decimal(10,2) DEFAULT NULL,
  `valoricmsaliquota` decimal(10,2) DEFAULT NULL,
  `valorpis` decimal(10,2) DEFAULT NULL,
  `valorcofins` decimal(10,2) DEFAULT NULL,
  `valorir` decimal(10,2) DEFAULT NULL,
  `valorcsll` decimal(10,2) DEFAULT NULL,
  `valorlucrodesejado` decimal(10,2) DEFAULT NULL,
  `valordescontosimulado` decimal(10,2) DEFAULT NULL,
  `tmpdiasentrega` int(11) DEFAULT '0',
  `valortotal` decimal(10,2) DEFAULT NULL,
  `valorterceirizacao` decimal(10,2) DEFAULT '0.00',
  `codigomarkup` varchar(10) DEFAULT NULL,
  `depreciacaomensal` decimal(10,4) DEFAULT NULL,
  `mvaparafinsdemarkupnacional` decimal(10,4) DEFAULT NULL,
  `mvaparafinsdemarkupimportado` decimal(10,4) DEFAULT NULL,
  `cubagem` decimal(10,4) DEFAULT '0.0000',
  `inmetro` varchar(30) DEFAULT NULL,
  `id_opencart` varchar(20) DEFAULT NULL,
  `enviar_opencart` tinyint(1) DEFAULT '0',
  `tmpreservasbaixa` decimal(10,4) DEFAULT '0.0000',
  `codigoregraicms` varchar(20) DEFAULT NULL,
  `codigoregraipi` varchar(20) DEFAULT NULL,
  `codigoregrapis` varchar(20) DEFAULT NULL,
  `codigoregracofins` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigointerno`,`codigo`),
  KEY `sequencia` (`sequencia`),
  KEY `codigo` (`codigo`),
  KEY `familia` (`familia`),
  KEY `codigogrupo` (`codigogrupo`),
  KEY `codigosubgrupo` (`codigosubgrupo`),
  KEY `codigoprincipalfornecedor` (`codigoprincipalfornecedor`),
  KEY `tipo` (`tipo`),
  KEY `codigodepartamento` (`codigodepartamento`),
  KEY `codigocor` (`codigocor`),
  KEY `codigotamanho` (`codigotamanho`),
  KEY `codigomarca` (`codigomarca`),
  KEY `codigocolecao` (`codigocolecao`),
  KEY `codigosetor` (`codigosetor`),
  KEY `grupoparanotafiscaleletronica` (`grupoparanotafiscaleletronica`),
  KEY `centrodecustos` (`centrodecustos`)
) ENGINE=InnoDB AUTO_INCREMENT=387159 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosanexos
CREATE TABLE IF NOT EXISTS `produtoseservicosanexos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `nomeanexo` varchar(50) DEFAULT NULL,
  `arquivo` varchar(500) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=893 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosanotacoes
CREATE TABLE IF NOT EXISTS `produtoseservicosanotacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `anotacao` varchar(500) DEFAULT NULL,
  `especificacao` varchar(500) DEFAULT NULL,
  `especificacao2` varchar(500) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosclientes
CREATE TABLE IF NOT EXISTS `produtoseservicosclientes` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigocliente` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `codigoprodutocliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosequipamentos
CREATE TABLE IF NOT EXISTS `produtoseservicosequipamentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `equipamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosfornecedores
CREATE TABLE IF NOT EXISTS `produtoseservicosfornecedores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cnpjfornecedor` varchar(50) DEFAULT '0',
  `codigofornecedor` varchar(50) DEFAULT '0',
  `nossocodigo` varchar(50) DEFAULT '0',
  `descricaofornecedor` varchar(255) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT '0.0000',
  `data` date DEFAULT NULL,
  `observacoes` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=54887 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosimagens
CREATE TABLE IF NOT EXISTS `produtoseservicosimagens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `imagem` longblob,
  `temimagem` varchar(10) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosimagens2
CREATE TABLE IF NOT EXISTS `produtoseservicosimagens2` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `imagem` longblob,
  `temimagem` varchar(10) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosimagensreferencia
CREATE TABLE IF NOT EXISTS `produtoseservicosimagensreferencia` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `imagem` longblob,
  `temimagem` varchar(10) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosinformacoesdestafilial
CREATE TABLE IF NOT EXISTS `produtoseservicosinformacoesdestafilial` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `estoqueminimo` decimal(10,2) DEFAULT NULL,
  `estoquemaximo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `produto` (`produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicossimilares
CREATE TABLE IF NOT EXISTS `produtoseservicossimilares` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(11) DEFAULT NULL,
  `codigoprodutosimilar` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosusuarios
CREATE TABLE IF NOT EXISTS `produtoseservicosusuarios` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosvariacao
CREATE TABLE IF NOT EXISTS `produtoseservicosvariacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `codigocomponente` varchar(20) DEFAULT NULL,
  `quantidade` decimal(10,6) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT 'Diminuir',
  `sugestao` decimal(10,6) DEFAULT NULL,
  `custoreal` decimal(10,6) DEFAULT NULL,
  `quantidadeinicial` decimal(10,6) DEFAULT NULL,
  `quebra` decimal(10,6) DEFAULT NULL,
  `variacao` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosvariacoes
CREATE TABLE IF NOT EXISTS `produtoseservicosvariacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(11) DEFAULT NULL,
  `codigoprodutovariacao` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.produtoseservicosvariacoesvalores
CREATE TABLE IF NOT EXISTS `produtoseservicosvariacoesvalores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `variacao` varchar(50) DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL,
  `configuracao` varchar(50) DEFAULT NULL,
  `valoradicional` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6390 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.profissoes
CREATE TABLE IF NOT EXISTS `profissoes` (
  `codigo` varchar(10) NOT NULL,
  `profissao` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ramosdeatividades
CREATE TABLE IF NOT EXISTS `ramosdeatividades` (
  `codigo` varchar(10) NOT NULL,
  `ramodeatividade` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ramosdeatividadescolaboradores
CREATE TABLE IF NOT EXISTS `ramosdeatividadescolaboradores` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigoramoatividade` varchar(45) DEFAULT NULL,
  `codigocolaborador` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.recebimentopedido
CREATE TABLE IF NOT EXISTS `recebimentopedido` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.recibos
CREATE TABLE IF NOT EXISTS `recibos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `recebemosde` varchar(300) DEFAULT NULL,
  `valor` varchar(300) DEFAULT NULL,
  `referentea` varchar(300) DEFAULT NULL,
  `recebedor` varchar(300) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.reducoes
CREATE TABLE IF NOT EXISTS `reducoes` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `numeroreducao` varchar(50) DEFAULT NULL,
  `reiniciosdeoperacoes` varchar(50) DEFAULT NULL,
  `ultimocupom` varchar(50) DEFAULT NULL,
  `grandetotal` decimal(12,2) DEFAULT NULL,
  `vendabruta` decimal(12,2) DEFAULT NULL,
  `vendaliquida` decimal(12,2) DEFAULT NULL,
  `numeroecfnaloja` varchar(50) DEFAULT '1',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.referenciascolaboradores
CREATE TABLE IF NOT EXISTS `referenciascolaboradores` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigocolaborador` varchar(20) NOT NULL,
  `tipo` varchar(25) NOT NULL,
  `nomereferencia` varchar(130) NOT NULL,
  `telefone` varchar(13) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.regracofins
CREATE TABLE IF NOT EXISTS `regracofins` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoregra` varchar(20) DEFAULT NULL,
  `cst` varchar(20) DEFAULT NULL,
  `pbccofins` decimal(20,6) DEFAULT '100.000000',
  `pcofins` decimal(20,6) DEFAULT '0.000000',
  `icmsnabasedecalculocofins` varchar(50) DEFAULT 'NÃO',
  `codigocontribuinte` varchar(20) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  `observacoes` text,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.regraicms
CREATE TABLE IF NOT EXISTS `regraicms` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoregra` varchar(20) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `cbenef` varchar(20) DEFAULT NULL,
  `origem` varchar(20) DEFAULT NULL,
  `cst` varchar(20) DEFAULT NULL,
  `cfop` varchar(20) DEFAULT NULL,
  `pdif` decimal(20,6) DEFAULT '0.000000',
  `pbcicms` decimal(20,6) DEFAULT '100.000000',
  `picmsuf` decimal(20,6) DEFAULT '0.000000',
  `picmsinter` decimal(20,6) DEFAULT '0.000000',
  `ipinabaseicms` varchar(50) DEFAULT NULL,
  `fretenabaseicms` varchar(50) DEFAULT NULL,
  `pmva` decimal(20,6) DEFAULT '0.000000',
  `pbcst` decimal(20,6) DEFAULT '0.000000',
  `fcp` decimal(20,6) DEFAULT '0.000000',
  `operacao` varchar(50) DEFAULT NULL,
  `codigocontribuinte` varchar(20) DEFAULT NULL,
  `observacoes` text,
  `pdifal` decimal(20,6) DEFAULT '0.000000',
  `calculoicmsstusoeconsumo` varchar(100) DEFAULT 'MVA',
  `ipinabasecimsst` varchar(100) DEFAULT 'Sim',
  `fretenabasecimsst` varchar(100) DEFAULT 'Sim',
  `pmvaoriginal` decimal(20,6) DEFAULT '0.000000',
  `usaraliqestados` varchar(50) DEFAULT 'NÃO',
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4839 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.regraipi
CREATE TABLE IF NOT EXISTS `regraipi` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoregra` varchar(20) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `cst` varchar(20) DEFAULT NULL,
  `pbcipi` decimal(20,6) DEFAULT '100.000000',
  `pipi` decimal(20,6) DEFAULT '0.000000',
  `codigocontribuinte` varchar(20) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  `observacoes` text,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.regrapis
CREATE TABLE IF NOT EXISTS `regrapis` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoregra` varchar(20) DEFAULT NULL,
  `cst` varchar(20) DEFAULT NULL,
  `pbcpis` decimal(20,6) DEFAULT '100.000000',
  `ppis` decimal(20,6) DEFAULT '0.000000',
  `icmsnabasedecalculopis` varchar(50) DEFAULT 'NÃO',
  `codigocontribuinte` varchar(20) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  `observacoes` text,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.regrasanuidadesareaterra
CREATE TABLE IF NOT EXISTS `regrasanuidadesareaterra` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `areainicial` decimal(10,2) DEFAULT NULL,
  `areafinal` decimal(10,2) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.regrasfiscaiscofins
CREATE TABLE IF NOT EXISTS `regrasfiscaiscofins` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.regrasfiscaisicms
CREATE TABLE IF NOT EXISTS `regrasfiscaisicms` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.regrasfiscaisipi
CREATE TABLE IF NOT EXISTS `regrasfiscaisipi` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.regrasfiscaispis
CREATE TABLE IF NOT EXISTS `regrasfiscaispis` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.remessasbancodobrasil
CREATE TABLE IF NOT EXISTS `remessasbancodobrasil` (
  `numeroremessa` varchar(50) NOT NULL,
  `dataremessa` date DEFAULT NULL,
  `nomedoarquivo` varchar(255) DEFAULT NULL,
  `arquivonaintegra` varchar(10000) DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.remessasbanrisul
CREATE TABLE IF NOT EXISTS `remessasbanrisul` (
  `numeroremessa` varchar(50) NOT NULL,
  `dataremessa` date DEFAULT NULL,
  `nomedoarquivo` varchar(255) DEFAULT NULL,
  `arquivonaintegra` varchar(10000) DEFAULT NULL,
  `empresa` varchar(10) DEFAULT '1',
  UNIQUE KEY `numeroremessa` (`numeroremessa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.remessasbradesco
CREATE TABLE IF NOT EXISTS `remessasbradesco` (
  `numeroremessa` varchar(50) NOT NULL,
  `dataremessa` date DEFAULT NULL,
  `nomedoarquivo` varchar(255) DEFAULT NULL,
  `arquivonaintegra` varchar(10000) DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  UNIQUE KEY `numeroremessa` (`numeroremessa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.remessascaixa
CREATE TABLE IF NOT EXISTS `remessascaixa` (
  `numeroremessa` varchar(50) DEFAULT NULL,
  `dataremessa` date DEFAULT NULL,
  `nomedoarquivo` varchar(255) DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  UNIQUE KEY `numeroremessa` (`numeroremessa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.remessasitau
CREATE TABLE IF NOT EXISTS `remessasitau` (
  `numeroremessa` varchar(50) NOT NULL,
  `dataremessa` date DEFAULT NULL,
  `nomedoarquivo` varchar(255) DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.remessassantander
CREATE TABLE IF NOT EXISTS `remessassantander` (
  `numeroremessa` varchar(50) NOT NULL,
  `dataremessa` date DEFAULT NULL,
  `nomedoarquivo` varchar(255) DEFAULT NULL,
  `arquivonaintegra` varchar(10000) DEFAULT NULL,
  UNIQUE KEY `numeroremessa` (`numeroremessa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.remessassicoob
CREATE TABLE IF NOT EXISTS `remessassicoob` (
  `numeroremessa` varchar(50) DEFAULT NULL,
  `dataremessa` date DEFAULT NULL,
  `nomedoarquivo` varchar(255) DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.remessassicredi
CREATE TABLE IF NOT EXISTS `remessassicredi` (
  `numeroremessa` varchar(50) NOT NULL,
  `dataremessa` date DEFAULT NULL,
  `nomedoarquivo` varchar(255) DEFAULT NULL,
  `arquivonaintegra` varchar(10000) DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.remessasunicred
CREATE TABLE IF NOT EXISTS `remessasunicred` (
  `numeroremessa` varchar(50) DEFAULT NULL,
  `dataremessa` date DEFAULT NULL,
  `nomedoarquivo` varchar(255) DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.retornobanco
CREATE TABLE IF NOT EXISTS `retornobanco` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nossonumero` varchar(150) DEFAULT NULL,
  `ocorrencia` varchar(50) DEFAULT NULL,
  `dataocorrencia` date DEFAULT NULL,
  `descricaoocorrencia` varchar(50) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `valorefetivamentepago` decimal(10,2) DEFAULT NULL,
  `numeroretorno` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `juros` decimal(10,2) DEFAULT NULL,
  `descontos` decimal(10,2) DEFAULT NULL,
  `multa` decimal(10,2) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `tarifa` decimal(10,2) DEFAULT NULL,
  `dataprevisao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=918 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.retornosicredi
CREATE TABLE IF NOT EXISTS `retornosicredi` (
  `numeroretorno` varchar(50) DEFAULT NULL,
  `dataretorno` date DEFAULT NULL,
  `nomearquivo` varchar(500) DEFAULT NULL,
  `diretorio` varchar(500) DEFAULT NULL,
  `retornoprocessado` varchar(500) DEFAULT NULL,
  `banco` varchar(100) DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.reunioes
CREATE TABLE IF NOT EXISTS `reunioes` (
  `codigo` varchar(10) NOT NULL,
  `data` datetime DEFAULT NULL,
  `tema` varchar(65) DEFAULT NULL,
  `motivo` varchar(65) DEFAULT NULL,
  `pauta` varchar(65) DEFAULT NULL,
  `situacao` varchar(130) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `descricaoata` longtext,
  `produtoservico` varchar(50) DEFAULT NULL,
  `selecionada` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.reunioescolaboradores
CREATE TABLE IF NOT EXISTS `reunioescolaboradores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `reuniao` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `presenca` varchar(50) DEFAULT 'X',
  `presencaportaria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.rotas
CREATE TABLE IF NOT EXISTS `rotas` (
  `codigo` varchar(50) NOT NULL DEFAULT '',
  `rota` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.rotasbairros
CREATE TABLE IF NOT EXISTS `rotasbairros` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `rota` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `proximidade` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.rotascidades
CREATE TABLE IF NOT EXISTS `rotascidades` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocidade` varchar(50) DEFAULT NULL,
  `codigorota` varchar(50) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.safras
CREATE TABLE IF NOT EXISTS `safras` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `safra` varchar(50) DEFAULT NULL,
  `situacao` varchar(50) DEFAULT 'Ativo',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.senhasadministrativas
CREATE TABLE IF NOT EXISTS `senhasadministrativas` (
  `senhaadministrativa` varchar(45) DEFAULT NULL,
  `validade` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.seriesnotas
CREATE TABLE IF NOT EXISTS `seriesnotas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `serie` varchar(50) DEFAULT NULL,
  `ultimonumero` decimal(10,0) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT '55',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.setores
CREATE TABLE IF NOT EXISTS `setores` (
  `codigo` varchar(10) NOT NULL,
  `setor` varchar(130) DEFAULT NULL,
  `lancarestoque` tinyint(1) DEFAULT '0',
  `provisionarestoque` tinyint(1) DEFAULT '0',
  `proximosetor` varchar(20) DEFAULT NULL,
  `diasparaconcluir` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.sincronizacaoapp
CREATE TABLE IF NOT EXISTS `sincronizacaoapp` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `operacao` varchar(200) NOT NULL,
  `ultimoenvio` datetime DEFAULT NULL,
  PRIMARY KEY (`operacao`) USING BTREE,
  UNIQUE KEY `codigo` (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.solicitacaocompra
CREATE TABLE IF NOT EXISTS `solicitacaocompra` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `marcatextolivre` varchar(50) DEFAULT NULL,
  `textolivre` varchar(50) DEFAULT NULL,
  `valormercadoria` decimal(10,2) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(20) DEFAULT NULL,
  `etapa` varchar(20) DEFAULT NULL,
  `selecionado` varchar(1) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.solicitacaotransferencia
CREATE TABLE IF NOT EXISTS `solicitacaotransferencia` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `origem` varchar(100) DEFAULT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,0) DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.statusitensatendimentos
CREATE TABLE IF NOT EXISTS `statusitensatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoitematendimento` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tabeladeprecoregras
CREATE TABLE IF NOT EXISTS `tabeladeprecoregras` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `tabela` varchar(20) DEFAULT NULL,
  `descontode` decimal(20,6) DEFAULT '0.000000',
  `descontoate` decimal(20,6) DEFAULT '0.000000',
  `percentualcomissao` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tabeladeprecospersonalizada
CREATE TABLE IF NOT EXISTS `tabeladeprecospersonalizada` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(20) DEFAULT NULL,
  `nometabela` varchar(100) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `observacoes` varchar(100) DEFAULT NULL,
  `codigotabela` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tabelasdeprecos
CREATE TABLE IF NOT EXISTS `tabelasdeprecos` (
  `codigo` varchar(10) NOT NULL,
  `nometabela` varchar(65) DEFAULT NULL,
  `percentualdesconto` decimal(12,2) DEFAULT NULL,
  `observacoes` varchar(130) DEFAULT NULL,
  `praticadopadrao` varchar(130) DEFAULT NULL,
  `sufixocodigo` varchar(50) DEFAULT NULL,
  `sufixodescricao` varchar(50) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `arredondamento` varchar(10) DEFAULT 'NÃO',
  `realizarvendasomentepara` varchar(20) DEFAULT NULL,
  `tipodofaturamentopermitido` varchar(20) DEFAULT NULL,
  `tmauxiliartabeladeprecos` varchar(2) DEFAULT '1',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tamanhogrid
CREATE TABLE IF NOT EXISTS `tamanhogrid` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `grid` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `coluna0` varchar(50) DEFAULT NULL,
  `coluna1` varchar(50) DEFAULT NULL,
  `coluna2` varchar(50) DEFAULT NULL,
  `coluna3` varchar(50) DEFAULT NULL,
  `coluna4` varchar(50) DEFAULT NULL,
  `coluna5` varchar(50) DEFAULT NULL,
  `coluna6` varchar(50) DEFAULT NULL,
  `coluna7` varchar(50) DEFAULT NULL,
  `coluna8` varchar(50) DEFAULT NULL,
  `coluna9` varchar(50) DEFAULT NULL,
  `coluna10` varchar(50) DEFAULT NULL,
  `coluna11` varchar(50) DEFAULT NULL,
  `coluna12` varchar(50) DEFAULT NULL,
  `coluna13` varchar(50) DEFAULT NULL,
  `coluna14` varchar(50) DEFAULT NULL,
  `coluna15` varchar(50) DEFAULT NULL,
  `coluna16` varchar(50) DEFAULT NULL,
  `coluna17` varchar(50) DEFAULT NULL,
  `coluna18` varchar(50) DEFAULT NULL,
  `coluna19` varchar(50) DEFAULT NULL,
  `coluna20` varchar(50) DEFAULT NULL,
  `coluna21` varchar(50) DEFAULT NULL,
  `coluna22` varchar(50) DEFAULT NULL,
  `coluna23` varchar(50) DEFAULT NULL,
  `coluna24` varchar(50) DEFAULT NULL,
  `coluna25` varchar(50) DEFAULT NULL,
  `coluna26` varchar(50) DEFAULT NULL,
  `coluna27` varchar(50) DEFAULT NULL,
  `coluna28` varchar(50) DEFAULT NULL,
  `coluna29` varchar(50) DEFAULT NULL,
  `coluna30` varchar(50) DEFAULT NULL,
  `coluna31` varchar(50) DEFAULT NULL,
  `coluna32` varchar(50) DEFAULT NULL,
  `coluna33` varchar(50) DEFAULT NULL,
  `coluna34` varchar(50) DEFAULT NULL,
  `coluna35` varchar(50) DEFAULT NULL,
  `coluna36` varchar(50) DEFAULT NULL,
  `coluna37` varchar(50) DEFAULT NULL,
  `coluna38` varchar(50) DEFAULT NULL,
  `coluna39` varchar(50) DEFAULT NULL,
  `coluna40` varchar(50) DEFAULT NULL,
  `coluna41` varchar(50) DEFAULT NULL,
  `coluna42` varchar(50) DEFAULT NULL,
  `coluna43` varchar(50) DEFAULT NULL,
  `coluna44` varchar(50) DEFAULT NULL,
  `coluna45` varchar(50) DEFAULT NULL,
  `coluna46` varchar(50) DEFAULT NULL,
  `coluna47` varchar(50) DEFAULT NULL,
  `coluna48` varchar(50) DEFAULT NULL,
  `coluna49` varchar(50) DEFAULT NULL,
  `coluna50` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tamanhos
CREATE TABLE IF NOT EXISTS `tamanhos` (
  `codigo` varchar(10) NOT NULL,
  `tamanho` varchar(65) DEFAULT NULL,
  `codigoadicional` varchar(50) DEFAULT NULL,
  `ecommerce` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tarefas
CREATE TABLE IF NOT EXISTS `tarefas` (
  `usuario` varchar(130) DEFAULT NULL,
  `cliente` varchar(130) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `datalancamento` datetime DEFAULT NULL,
  `dataprevisao` datetime DEFAULT NULL,
  `dataconclusao` datetime DEFAULT NULL,
  `descricao` varchar(130) DEFAULT NULL,
  `observacoes` varchar(130) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tipocontribuinte
CREATE TABLE IF NOT EXISTS `tipocontribuinte` (
  `codigo` int(150) NOT NULL AUTO_INCREMENT,
  `nome` varchar(130) NOT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tipooperacoes
CREATE TABLE IF NOT EXISTS `tipooperacoes` (
  `codigo` varchar(10) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpacademicoresultado
CREATE TABLE IF NOT EXISTS `tmpacademicoresultado` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `turma` varchar(50) DEFAULT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `subtipo` varchar(200) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpacertosconsignacoes
CREATE TABLE IF NOT EXISTS `tmpacertosconsignacoes` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `vendida` decimal(10,2) DEFAULT NULL,
  `unitario` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `reposto` decimal(10,2) DEFAULT NULL,
  `novo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpacompanhamentoatendimentos
CREATE TABLE IF NOT EXISTS `tmpacompanhamentoatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `acompanhamento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidadeenviada` decimal(10,2) DEFAULT NULL,
  `quantidadedevolvida` decimal(10,2) DEFAULT NULL,
  `tabela` decimal(10,2) DEFAULT NULL,
  `estoque` decimal(10,2) DEFAULT NULL,
  `quantidadevendida` decimal(10,2) DEFAULT NULL,
  `valorvendido` decimal(10,2) DEFAULT NULL,
  `cmvunidade` decimal(10,2) DEFAULT NULL,
  `vmvunidade` decimal(10,2) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `subgrupo` varchar(50) DEFAULT NULL,
  `fornecedor` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `praticadoatual` decimal(10,2) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `outrasentradas` decimal(10,2) DEFAULT '0.00',
  `outrassaidas` decimal(10,2) DEFAULT '0.00',
  `operacao` varchar(50) DEFAULT NULL,
  `colecao` varchar(50) DEFAULT NULL,
  `auditoria` decimal(10,2) DEFAULT NULL,
  `reposicao` decimal(10,2) DEFAULT NULL,
  `tamanho` varchar(20) DEFAULT NULL,
  `estoquefiliais` decimal(10,2) DEFAULT '0.00',
  `vendasfiliais` decimal(10,2) DEFAULT '0.00',
  `entradastransferenciasfilial` decimal(10,2) DEFAULT '0.00',
  `saidastransferenciasfilial` decimal(10,2) DEFAULT '0.00',
  `asomarestoquefiliais` decimal(10,2) DEFAULT '0.00',
  `asomarvendasfiliais` decimal(10,2) DEFAULT '0.00',
  `asomarentradastransferenciasfiliais` decimal(10,2) DEFAULT '0.00',
  `asomarsaidastransferenciasfiliais` decimal(10,2) DEFAULT '0.00',
  `devolucaovendas` decimal(10,2) DEFAULT '0.00',
  `devolucaovendasfilial` decimal(10,2) DEFAULT '0.00',
  `asomardevolucaovendasfilial` decimal(10,2) DEFAULT '0.00',
  `setor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpagenda
CREATE TABLE IF NOT EXISTS `tmpagenda` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `colaborador` varchar(200) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `ocorrencia` varchar(2000) DEFAULT NULL,
  `codigocolaborador` varchar(11) DEFAULT NULL,
  `diagnostico` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpantecipacaorecebiveis
CREATE TABLE IF NOT EXISTS `tmpantecipacaorecebiveis` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigoconta` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `emissao` date DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `tipodocumento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpapuracoes
CREATE TABLE IF NOT EXISTS `tmpapuracoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `valorcontabil` decimal(10,2) DEFAULT '0.00',
  `basedecalculoicms` decimal(10,2) DEFAULT '0.00',
  `valoricms` decimal(10,2) DEFAULT '0.00',
  `isentoounaotributadoicms` decimal(10,2) DEFAULT '0.00',
  `outrasicms` decimal(10,2) DEFAULT '0.00',
  `excluidasicms` decimal(10,2) DEFAULT '0.00',
  `picms` varchar(50) DEFAULT '0',
  `basedecalculost` decimal(10,2) DEFAULT '0.00',
  `valorst` decimal(10,2) DEFAULT '0.00',
  `tipocontribuinte` varchar(50) DEFAULT '0.00',
  `tipodocumento` varchar(50) DEFAULT '0.00',
  `pipi` varchar(50) DEFAULT '0.00',
  `basedecalculoipi` decimal(10,2) DEFAULT '0.00',
  `valoripi` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmparquivodeeventos
CREATE TABLE IF NOT EXISTS `tmparquivodeeventos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `operacao` varchar(200) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `colaborador` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpatendimentos
CREATE TABLE IF NOT EXISTS `tmpatendimentos` (
  `codigo` varchar(25) NOT NULL DEFAULT '',
  `codigocolaborador` varchar(25) DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `horacadastro` time DEFAULT NULL,
  `datafaturamento` date DEFAULT NULL,
  `numeropedido` varchar(25) DEFAULT NULL,
  `observacoes` varchar(1000) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `codigovendedor` varchar(20) DEFAULT NULL,
  `tabelapadrao` varchar(25) DEFAULT NULL,
  `quantidadeitens` decimal(10,4) DEFAULT NULL,
  `quantidadeprodutos` decimal(10,4) DEFAULT NULL,
  `subtotal` decimal(10,4) DEFAULT NULL,
  `valortotal` decimal(10,4) DEFAULT NULL,
  `codigocondicaopagamento` varchar(10) DEFAULT NULL,
  `percentualdesconto` decimal(10,4) DEFAULT NULL,
  `valordesconto` decimal(10,4) DEFAULT NULL,
  `percentualentrada` decimal(10,4) DEFAULT NULL,
  `valorentrada` decimal(10,4) DEFAULT NULL,
  `valorprazo` decimal(10,4) DEFAULT NULL,
  `numeroparcelas` varchar(25) DEFAULT NULL,
  `intervaloparcelas` varchar(25) DEFAULT NULL,
  `codigotipodocumento` varchar(10) DEFAULT NULL,
  `localcobranca` varchar(10) DEFAULT NULL,
  `entradacomoadiantamento` varchar(3) DEFAULT NULL,
  `caixa` varchar(3) DEFAULT NULL,
  `modelonf` varchar(3) DEFAULT NULL,
  `numeronf` varchar(25) DEFAULT NULL,
  `serienf` varchar(4) DEFAULT NULL,
  `codigonaturezaoperacao` varchar(10) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `inscricaoestadualsubstituto` varchar(25) DEFAULT NULL,
  `dataemissao` date DEFAULT NULL,
  `horaemissao` varchar(25) DEFAULT NULL,
  `codigotransportadora` varchar(10) DEFAULT NULL,
  `entregue` varchar(3) DEFAULT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `ufplaca` varchar(2) DEFAULT NULL,
  `frete` varchar(25) DEFAULT NULL,
  `valorfrete` decimal(10,4) DEFAULT NULL,
  `pesoliquido` decimal(10,4) DEFAULT NULL,
  `pesobruto` decimal(10,4) DEFAULT NULL,
  `conhecimento` varchar(25) DEFAULT NULL,
  `basecalculoicms` decimal(10,4) DEFAULT NULL,
  `valoricms` decimal(10,4) DEFAULT NULL,
  `valoricmsst` decimal(10,4) DEFAULT NULL,
  `valorseguro` decimal(10,4) DEFAULT NULL,
  `despesas` decimal(10,4) DEFAULT NULL,
  `totalipi` decimal(10,4) DEFAULT NULL,
  `aliquotaiss` decimal(10,4) DEFAULT NULL,
  `totalnf` decimal(10,4) DEFAULT NULL,
  `quantidade` varchar(25) DEFAULT NULL,
  `especie` varchar(25) DEFAULT NULL,
  `marca` varchar(25) DEFAULT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `totalprodutos` decimal(10,4) DEFAULT NULL,
  `totalservicos` decimal(10,4) DEFAULT NULL,
  `observacoesnota` varchar(500) DEFAULT NULL,
  `substitutoitens` varchar(300) DEFAULT NULL,
  `prazoentrega` varchar(25) DEFAULT NULL,
  `prazopagamento` varchar(25) DEFAULT NULL,
  `operacao` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `dataes` date DEFAULT NULL,
  `observacoesdocumentos` varchar(1000) DEFAULT NULL,
  `datapedido` date DEFAULT NULL,
  `colaboradoratendimentorapido` varchar(165) DEFAULT NULL,
  `tipooperacaofinanceira` varchar(10) DEFAULT NULL,
  `centrodecustos` varchar(10) DEFAULT NULL,
  `contadebito` varchar(10) DEFAULT NULL,
  `contacredito` varchar(10) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `motivodocancelamento` varchar(100) DEFAULT NULL,
  `detalhamentoparcelas` varchar(600) DEFAULT NULL COMMENT 'usado para gerar relatrio e mostrar as parcelas',
  `nfechavedeacesso` varchar(50) DEFAULT NULL,
  `nfelote` varchar(10) DEFAULT NULL,
  `nferecibo` varchar(50) DEFAULT NULL,
  `nfeprotocolo` varchar(50) DEFAULT NULL,
  `nfeprotocolocancelamento` varchar(50) DEFAULT NULL,
  `nfedatageracao` date DEFAULT NULL,
  `nfedatacancelamento` date DEFAULT NULL,
  `osprevisaotecnico` varchar(20) DEFAULT NULL,
  `osstatustecnico` varchar(30) DEFAULT NULL,
  `osgarantia` varchar(3) DEFAULT NULL,
  `osfuncionarioresponsavel` varchar(10) DEFAULT NULL,
  `osacessoriosaparencia` varchar(100) DEFAULT NULL,
  `osresumodoproblema` varchar(500) DEFAULT NULL,
  `oslaudotecnico` varchar(1000) DEFAULT NULL,
  `ostipoatendimento` varchar(30) DEFAULT NULL,
  `osautorizadopelocliente` varchar(3) DEFAULT NULL,
  `oshorastrabalhadas` varchar(10) DEFAULT NULL,
  `osquilometragemveiculo` varchar(10) DEFAULT NULL,
  `oscodigoveiculo` varchar(10) DEFAULT NULL,
  `osquilometragemdeslocamento` varchar(10) DEFAULT NULL,
  `fretetransporte` decimal(10,4) DEFAULT NULL,
  `contrato` varchar(25) DEFAULT NULL,
  `fornecedor` varchar(25) DEFAULT NULL,
  `localizador` varchar(50) DEFAULT NULL,
  `trecho` varchar(50) DEFAULT NULL,
  `horario` varchar(50) DEFAULT NULL,
  `taxaembarque` decimal(10,2) DEFAULT NULL,
  `outrastaxas` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `calculodanotamanual` tinytext,
  `descricaodosservicos` varchar(100) DEFAULT NULL,
  `statusinterno` varchar(10) DEFAULT NULL,
  `comanda` varchar(25) DEFAULT NULL,
  `descricaocondicaopagamento` varchar(50) DEFAULT NULL,
  `calcularcomissao` tinyint(1) unsigned DEFAULT NULL,
  `nfefinalidadeemissao` varchar(25) DEFAULT NULL,
  `nfechavedeacessoreferenciada` varchar(50) DEFAULT NULL,
  `descontoadicional1` varchar(10) DEFAULT NULL,
  `descontoadicional2` varchar(10) DEFAULT NULL,
  `descontoadicional3` varchar(10) DEFAULT NULL,
  `descontoadicional4` varchar(10) DEFAULT NULL,
  `descontoadicional5` varchar(10) DEFAULT NULL,
  `codigotipodocumentoavista` varchar(10) DEFAULT NULL,
  `formatura` varchar(20) DEFAULT NULL,
  `tipocontratoformatura` varchar(20) DEFAULT NULL,
  `especificardescontonanota` tinyint(1) unsigned DEFAULT NULL,
  `setor` varchar(20) DEFAULT NULL,
  `cpfconsumidor` varchar(20) DEFAULT NULL,
  `enderecoconsumidor` varchar(50) DEFAULT NULL,
  `cidadeconsumidor` varchar(50) DEFAULT NULL,
  `imovel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `codigocolaborador` (`codigocolaborador`),
  KEY `status` (`status`),
  KEY `comanda` (`comanda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpatendimentosentregas
CREATE TABLE IF NOT EXISTS `tmpatendimentosentregas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `praticado` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpatendimentosfragmentar
CREATE TABLE IF NOT EXISTS `tmpatendimentosfragmentar` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(20) DEFAULT NULL,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `tabelacomdesconto` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpatendimentostipodocumento
CREATE TABLE IF NOT EXISTS `tmpatendimentostipodocumento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpauditoria
CREATE TABLE IF NOT EXISTS `tmpauditoria` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `anterior` decimal(10,2) DEFAULT NULL,
  `posterior` decimal(10,2) DEFAULT NULL,
  `tmpmarca` varchar(100) DEFAULT NULL,
  `tmpcor` varchar(100) DEFAULT NULL,
  `tmptamanho` varchar(100) DEFAULT NULL,
  `tmpdescricao` varchar(100) DEFAULT NULL,
  `tmppraticado` decimal(10,2) DEFAULT NULL,
  `auditoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpauditoriadocumentosfiscais
CREATE TABLE IF NOT EXISTS `tmpauditoriadocumentosfiscais` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) DEFAULT NULL,
  `serienf` varchar(50) DEFAULT NULL,
  `numeronf` int(11) DEFAULT NULL,
  `dataemissao` date DEFAULT NULL,
  `totalnf` decimal(15,2) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `nfechavedeacesso` varchar(50) DEFAULT NULL,
  `nfeprotocolo` varchar(50) DEFAULT NULL,
  `nfeprotocolocancelamento` varchar(50) DEFAULT NULL,
  `tipoemissaonota` varchar(50) DEFAULT NULL,
  `modelodocumentofiscal` varchar(50) DEFAULT NULL,
  `tmpnumeronf` varchar(50) DEFAULT NULL,
  `arquivoxml` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpauditoriaestoque
CREATE TABLE IF NOT EXISTS `tmpauditoriaestoque` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `saldoanterior` decimal(10,3) DEFAULT NULL,
  `compra` decimal(10,3) DEFAULT NULL,
  `venda` decimal(10,3) DEFAULT NULL,
  `outrasentradas` decimal(10,3) DEFAULT NULL,
  `outrassaisas` decimal(10,3) DEFAULT NULL,
  `estoquefinal` decimal(10,3) DEFAULT NULL,
  `auditoria` decimal(10,3) DEFAULT NULL,
  `entradas` decimal(10,3) DEFAULT '0.000',
  `saidas` decimal(10,3) DEFAULT '0.000',
  `numeroauditoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpavaliacaoatendimentos
CREATE TABLE IF NOT EXISTS `tmpavaliacaoatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `pontuacao` int(11) NOT NULL DEFAULT '0',
  `observacao` varchar(100) DEFAULT NULL,
  `atendimento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpboletos
CREATE TABLE IF NOT EXISTS `tmpboletos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `computador` varchar(50) DEFAULT NULL,
  `informativo` varchar(1000) DEFAULT NULL,
  `localpagamento` varchar(200) DEFAULT NULL,
  `vencimento` varchar(200) DEFAULT NULL,
  `cedente` varchar(200) DEFAULT NULL,
  `agenciacodigocedente` varchar(200) DEFAULT NULL,
  `datadocumento` varchar(200) DEFAULT NULL,
  `numerodocumento` varchar(200) DEFAULT NULL,
  `especie` varchar(200) DEFAULT NULL,
  `aceite` varchar(200) DEFAULT NULL,
  `dataprocessamento` varchar(200) DEFAULT NULL,
  `nossonumero` varchar(200) DEFAULT NULL,
  `moeda` varchar(200) DEFAULT NULL,
  `valordocumento` varchar(200) DEFAULT NULL,
  `nomesacado` varchar(200) DEFAULT NULL,
  `cpfcnpjsacado` varchar(200) DEFAULT NULL,
  `enderecosacado` varchar(200) DEFAULT NULL,
  `cidadesacado` varchar(200) DEFAULT NULL,
  `estadosacado` varchar(200) DEFAULT NULL,
  `cepsacado` varchar(200) DEFAULT NULL,
  `linhadigitavel` varchar(200) DEFAULT NULL,
  `codigodebarras` varchar(200) DEFAULT NULL,
  `tmpcodigobarras` longblob,
  `instrucoesboleto` varchar(5000) DEFAULT NULL,
  `cnpjbeneficiario` varchar(200) DEFAULT NULL,
  `enderecobeneficiario` varchar(255) DEFAULT NULL,
  `cidadebeneficiario` varchar(255) DEFAULT NULL,
  `carteira` varchar(20) DEFAULT NULL,
  `avalista` varchar(200) DEFAULT NULL,
  `observacoes` varchar(2000) DEFAULT NULL,
  `tmpvalordocumento` decimal(10,2) DEFAULT NULL,
  `seunumero` varchar(20) DEFAULT NULL,
  `descricaoservico` varchar(35) DEFAULT NULL,
  `codigocontareceber` varchar(50) DEFAULT NULL,
  `cnpjboletocresol` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcapacidadeproducao
CREATE TABLE IF NOT EXISTS `tmpcapacidadeproducao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `materiaprima` varchar(50) DEFAULT NULL,
  `quantidademateriaprima` decimal(10,4) DEFAULT NULL,
  `estoquemateriaprima` decimal(10,4) DEFAULT NULL,
  `capacidadeproducao` decimal(10,4) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `observacao` varchar(50) DEFAULT NULL,
  `numerocalculo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcapacidadeproducaoreservas
CREATE TABLE IF NOT EXISTS `tmpcapacidadeproducaoreservas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `numerocalculo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcapacidadeproducaoreservasatendimentos
CREATE TABLE IF NOT EXISTS `tmpcapacidadeproducaoreservasatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `produtopai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcentrodecustogrupos
CREATE TABLE IF NOT EXISTS `tmpcentrodecustogrupos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `valororcado` decimal(15,2) DEFAULT '0.00',
  `valorefetivado` decimal(15,2) DEFAULT NULL,
  `hierarquiadogrupo` varchar(200) DEFAULT NULL,
  `tmptotalefetivado` decimal(15,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `mes` varchar(50) DEFAULT NULL,
  `percentual` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `percentualtotal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcertificados
CREATE TABLE IF NOT EXISTS `tmpcertificados` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `aluno` varchar(50) DEFAULT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `totalhoras` decimal(10,4) DEFAULT NULL,
  `datainicial` date DEFAULT NULL,
  `datafinal` date DEFAULT NULL,
  `diainicial` varchar(2) DEFAULT NULL,
  `mesinicial` varchar(15) DEFAULT NULL,
  `anoinicial` varchar(4) DEFAULT NULL,
  `diafinal` varchar(2) DEFAULT NULL,
  `mesfinal` varchar(20) DEFAULT NULL,
  `anofinal` varchar(4) DEFAULT NULL,
  `dataimpressao` date DEFAULT NULL,
  `diaimpressao` varchar(2) DEFAULT NULL,
  `mesimpressao` varchar(20) DEFAULT NULL,
  `anoimpressao` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcolaboradores
CREATE TABLE IF NOT EXISTS `tmpcolaboradores` (
  `codigo` varchar(100) NOT NULL,
  `tipo` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `nomerazaosocial` varchar(200) DEFAULT NULL,
  `nomefantasia` varchar(130) DEFAULT NULL,
  `situacao` varchar(25) DEFAULT NULL,
  `controleinterno` varchar(25) DEFAULT NULL,
  `cpfcnpj` varchar(18) DEFAULT NULL,
  `rg` varchar(18) DEFAULT NULL,
  `inscricaoestadual` varchar(18) DEFAULT NULL,
  `endereco` varchar(65) DEFAULT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `complemento` varchar(25) DEFAULT NULL,
  `bairro` varchar(65) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `pessoacontato` varchar(65) DEFAULT NULL,
  `ultimacompra` datetime DEFAULT NULL,
  `datanascimento` datetime DEFAULT NULL,
  `idade` varchar(25) DEFAULT NULL,
  `nomepai` varchar(130) DEFAULT NULL,
  `nomemae` varchar(130) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `renda` varchar(13) DEFAULT NULL,
  `avalista` varchar(130) DEFAULT NULL,
  `cpfavalista` varchar(18) DEFAULT NULL,
  `telefoneavalista` varchar(13) DEFAULT NULL,
  `enderecoavalista` varchar(65) DEFAULT NULL,
  `localtrabalho` varchar(65) DEFAULT NULL,
  `enderecotrabalho` varchar(65) DEFAULT NULL,
  `telefonetrabalho` varchar(20) DEFAULT NULL,
  `nomevizinho` varchar(65) DEFAULT NULL,
  `telefonevizinho` varchar(20) DEFAULT NULL,
  `enderecovizinho` varchar(65) DEFAULT NULL,
  `estadocivil` varchar(25) DEFAULT NULL,
  `nomeconjuge` varchar(130) DEFAULT NULL,
  `localtrabalhoconjuge` varchar(65) DEFAULT NULL,
  `rendaconjuge` varchar(13) DEFAULT NULL,
  `telefonetrabalhoconjuge` varchar(20) DEFAULT NULL,
  `numeropromocao` varchar(25) DEFAULT NULL,
  `pontos` decimal(12,2) DEFAULT NULL,
  `pontosreceber` decimal(12,2) DEFAULT NULL,
  `site` varchar(65) DEFAULT NULL,
  `comprador` varchar(65) DEFAULT NULL,
  `condicaofretepadrao` varchar(25) DEFAULT NULL,
  `tabelapadrao` varchar(25) DEFAULT NULL,
  `alterartabelavenda` varchar(3) DEFAULT NULL,
  `nivelconfianca` varchar(3) DEFAULT NULL,
  `revenda` varchar(3) DEFAULT NULL,
  `ultimavisita` datetime DEFAULT NULL,
  `msn` varchar(65) DEFAULT NULL,
  `pontoreferencia` varchar(65) DEFAULT NULL,
  `tipopreferencialcontato` varchar(25) DEFAULT NULL,
  `tipocadastro` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `mensagemalerta` varchar(130) DEFAULT NULL,
  `corgerenciadorcontatos` varchar(25) DEFAULT NULL,
  `diasparacontato` varchar(3) DEFAULT NULL,
  `observacoes` varchar(1500) DEFAULT NULL,
  `descontomaximo` varchar(3) DEFAULT NULL,
  `bloqueado` varchar(15) DEFAULT NULL,
  `motivobloqueio` varchar(65) DEFAULT NULL,
  `informacoespsiquicas` varchar(65) DEFAULT NULL,
  `time` varchar(25) DEFAULT NULL,
  `quantidadefuncionarios` decimal(12,0) DEFAULT NULL,
  `consumofuncionarios` decimal(12,2) DEFAULT NULL,
  `consumototal` decimal(12,2) DEFAULT NULL,
  `enviarmaladireta` varchar(3) DEFAULT NULL,
  `motivobloqueiomaladireta` varchar(65) DEFAULT NULL,
  `limitecredito` decimal(12,2) DEFAULT NULL,
  `limiteutilizado` decimal(12,2) DEFAULT NULL,
  `limitedisponivel` decimal(12,2) DEFAULT NULL,
  `rendafamiliar` varchar(13) DEFAULT NULL,
  `consultaspc` varchar(25) DEFAULT NULL,
  `dataconsultaspc` datetime DEFAULT NULL,
  `resultadoconsultaspc` varchar(65) DEFAULT NULL,
  `titulosatrasados` varchar(3) DEFAULT NULL,
  `mediadiasatraso` decimal(10,2) DEFAULT NULL,
  `necessidadeconsulta` varchar(3) DEFAULT NULL,
  `intervaloconsulta` varchar(13) DEFAULT NULL,
  `datanegativacaospc` varchar(13) DEFAULT NULL,
  `valornegativacaospc` varchar(13) DEFAULT NULL,
  `datacadastro` datetime DEFAULT NULL,
  `codigocidade` varchar(100) DEFAULT NULL,
  `telefone0800` varchar(14) DEFAULT NULL,
  `codigoprofissao` varchar(10) DEFAULT NULL,
  `ultimocontato` datetime DEFAULT NULL,
  `codigoramoatividadeprincipal` varchar(10) DEFAULT NULL,
  `codigovendedorgercontatos` varchar(10) DEFAULT NULL,
  `codigovendedorpadrao` varchar(10) DEFAULT NULL,
  `codigotransportadorapreferencial` varchar(10) DEFAULT NULL,
  `codigocondicaopagamentopadrao` varchar(10) DEFAULT NULL,
  `codigogrupo` varchar(10) DEFAULT NULL,
  `codigosubgrupo` varchar(10) DEFAULT NULL,
  `cpfconjuge` varchar(18) DEFAULT NULL,
  `enderecoconjuge` varchar(65) DEFAULT NULL,
  `codigoprofissaoconjuge` varchar(10) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `mesaniversario` varchar(18) DEFAULT NULL,
  `diaaniversario` varchar(10) DEFAULT NULL,
  `comoconheceuaempresa` varchar(45) DEFAULT NULL,
  `valormensalidade` decimal(12,2) DEFAULT NULL,
  `diavencimentomensalidade` varchar(2) DEFAULT NULL,
  `auxilioadministrativo` varchar(10) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  `cidadenaturalidade` varchar(10) DEFAULT NULL,
  `quantidadefilhos` varchar(10) DEFAULT NULL,
  `moradia` varchar(10) DEFAULT NULL,
  `valoraluguelparcelamoradia` varchar(10) DEFAULT NULL,
  `rota` varchar(10) DEFAULT NULL,
  `codigodopais` varchar(10) DEFAULT NULL,
  `suframa` varchar(10) DEFAULT NULL,
  `tmpindividualformatura` decimal(10,2) DEFAULT NULL,
  `nacionalidade` varchar(50) DEFAULT NULL,
  `naturalidade` varchar(50) DEFAULT NULL,
  `estadonaturalidade` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `nascimentoconjuge` date DEFAULT NULL,
  `rendacomplementar` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `nomepaiconjuge` varchar(100) DEFAULT NULL,
  `nomemaeconjuge` varchar(100) DEFAULT NULL,
  `ctps` varchar(100) DEFAULT NULL,
  `entradahorario` varchar(100) DEFAULT NULL,
  `intervalorefeicao` varchar(100) DEFAULT NULL,
  `saidahorario` varchar(100) DEFAULT NULL,
  `funcaofuncionario` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `tmpconceitofinanceiro` varchar(50) DEFAULT NULL,
  `enquadramentotributacao` varchar(50) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `ufplaca` varchar(50) DEFAULT NULL,
  `funcionariocontratacao` date DEFAULT NULL,
  `funcionariodesligamento` date DEFAULT NULL,
  `funcionariomotivodesligamento` varchar(200) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `nascimentopai` date DEFAULT NULL,
  `nascimentomae` date DEFAULT NULL,
  `entradahorariotarde` varchar(50) DEFAULT NULL,
  `saidahorariotarde` varchar(50) DEFAULT NULL,
  `inscricaomunicipal` varchar(50) DEFAULT NULL,
  `padraoipi` varchar(50) DEFAULT NULL,
  `padraofrete` varchar(50) DEFAULT NULL,
  `padraost` varchar(50) DEFAULT NULL,
  `padraooutrasdespesas` varchar(50) DEFAULT NULL,
  `padraodiferencaicms` varchar(50) DEFAULT NULL,
  `padraolucrodesejado` varchar(50) DEFAULT NULL,
  `valetransporte` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT '1058',
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `cadastrosite` tinyint(1) DEFAULT '0',
  `devolucaocorreios` tinyint(1) DEFAULT '0',
  `vip` tinyint(1) DEFAULT '0',
  `whatsapp` varchar(50) DEFAULT NULL,
  `cnpj` varchar(50) DEFAULT NULL,
  `marcapadrao` varchar(50) DEFAULT NULL,
  `emailnfe` varchar(200) DEFAULT NULL,
  `datainativacao` date DEFAULT NULL,
  `sincronizarcom` varchar(100) DEFAULT NULL,
  `natureza` varchar(20) DEFAULT NULL,
  `fabricante` varchar(20) DEFAULT NULL,
  `dcb` varchar(20) DEFAULT NULL,
  `certidaonascimento` varchar(25) DEFAULT NULL,
  `mensalidadecomplementar` decimal(10,2) DEFAULT NULL,
  `telefoneconjuge2` varchar(20) DEFAULT NULL,
  `anuidade` decimal(10,2) DEFAULT NULL,
  `vencimentoanuidade` varchar(20) DEFAULT NULL,
  `usuarioultimocontato` varchar(50) DEFAULT NULL,
  `ultimamaladireta` date DEFAULT NULL,
  `ultimaposvenda` date DEFAULT NULL,
  `diasposvendas` varchar(10) DEFAULT NULL,
  `condicional` tinyint(1) DEFAULT '1',
  `ultimovendedor` varchar(20) DEFAULT NULL,
  `comissaocliente` decimal(10,2) DEFAULT NULL,
  `horariopreferencial` varchar(50) DEFAULT NULL,
  `numeracao` varchar(50) DEFAULT NULL,
  `codigosubgrupo2` varchar(10) DEFAULT NULL,
  `telefonepai` varchar(15) DEFAULT NULL,
  `celularpai` varchar(15) DEFAULT NULL,
  `enderecopai` varchar(50) DEFAULT NULL,
  `telefonemae` varchar(15) DEFAULT NULL,
  `celulamae` varchar(15) DEFAULT NULL,
  `enderecomae` varchar(50) DEFAULT NULL,
  `tmpquantidadereunioes` decimal(10,2) DEFAULT NULL,
  `usuarioposvendas` varchar(50) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `gratificacao` decimal(10,2) DEFAULT NULL,
  `conjugerg` varchar(20) DEFAULT NULL,
  `entradasabado` varchar(10) DEFAULT NULL,
  `saidasabado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcolaboradoresativosinativos
CREATE TABLE IF NOT EXISTS `tmpcolaboradoresativosinativos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `cadastrados` decimal(10,0) DEFAULT NULL,
  `inativados` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcolaboradoresqualificacoes
CREATE TABLE IF NOT EXISTS `tmpcolaboradoresqualificacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `qualificacoes` decimal(10,2) DEFAULT NULL,
  `soma` decimal(10,2) DEFAULT NULL,
  `media` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcomissao
CREATE TABLE IF NOT EXISTS `tmpcomissao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `basedecalculo` decimal(10,2) DEFAULT NULL,
  `pcomissao` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `vendedor` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcomissaoatendimentos
CREATE TABLE IF NOT EXISTS `tmpcomissaoatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(250) DEFAULT NULL,
  `datafaturamento` date DEFAULT NULL,
  `vendedor` varchar(250) DEFAULT NULL,
  `valorentrada` decimal(10,4) DEFAULT NULL,
  `valorprazo` decimal(10,4) DEFAULT NULL,
  `parcelas` varchar(10) DEFAULT NULL,
  `totalnf` decimal(10,4) DEFAULT NULL,
  `valorcomissaopaga` decimal(10,4) DEFAULT NULL,
  `tipocurso` varchar(250) DEFAULT NULL,
  `datainicio` date DEFAULT NULL,
  `dataprevisaopagamento` date DEFAULT NULL,
  `turma` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcomissaocompartilhada
CREATE TABLE IF NOT EXISTS `tmpcomissaocompartilhada` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `conta` varchar(50) DEFAULT NULL,
  `vendedor` varchar(50) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `compartilhada` decimal(10,2) DEFAULT NULL,
  `compartilhadacom` varchar(50) DEFAULT NULL,
  `comissaooriginal` decimal(10,2) DEFAULT NULL,
  `nomevendedor` varchar(100) DEFAULT NULL,
  `nomecompartilhada` varchar(100) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `percentualdepartamento` decimal(10,2) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcomissaoformatura
CREATE TABLE IF NOT EXISTS `tmpcomissaoformatura` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `formatura` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcomissaoliquidez
CREATE TABLE IF NOT EXISTS `tmpcomissaoliquidez` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocontarecebida` varchar(50) DEFAULT NULL,
  `codigoitem` varchar(50) DEFAULT NULL,
  `descricaoitem` varchar(200) DEFAULT NULL,
  `tabela` decimal(10,6) DEFAULT NULL,
  `tabelacd` decimal(10,6) DEFAULT NULL,
  `total` decimal(10,6) DEFAULT NULL,
  `totalcd` decimal(10,6) DEFAULT NULL,
  `quantidade` decimal(10,6) DEFAULT NULL,
  `participacaovendedor` decimal(10,6) DEFAULT NULL,
  `percentualcomissao` decimal(10,6) DEFAULT NULL,
  `comissao` decimal(10,6) DEFAULT NULL,
  `percentualrecebido` decimal(10,6) DEFAULT NULL,
  `vendedor` varchar(50) DEFAULT NULL,
  `pdescontoitem` decimal(10,6) DEFAULT NULL,
  `reducaocomissao` decimal(10,6) DEFAULT NULL,
  `vendavendedor` decimal(10,6) DEFAULT NULL,
  `valorquitadoparacalcularpercentual` decimal(12,6) DEFAULT NULL,
  `aliquotasimples` decimal(10,6) DEFAULT NULL,
  `codigocolaborador` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `observacoes` varchar(100) DEFAULT NULL,
  `emissao` date DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `quitacao` date DEFAULT NULL,
  `custorealtotal` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcomposicao
CREATE TABLE IF NOT EXISTS `tmpcomposicao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigopai` varchar(100) DEFAULT NULL,
  `codigoproduto` varchar(100) DEFAULT NULL,
  `quantidade` varchar(50) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `codigocomposicao` varchar(20) DEFAULT NULL,
  `codigomontagemcomposicao` varchar(20) DEFAULT NULL,
  `imagem` varchar(2) DEFAULT NULL,
  `codigoprodutooriginal` varchar(100) DEFAULT NULL,
  `hierarquia` varchar(10) DEFAULT NULL,
  `configuracao` varchar(20) DEFAULT NULL,
  `configuracaopai` varchar(20) DEFAULT NULL,
  `valorvariacao` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=46594 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcomposicaoimpressao
CREATE TABLE IF NOT EXISTS `tmpcomposicaoimpressao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itematendimento` varchar(50) DEFAULT NULL,
  `codigopai` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,6) DEFAULT NULL,
  `hierarquia` varchar(1000) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `hierarquiapai` varchar(1000) DEFAULT NULL,
  `codigomontagemcomposicao` varchar(50) DEFAULT NULL,
  `codigoprodutooriginal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcompraevendaprodutos
CREATE TABLE IF NOT EXISTS `tmpcompraevendaprodutos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidadecompra` decimal(10,2) DEFAULT NULL,
  `quantidadevenda` decimal(10,2) DEFAULT NULL,
  `valorcompra` decimal(10,2) DEFAULT NULL,
  `valorvenda` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcompras
CREATE TABLE IF NOT EXISTS `tmpcompras` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(100) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `disponivel` varchar(50) DEFAULT NULL,
  `m1` decimal(10,2) DEFAULT NULL,
  `m2` decimal(10,2) DEFAULT NULL,
  `m3` decimal(10,2) DEFAULT NULL,
  `m4` decimal(10,2) DEFAULT NULL,
  `m5` decimal(10,2) DEFAULT NULL,
  `m6` decimal(10,2) DEFAULT NULL,
  `m7` decimal(10,2) DEFAULT NULL,
  `m8` decimal(10,2) DEFAULT NULL,
  `m9` decimal(10,2) DEFAULT NULL,
  `m10` decimal(10,2) DEFAULT NULL,
  `m11` decimal(10,2) DEFAULT NULL,
  `m12` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `media` decimal(10,2) DEFAULT NULL,
  `minimo` decimal(10,2) DEFAULT NULL,
  `maximo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcomprasatendimentos
CREATE TABLE IF NOT EXISTS `tmpcomprasatendimentos` (
  `codigo` varchar(25) NOT NULL DEFAULT '',
  `codigocolaborador` varchar(25) DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `horacadastro` time DEFAULT NULL,
  `datafaturamento` date DEFAULT NULL,
  `numeropedido` varchar(25) DEFAULT NULL,
  `observacoes` varchar(2000) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `codigovendedor` varchar(20) DEFAULT NULL,
  `tabelapadrao` varchar(25) DEFAULT NULL,
  `quantidadeitens` decimal(10,4) DEFAULT NULL,
  `quantidadeprodutos` decimal(10,4) DEFAULT NULL,
  `subtotal` decimal(10,4) DEFAULT NULL,
  `valortotal` decimal(10,4) DEFAULT NULL,
  `codigocondicaopagamento` varchar(10) DEFAULT NULL,
  `percentualdesconto` decimal(10,4) DEFAULT NULL,
  `valordesconto` decimal(10,4) DEFAULT NULL,
  `percentualentrada` decimal(10,4) DEFAULT NULL,
  `valorentrada` decimal(10,4) DEFAULT NULL,
  `valorprazo` decimal(10,4) DEFAULT NULL,
  `numeroparcelas` varchar(25) DEFAULT NULL,
  `intervaloparcelas` varchar(50) DEFAULT NULL,
  `codigotipodocumento` varchar(10) DEFAULT NULL,
  `localcobranca` varchar(10) DEFAULT NULL,
  `entradacomoadiantamento` varchar(3) DEFAULT NULL,
  `caixa` varchar(3) DEFAULT NULL,
  `modelonf` varchar(3) DEFAULT NULL,
  `numeronf` varchar(100) DEFAULT NULL,
  `serienf` varchar(4) DEFAULT NULL,
  `codigonaturezaoperacao` varchar(10) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `inscricaoestadualsubstituto` varchar(25) DEFAULT NULL,
  `dataemissao` date DEFAULT NULL,
  `horaemissao` varchar(25) DEFAULT NULL,
  `codigotransportadora` varchar(10) DEFAULT NULL,
  `entregue` varchar(3) DEFAULT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `ufplaca` varchar(2) DEFAULT NULL,
  `frete` varchar(25) DEFAULT NULL,
  `valorfrete` decimal(10,4) DEFAULT NULL,
  `pesoliquido` decimal(10,4) DEFAULT NULL,
  `pesobruto` decimal(10,4) DEFAULT NULL,
  `conhecimento` varchar(25) DEFAULT NULL,
  `basecalculoicms` decimal(10,4) DEFAULT NULL,
  `valoricms` decimal(10,4) DEFAULT NULL,
  `valoricmsst` decimal(10,4) DEFAULT NULL,
  `valorseguro` decimal(10,4) DEFAULT NULL,
  `despesas` decimal(10,4) DEFAULT NULL,
  `totalipi` decimal(10,4) DEFAULT NULL,
  `aliquotaiss` decimal(10,4) DEFAULT NULL,
  `totalnf` decimal(10,4) DEFAULT NULL,
  `quantidade` varchar(25) DEFAULT NULL,
  `especie` varchar(25) DEFAULT NULL,
  `marca` varchar(25) DEFAULT NULL,
  `numero` varchar(25) DEFAULT NULL,
  `totalprodutos` decimal(10,4) DEFAULT NULL,
  `totalservicos` decimal(10,4) DEFAULT NULL,
  `observacoesnota` varchar(500) DEFAULT NULL,
  `substitutoitens` varchar(300) DEFAULT NULL,
  `prazoentrega` varchar(25) DEFAULT NULL,
  `prazopagamento` varchar(25) DEFAULT NULL,
  `operacao` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `dataes` date DEFAULT NULL,
  `observacoesdocumentos` varchar(1000) DEFAULT NULL,
  `datapedido` date DEFAULT NULL,
  `colaboradoratendimentorapido` varchar(165) DEFAULT NULL,
  `tipooperacaofinanceira` varchar(10) DEFAULT NULL,
  `centrodecustos` varchar(10) DEFAULT NULL,
  `contadebito` varchar(10) DEFAULT NULL,
  `contacredito` varchar(10) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `motivodocancelamento` varchar(100) DEFAULT NULL,
  `detalhamentoparcelas` varchar(600) DEFAULT NULL COMMENT 'usado para gerar relatrio e mostrar as parcelas',
  `nfechavedeacesso` varchar(50) DEFAULT NULL,
  `nfelote` varchar(10) DEFAULT NULL,
  `nferecibo` varchar(50) DEFAULT NULL,
  `nfeprotocolo` varchar(50) DEFAULT NULL,
  `nfeprotocolocancelamento` varchar(50) DEFAULT NULL,
  `nfedatageracao` date DEFAULT NULL,
  `nfedatacancelamento` date DEFAULT NULL,
  `osprevisaotecnico` varchar(20) DEFAULT NULL,
  `osstatustecnico` varchar(30) DEFAULT NULL,
  `osgarantia` varchar(3) DEFAULT NULL,
  `osfuncionarioresponsavel` varchar(10) DEFAULT NULL,
  `osacessoriosaparencia` varchar(100) DEFAULT NULL,
  `osresumodoproblema` varchar(500) DEFAULT NULL,
  `oslaudotecnico` varchar(1000) DEFAULT NULL,
  `ostipoatendimento` varchar(30) DEFAULT NULL,
  `osautorizadopelocliente` varchar(3) DEFAULT NULL,
  `oshorastrabalhadas` varchar(10) DEFAULT NULL,
  `osquilometragemveiculo` varchar(10) DEFAULT NULL,
  `oscodigoveiculo` varchar(10) DEFAULT NULL,
  `osquilometragemdeslocamento` varchar(10) DEFAULT NULL,
  `fretetransporte` decimal(10,4) DEFAULT NULL,
  `contrato` varchar(25) DEFAULT NULL,
  `fornecedor` varchar(25) DEFAULT NULL,
  `localizador` varchar(50) DEFAULT NULL,
  `trecho` varchar(50) DEFAULT NULL,
  `horario` varchar(50) DEFAULT NULL,
  `taxaembarque` decimal(10,2) DEFAULT NULL,
  `outrastaxas` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `calculodanotamanual` tinytext,
  `descricaodosservicos` varchar(100) DEFAULT NULL,
  `statusinterno` varchar(10) DEFAULT NULL,
  `comanda` varchar(25) DEFAULT NULL,
  `descricaocondicaopagamento` varchar(50) DEFAULT NULL,
  `calcularcomissao` tinyint(1) unsigned DEFAULT NULL,
  `nfefinalidadeemissao` varchar(25) DEFAULT NULL,
  `nfechavedeacessoreferenciada` varchar(50) DEFAULT NULL,
  `descontoadicional1` varchar(10) DEFAULT NULL,
  `descontoadicional2` varchar(10) DEFAULT NULL,
  `descontoadicional3` varchar(10) DEFAULT NULL,
  `descontoadicional4` varchar(10) DEFAULT NULL,
  `descontoadicional5` varchar(10) DEFAULT NULL,
  `codigotipodocumentoavista` varchar(10) DEFAULT NULL,
  `formatura` varchar(20) DEFAULT NULL,
  `tipocontratoformatura` varchar(20) DEFAULT NULL,
  `especificardescontonanota` tinyint(1) unsigned DEFAULT NULL,
  `setor` varchar(20) DEFAULT NULL,
  `cpfconsumidor` varchar(20) DEFAULT NULL,
  `enderecoconsumidor` varchar(50) DEFAULT NULL,
  `cidadeconsumidor` varchar(50) DEFAULT NULL,
  `imovel` varchar(20) DEFAULT NULL,
  `observacoesnotareferenteacreditodeicms` varchar(500) DEFAULT NULL,
  `niveldesatisfacao` decimal(10,0) DEFAULT NULL,
  `formaturanumerodobaile` varchar(3) DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `enviodoxml` varchar(3) DEFAULT NULL,
  `idorigem` int(11) DEFAULT NULL,
  `_idorigem` int(11) DEFAULT NULL,
  `iddispositivo` varchar(50) DEFAULT NULL,
  `dataagendada` date DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horatermino` time DEFAULT NULL,
  `produtorserie` varchar(50) DEFAULT NULL,
  `produtornumero` varchar(50) DEFAULT NULL,
  `produtormesano` varchar(50) DEFAULT NULL,
  `produtormodelo` varchar(50) DEFAULT NULL,
  `tipodanota` varchar(2) DEFAULT NULL,
  `tipoemissaonota` varchar(20) DEFAULT NULL,
  `modelodocumentofiscal` varchar(2) DEFAULT NULL,
  `bcicmsst` decimal(10,2) DEFAULT NULL,
  `totalpis` decimal(10,2) DEFAULT NULL,
  `totalcofins` decimal(10,2) DEFAULT NULL,
  `totalpisst` decimal(10,2) DEFAULT NULL,
  `totalcofinsst` decimal(10,2) DEFAULT NULL,
  `ordemdecompra` varchar(50) DEFAULT NULL,
  `geodiancasterleantes` varchar(50) DEFAULT NULL,
  `geodianinccamberleantes` varchar(50) DEFAULT NULL,
  `geodiancasterldantes` varchar(50) DEFAULT NULL,
  `geodianinccamberldantes` varchar(50) DEFAULT NULL,
  `geodianconvergenciaantes` varchar(50) DEFAULT NULL,
  `geodiancasterledepois` varchar(50) DEFAULT NULL,
  `geodianinccamberledepois` varchar(50) DEFAULT NULL,
  `geodiancasterlddepois` varchar(50) DEFAULT NULL,
  `geodianinccamberlddepois` varchar(50) DEFAULT NULL,
  `geodianconvergenciadepois` varchar(50) DEFAULT NULL,
  `geotrasinccamberleantes` varchar(50) DEFAULT NULL,
  `geotrasinccamberldantes` varchar(50) DEFAULT NULL,
  `geotrasconvergenciaantes` varchar(50) DEFAULT NULL,
  `geotrasinccamberledepois` varchar(50) DEFAULT NULL,
  `geotrasinccamberlddepois` varchar(50) DEFAULT NULL,
  `geotrasconvergenciadepois` varchar(50) DEFAULT NULL,
  `geoendcolunale` varchar(50) DEFAULT NULL,
  `geobalrodasdiant` varchar(50) DEFAULT NULL,
  `geoserveixotraseiro` varchar(50) DEFAULT NULL,
  `geoendcolld` varchar(50) DEFAULT NULL,
  `geobalrodastraseiras` varchar(50) DEFAULT NULL,
  `bcpis` decimal(15,2) DEFAULT NULL,
  `bccofins` decimal(15,2) DEFAULT NULL,
  `selecionado` varchar(50) DEFAULT NULL,
  `comissaop` decimal(10,4) DEFAULT '0.0000',
  `descontoaposcobranca` decimal(10,4) DEFAULT '0.0000',
  `operador` varchar(50) DEFAULT NULL,
  `descontomaximoliberado` varchar(50) DEFAULT NULL,
  `ecf` varchar(50) DEFAULT NULL,
  `veiculodescricao` varchar(50) DEFAULT NULL,
  `placadescricao` varchar(50) DEFAULT NULL,
  `anoveiculodescricao` varchar(50) DEFAULT NULL,
  `corveiculodescricao` varchar(50) DEFAULT NULL,
  `safra` varchar(50) DEFAULT NULL,
  `piloto` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cultura` varchar(50) DEFAULT NULL,
  `vazao` varchar(50) DEFAULT NULL,
  `haservicovoo` varchar(50) DEFAULT NULL,
  `faixavoo` varchar(50) DEFAULT NULL,
  `numerodevoos` varchar(50) DEFAULT NULL,
  `obsvoos` varchar(50) DEFAULT NULL,
  `transladoinicial` decimal(10,2) DEFAULT '0.00',
  `transladofinal` decimal(10,2) DEFAULT '0.00',
  `servicoinicial` decimal(10,2) DEFAULT '0.00',
  `servicofinal` decimal(10,2) DEFAULT '0.00',
  `retornoinicial` decimal(10,2) DEFAULT '0.00',
  `retornofinal` decimal(10,2) DEFAULT '0.00',
  `valorha` decimal(10,2) DEFAULT '0.00',
  `dataexecucao` date DEFAULT NULL,
  `aviacaovaloravista` decimal(10,2) DEFAULT '0.00',
  `aviacaovaloraprazo` decimal(10,2) DEFAULT '0.00',
  `aviacaonumerorelatorioaplicacao` varchar(50) DEFAULT NULL,
  `aviacaotipo` varchar(50) DEFAULT NULL,
  `aviacaolitrosoleo` decimal(10,2) DEFAULT '0.00',
  `aviacaovaloroleo` decimal(10,2) DEFAULT '0.00',
  `translado` decimal(10,2) DEFAULT '0.00',
  `transladoservico` decimal(10,2) DEFAULT '0.00',
  `transladoretorno` decimal(10,2) DEFAULT '0.00',
  `materiaprimabaixada` varchar(10) DEFAULT '',
  `centrodecustocontrapartida` varchar(50) DEFAULT '',
  `atendimentolincado` varchar(50) DEFAULT '',
  `dataprevisao` date DEFAULT NULL,
  `dataentrega` date DEFAULT NULL,
  `aluno` varchar(50) DEFAULT NULL,
  `turma` varchar(50) DEFAULT NULL,
  `posvendarealizado` varchar(3) DEFAULT 'NÃO',
  `equipamento` varchar(200) DEFAULT NULL,
  `horaprevisao` time DEFAULT NULL,
  `tipoentrega` varchar(50) DEFAULT NULL,
  `incc` decimal(10,3) DEFAULT NULL,
  `valoraproximadotributos` decimal(10,2) DEFAULT NULL,
  `percentualvaloraproximadotributos` decimal(10,2) DEFAULT NULL,
  `codigoverificacaonfse` varchar(50) DEFAULT NULL,
  `inss` decimal(10,2) DEFAULT NULL,
  `csll` decimal(10,2) DEFAULT NULL,
  `ir` decimal(10,2) DEFAULT NULL,
  `observacoesnaoimpressas` varchar(50) DEFAULT NULL,
  `ultimoprocesso` varchar(50) DEFAULT NULL,
  `agencia` varchar(50) DEFAULT NULL,
  `tmpfilial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpconciliacaobancaria
CREATE TABLE IF NOT EXISTS `tmpconciliacaobancaria` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  `banco` varchar(100) DEFAULT NULL,
  `datapagamento` date DEFAULT NULL,
  `datavenda` date DEFAULT NULL,
  `bandeira` varchar(100) DEFAULT NULL,
  `formapagamento` varchar(100) DEFAULT NULL,
  `numeroparcela` int(11) DEFAULT NULL,
  `quantidadeparcelas` int(11) DEFAULT NULL,
  `numerocartao` varchar(50) DEFAULT NULL,
  `codigoautorizacao` varchar(50) DEFAULT NULL,
  `nsu` varchar(20) DEFAULT NULL,
  `valorbruto` decimal(10,2) DEFAULT NULL,
  `valorliquido` decimal(10,2) DEFAULT NULL,
  `taxaantecipacao` decimal(10,2) DEFAULT NULL,
  `valortaxa` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpconferencia
CREATE TABLE IF NOT EXISTS `tmpconferencia` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `venda` decimal(10,2) DEFAULT NULL,
  `conferencia` decimal(10,2) DEFAULT '0.00',
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpconfiguracoes
CREATE TABLE IF NOT EXISTS `tmpconfiguracoes` (
  `codigo` varchar(50) DEFAULT NULL,
  `empresa` varchar(200) DEFAULT NULL,
  `servidor` varchar(200) DEFAULT NULL,
  `banco` varchar(200) DEFAULT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  `odbc` varchar(200) DEFAULT NULL,
  `selecionada` varchar(200) DEFAULT NULL,
  `enviaratendimentos` varchar(200) DEFAULT NULL,
  `tmpestoque` varchar(200) DEFAULT NULL,
  `cripto` varchar(200) DEFAULT NULL,
  `tmpqnt` varchar(200) DEFAULT NULL,
  `hash` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpconsolidacao
CREATE TABLE IF NOT EXISTS `tmpconsolidacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `tamanho` varchar(255) DEFAULT NULL,
  `grupo` varchar(255) DEFAULT NULL,
  `subgrupo` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `colecao` varchar(255) DEFAULT NULL,
  `fornecedor` varchar(255) DEFAULT NULL,
  `matrizcompraperiodo` decimal(10,0) DEFAULT NULL,
  `matrizvendaperiodo` decimal(10,0) DEFAULT NULL,
  `matrizcompratotal` decimal(10,0) DEFAULT NULL,
  `matrizvendatotal` decimal(10,0) DEFAULT NULL,
  `matrizentradas` decimal(10,0) DEFAULT NULL,
  `matrizsaidas` decimal(10,0) DEFAULT NULL,
  `matrizestoque` decimal(10,0) DEFAULT NULL,
  `filialcompraperiodo` decimal(10,0) DEFAULT NULL,
  `filialvendaperiodo` decimal(10,0) DEFAULT NULL,
  `filialcompratotal` decimal(10,0) DEFAULT NULL,
  `filialvendatotal` decimal(10,0) DEFAULT NULL,
  `filialentradas` decimal(10,0) DEFAULT NULL,
  `filialsaidas` decimal(10,0) DEFAULT NULL,
  `filialestoque` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcontascobrancaemail
CREATE TABLE IF NOT EXISTS `tmpcontascobrancaemail` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoconta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcontascontabeisrateio
CREATE TABLE IF NOT EXISTS `tmpcontascontabeisrateio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contacontabil` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `percentual` decimal(10,3) DEFAULT NULL,
  `grupoorcamento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcontasporgrupo
CREATE TABLE IF NOT EXISTS `tmpcontasporgrupo` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `valortotalparcela` decimal(10,2) DEFAULT NULL,
  `percentual` decimal(10,4) DEFAULT NULL,
  `valorexibir` decimal(10,2) DEFAULT NULL,
  `codigoconta` varchar(50) DEFAULT NULL,
  `valornota` decimal(10,2) DEFAULT NULL,
  `percentualparcela` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcontasrateio
CREATE TABLE IF NOT EXISTS `tmpcontasrateio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `centrodecusto` varchar(10) DEFAULT NULL,
  `contacontabil` varchar(10) DEFAULT NULL,
  `percentual` decimal(10,5) DEFAULT NULL,
  `grupoorcamentocentrodecusto` varchar(10) DEFAULT NULL,
  `simulacao` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcontasrelatoriorapido
CREATE TABLE IF NOT EXISTS `tmpcontasrelatoriorapido` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) DEFAULT NULL,
  `emissao` date DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `pagamento` date DEFAULT NULL,
  `colaborador` varchar(250) DEFAULT NULL,
  `tipodocumento` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `valorquitado` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `tipodaconta` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `intervalo` varchar(50) DEFAULT NULL,
  `de` varchar(50) DEFAULT NULL,
  `ate` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `valorporextenso` varchar(500) DEFAULT NULL,
  `codigodaconta` varchar(50) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `observacoes` varchar(250) DEFAULT NULL,
  `descontos` decimal(10,2) DEFAULT NULL,
  `juros` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `multa` decimal(10,2) DEFAULT NULL,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `titular` varchar(250) DEFAULT NULL,
  `cartorio` decimal(10,2) DEFAULT NULL,
  `outrasdespesas` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcontratosdeprecos
CREATE TABLE IF NOT EXISTS `tmpcontratosdeprecos` (
  `item` int(10) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT '0',
  `descricao` varchar(255) DEFAULT '0',
  `quantidadecontratada` decimal(20,7) DEFAULT '0.0000000',
  `precocontratado` decimal(20,7) DEFAULT '0.0000000',
  `quantidadeutilizada` decimal(20,7) DEFAULT '0.0000000',
  `atendimento` varchar(50) DEFAULT NULL,
  `contrato` varchar(50) DEFAULT NULL,
  `validadeata` date DEFAULT NULL,
  `produtoentregue` varchar(50) DEFAULT NULL,
  `produtolicitado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcontroleseries
CREATE TABLE IF NOT EXISTS `tmpcontroleseries` (
  `codigo` varchar(11) DEFAULT NULL,
  `colaborador` varchar(250) DEFAULT NULL,
  `numeroinicio` int(11) DEFAULT NULL,
  `numerofim` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `observacoes` varchar(1500) DEFAULT NULL,
  `etiquetaimpressa` varchar(3) DEFAULT NULL,
  `tmpterminal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcores
CREATE TABLE IF NOT EXISTS `tmpcores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigocor` varchar(50) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `pdv` varchar(50) DEFAULT NULL,
  `selecionado` varchar(50) DEFAULT NULL,
  `codigoadicional` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpcotacoes
CREATE TABLE IF NOT EXISTS `tmpcotacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `fornecedor` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'NÃO Cotado',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpdatas
CREATE TABLE IF NOT EXISTS `tmpdatas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpdespesasfixas
CREATE TABLE IF NOT EXISTS `tmpdespesasfixas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `despesa` varchar(100) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpdiarioauxiliar
CREATE TABLE IF NOT EXISTS `tmpdiarioauxiliar` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `historico` varchar(200) DEFAULT NULL,
  `debito` decimal(10,2) DEFAULT NULL,
  `credito` decimal(10,2) DEFAULT NULL,
  `juros` decimal(10,2) DEFAULT NULL,
  `descontos` decimal(10,2) DEFAULT NULL,
  `numerodocumento` varchar(50) DEFAULT NULL,
  `contadebito` varchar(50) DEFAULT NULL,
  `contacredito` varchar(50) DEFAULT NULL,
  `tipoconta` varchar(50) DEFAULT NULL,
  `cnpjcolaborador` varchar(50) DEFAULT NULL,
  `notaorigem` varchar(50) DEFAULT NULL,
  `parcela` varchar(50) DEFAULT NULL,
  `vencimentoparcela` date DEFAULT NULL,
  `multa` decimal(10,2) DEFAULT NULL,
  `valorinicial` decimal(10,2) DEFAULT NULL,
  `tabelacontabil` varchar(50) DEFAULT NULL,
  `contaquitacao` varchar(50) DEFAULT NULL,
  `acrescimos` decimal(20,6) DEFAULT '0.000000',
  `saldo` decimal(20,6) DEFAULT '0.000000',
  `ordem` int(11) DEFAULT '0',
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpdocumentoentrega
CREATE TABLE IF NOT EXISTS `tmpdocumentoentrega` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpdocumentoscomimagem
CREATE TABLE IF NOT EXISTS `tmpdocumentoscomimagem` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `tabela` decimal(10,4) DEFAULT NULL,
  `total` decimal(10,4) DEFAULT NULL,
  `imagem` longblob,
  `atendimento` varchar(13) DEFAULT NULL,
  `tmpconserto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpdre
CREATE TABLE IF NOT EXISTS `tmpdre` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `conta` varchar(100) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT '0.00',
  `intervalo` varchar(50) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  `valoraexibir` decimal(10,2) DEFAULT '0.00',
  `valorasomar` decimal(10,2) DEFAULT '0.00',
  `receitascomvendas` decimal(10,2) DEFAULT '0.00',
  `codigoconta` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `cor` decimal(10,0) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `somardre` varchar(3) DEFAULT '',
  `empresa` varchar(20) DEFAULT NULL,
  `previsto` decimal(10,2) DEFAULT NULL,
  `previstoaexibir` decimal(10,2) DEFAULT NULL,
  `exibirnodre` varchar(1) DEFAULT '1',
  `resultado` decimal(10,2) DEFAULT NULL,
  `totaldasreceitas` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5184 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpdreanalise
CREATE TABLE IF NOT EXISTS `tmpdreanalise` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `conta` varchar(100) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT '0.00',
  `intervalo` varchar(50) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  `valoraexibir` decimal(10,2) DEFAULT '0.00',
  `valorasomar` decimal(10,2) DEFAULT '0.00',
  `receitascomvendas` decimal(10,2) DEFAULT '0.00',
  `codigoconta` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(50) DEFAULT NULL,
  `cor` decimal(10,0) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `somardre` varchar(3) DEFAULT '',
  `empresa` varchar(3) DEFAULT NULL,
  `ordemformatada` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpdreformulas
CREATE TABLE IF NOT EXISTS `tmpdreformulas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contacontabil` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpdremateriaprimautilizada
CREATE TABLE IF NOT EXISTS `tmpdremateriaprimautilizada` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `valorunitario` decimal(10,4) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `produto` (`produto`),
  KEY `grupo` (`grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpempresas
CREATE TABLE IF NOT EXISTS `tmpempresas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoempresa` varchar(50) DEFAULT NULL,
  `nomeempresa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpentregafuturarelatoriorapido
CREATE TABLE IF NOT EXISTS `tmpentregafuturarelatoriorapido` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `quantidade` varchar(50) DEFAULT NULL,
  `dataentrega` date DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `vendedor` varchar(50) DEFAULT NULL,
  `numeropedido` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpestoqueanterior
CREATE TABLE IF NOT EXISTS `tmpestoqueanterior` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `estoqueanterior` decimal(10,2) DEFAULT '0.00',
  `entradas` decimal(10,2) DEFAULT '0.00',
  `saidas` decimal(10,2) DEFAULT '0.00',
  `estoquefinal` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpestoquecentrodecusto
CREATE TABLE IF NOT EXISTS `tmpestoquecentrodecusto` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `unidade` varchar(50) DEFAULT NULL,
  `entrada` decimal(10,2) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `centrodecusto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpestoquedeposito
CREATE TABLE IF NOT EXISTS `tmpestoquedeposito` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `deposito` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpestoquedisponivel
CREATE TABLE IF NOT EXISTS `tmpestoquedisponivel` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `nota` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `movimento` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpestoqueecommerce
CREATE TABLE IF NOT EXISTS `tmpestoqueecommerce` (
  `cnpj` varchar(20) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `estoquedisponivel` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`cnpj`,`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpestoqueempresas
CREATE TABLE IF NOT EXISTS `tmpestoqueempresas` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `estoque` decimal(10,2) DEFAULT NULL,
  `somaempresa` decimal(10,2) DEFAULT NULL,
  `numeroconsulta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=1779022 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpestoqueempresasapp
CREATE TABLE IF NOT EXISTS `tmpestoqueempresasapp` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) NOT NULL,
  `produto` varchar(50) NOT NULL,
  `estoquedisponivel` decimal(10,2) DEFAULT NULL,
  `dataalteracao` date DEFAULT NULL,
  PRIMARY KEY (`empresa`,`produto`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpestoquetodasfiliais
CREATE TABLE IF NOT EXISTS `tmpestoquetodasfiliais` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `estoque` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpetiquetaordemservico
CREATE TABLE IF NOT EXISTS `tmpetiquetaordemservico` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(50) DEFAULT NULL,
  `ordemservico` varchar(50) DEFAULT NULL,
  `problema` varchar(2000) DEFAULT NULL,
  `dataentrada` varchar(50) DEFAULT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `telefoneempresa` varchar(100) DEFAULT NULL,
  `equipamento` varchar(100) DEFAULT NULL,
  `dataprevisao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpetiquetasempacotamento
CREATE TABLE IF NOT EXISTS `tmpetiquetasempacotamento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `notafiscal` varchar(50) DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `origem` varchar(100) DEFAULT NULL,
  `atendimento` varchar(20) DEFAULT NULL,
  `transportadora` varchar(100) DEFAULT NULL,
  `enderecoremetente` varchar(100) DEFAULT NULL,
  `numeroremetente` varchar(100) DEFAULT NULL,
  `complementoremetente` varchar(100) DEFAULT NULL,
  `bairroremetente` varchar(100) DEFAULT NULL,
  `cidaderemetente` varchar(100) DEFAULT NULL,
  `estadoremetente` varchar(100) DEFAULT NULL,
  `cepremetente` varchar(100) DEFAULT NULL,
  `cnpjremetente` varchar(100) DEFAULT NULL,
  `telefoneremetente` varchar(100) DEFAULT NULL,
  `observacoes` varchar(5000) DEFAULT NULL,
  `produto` varchar(20) DEFAULT NULL,
  `tmplogoetiquetas` blob,
  `descricaoproduto` varchar(150) DEFAULT NULL,
  `dataemissao` date DEFAULT NULL,
  `quantidade` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpfaixascep
CREATE TABLE IF NOT EXISTS `tmpfaixascep` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `faixa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpfechamentodecaixa
CREATE TABLE IF NOT EXISTS `tmpfechamentodecaixa` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `contacaixa` varchar(100) DEFAULT NULL,
  `evento` varchar(100) DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `numerodocumento` varchar(100) DEFAULT NULL,
  `vendedor` varchar(250) DEFAULT NULL,
  `cliente` varchar(250) DEFAULT NULL,
  `valor` double(12,4) DEFAULT NULL,
  `atendimento` varchar(100) DEFAULT NULL,
  `parcelas` varchar(100) DEFAULT NULL,
  `fiscal` varchar(100) DEFAULT NULL,
  `valor2` double(12,4) DEFAULT NULL,
  `tipomovimentacao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpfechamentodecaixacondicionais
CREATE TABLE IF NOT EXISTS `tmpfechamentodecaixacondicionais` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpfechamentodecaixacondicionais2
CREATE TABLE IF NOT EXISTS `tmpfechamentodecaixacondicionais2` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `condicionaisemaberto` decimal(20,6) DEFAULT '0.000000',
  `saldocondicionais` decimal(20,6) DEFAULT '0.000000',
  `atendimento` varchar(50) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `dataunido` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpfechamentodecaixacreditos
CREATE TABLE IF NOT EXISTS `tmpfechamentodecaixacreditos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpfechamentodecaixaentradas
CREATE TABLE IF NOT EXISTS `tmpfechamentodecaixaentradas` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `contacaixa` varchar(100) DEFAULT NULL,
  `evento` varchar(100) DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `numerodocumento` varchar(100) DEFAULT NULL,
  `vendedor` varchar(250) DEFAULT NULL,
  `cliente` varchar(250) DEFAULT NULL,
  `valor` double(12,4) DEFAULT NULL,
  `atendimento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpfechamentodecaixasaidas
CREATE TABLE IF NOT EXISTS `tmpfechamentodecaixasaidas` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `contacaixa` varchar(100) DEFAULT NULL,
  `evento` varchar(100) DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `numerodocumento` varchar(100) DEFAULT NULL,
  `vendedor` varchar(250) DEFAULT NULL,
  `cliente` varchar(250) DEFAULT NULL,
  `valor` double(12,4) DEFAULT NULL,
  `atendimento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpfluxodecaixa
CREATE TABLE IF NOT EXISTS `tmpfluxodecaixa` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `conta` varchar(100) DEFAULT NULL,
  `previsto` decimal(10,2) DEFAULT NULL,
  `realizado` decimal(10,2) DEFAULT NULL,
  `projetado` decimal(10,2) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpformandosformaturas
CREATE TABLE IF NOT EXISTS `tmpformandosformaturas` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `formando` varchar(50) DEFAULT NULL,
  `formatura` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgeradorlistadeprecos
CREATE TABLE IF NOT EXISTS `tmpgeradorlistadeprecos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgestaoentrega
CREATE TABLE IF NOT EXISTS `tmpgestaoentrega` (
  `item` int(10) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT '0',
  `descricao` varchar(255) DEFAULT '0',
  `quantidadetotal` decimal(20,7) DEFAULT '0.0000000',
  `quantidadeentregue` decimal(20,7) DEFAULT '0.0000000',
  `atendimento` varchar(50) DEFAULT NULL,
  `contrato` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgestaometas
CREATE TABLE IF NOT EXISTS `tmpgestaometas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `valoratingido` decimal(10,2) DEFAULT NULL,
  `acumulado` decimal(10,2) DEFAULT NULL,
  `percentual` decimal(10,2) DEFAULT NULL,
  `atingido` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgestaoorcamentos
CREATE TABLE IF NOT EXISTS `tmpgestaoorcamentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(20) DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `numeropedido` varchar(20) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `modeloveiculo` varchar(50) DEFAULT NULL,
  `placaveiculo` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `vendedor` varchar(100) DEFAULT NULL,
  `statusorcamento` varchar(50) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgestorcomercial
CREATE TABLE IF NOT EXISTS `tmpgestorcomercial` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `dataultimacompra` date DEFAULT NULL,
  `dataparametro` date DEFAULT NULL,
  `diasverde` decimal(10,0) DEFAULT NULL,
  `diasamarelo` decimal(10,0) DEFAULT NULL,
  `diasvermelho` decimal(10,0) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgestorestoque
CREATE TABLE IF NOT EXISTS `tmpgestorestoque` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricao` varchar(120) DEFAULT NULL,
  `estoque` decimal(10,2) DEFAULT NULL,
  `disponivel` decimal(10,2) DEFAULT NULL,
  `m1` decimal(10,2) DEFAULT NULL,
  `m2` decimal(10,2) DEFAULT NULL,
  `m3` decimal(10,2) DEFAULT NULL,
  `m4` decimal(10,2) DEFAULT NULL,
  `m5` decimal(10,2) DEFAULT NULL,
  `m6` decimal(10,2) DEFAULT NULL,
  `m7` decimal(10,2) DEFAULT NULL,
  `m8` decimal(10,2) DEFAULT NULL,
  `m9` decimal(10,2) DEFAULT NULL,
  `m10` decimal(10,2) DEFAULT NULL,
  `m11` decimal(10,2) DEFAULT NULL,
  `m12` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `media` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgestorfinanceiro
CREATE TABLE IF NOT EXISTS `tmpgestorfinanceiro` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `receber` decimal(10,2) DEFAULT '0.00',
  `pagar` decimal(10,2) DEFAULT '0.00',
  `saldoanterior` decimal(10,2) DEFAULT '0.00',
  `saldo` decimal(10,2) DEFAULT '0.00',
  `caixa` decimal(10,2) DEFAULT '0.00',
  `caixasaldoanterior` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8566 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgestorfiscal
CREATE TABLE IF NOT EXISTS `tmpgestorfiscal` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(10) DEFAULT NULL,
  `serie` varchar(10) DEFAULT NULL,
  `numerodocumentofiscal` int(11) DEFAULT NULL,
  `modelofiscal` varchar(10) DEFAULT NULL,
  `atendimento` varchar(10) DEFAULT NULL,
  `codigocolaborador` varchar(10) DEFAULT NULL,
  `colaborador` varchar(200) DEFAULT NULL,
  `datalancamento` date DEFAULT NULL,
  `dataemissao` date DEFAULT NULL,
  `datasaida` date DEFAULT NULL,
  `tipoemissao` varchar(20) DEFAULT '',
  `codigonatureza` varchar(20) DEFAULT '',
  `cfop` varchar(20) DEFAULT '',
  `naturezaoperacao` varchar(60) DEFAULT '',
  `situacaodocumento` varchar(50) DEFAULT '',
  `operacao` varchar(50) DEFAULT '',
  `chavedeacesso` varchar(44) DEFAULT '',
  `protocoloautorizacao` varchar(30) DEFAULT '',
  `recibo` varchar(30) DEFAULT '',
  `protocolocancelamento` varchar(30) DEFAULT '',
  `lotenfse` varchar(30) DEFAULT '',
  `rpsnfse` varchar(30) DEFAULT '',
  `uforigem` varchar(30) DEFAULT '',
  `ufdestino` varchar(30) DEFAULT '',
  `placa` varchar(30) DEFAULT '',
  `ctetipo` varchar(30) DEFAULT '',
  `vbcicms` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vicms` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vbcicmsst` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vicmsst` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vipi` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vipidev` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vfrete` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `voutros` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vseguro` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vdesc` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vpis` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vcofins` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `pcredicms` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vdifal` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vdifalremt` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vdifaldest` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vfcp` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vprod` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vnfe` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgestorfiscalinutilizacoes
CREATE TABLE IF NOT EXISTS `tmpgestorfiscalinutilizacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ano` varchar(10) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `serie` varchar(20) DEFAULT NULL,
  `modelo` varchar(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `numeroinicial` int(11) DEFAULT NULL,
  `numerofinal` int(11) DEFAULT NULL,
  `situacao` varchar(20) DEFAULT NULL,
  `protocolo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgestorposvendas
CREATE TABLE IF NOT EXISTS `tmpgestorposvendas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(20) DEFAULT NULL,
  `colaborador` varchar(200) DEFAULT NULL,
  `numeropedido` varchar(10) DEFAULT NULL,
  `colaboradoratendimentorapido` varchar(200) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `numeronf` varchar(10) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `datafaturamento` date DEFAULT NULL,
  `totalnf` decimal(10,4) DEFAULT NULL,
  `osstatustecnico` varchar(50) DEFAULT NULL,
  `vendedor` varchar(200) DEFAULT NULL,
  `descricaocondicaopagamento` varchar(200) DEFAULT NULL,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `cpfcnpj` varchar(20) DEFAULT NULL,
  `veiculodescricao` varchar(100) DEFAULT NULL,
  `placadescricao` varchar(50) DEFAULT NULL,
  `posvendarealizado` varchar(50) DEFAULT NULL,
  `dataentrega` date DEFAULT NULL,
  `tipoentrega` varchar(50) DEFAULT NULL,
  `controle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=13143 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgnre
CREATE TABLE IF NOT EXISTS `tmpgnre` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `gnre` varchar(20) DEFAULT NULL,
  `tmpobservacoes` varchar(200) DEFAULT NULL,
  `tmpcodigoreceita` varchar(20) DEFAULT NULL,
  `tmpcodigodebarras` longblob,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgrades
CREATE TABLE IF NOT EXISTS `tmpgrades` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cor` varchar(50) DEFAULT NULL,
  `tamanho` varchar(50) DEFAULT NULL,
  `codigonovoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,6) DEFAULT NULL,
  `codigoprodutooriginal` varchar(50) DEFAULT NULL,
  `valormercadoria` decimal(10,2) DEFAULT NULL,
  `praticado1` decimal(10,2) DEFAULT NULL,
  `praticado2` decimal(10,2) DEFAULT NULL,
  `praticado3` decimal(10,2) DEFAULT NULL,
  `praticado4` decimal(10,2) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `subgrupo` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `chavedeacessoouatendimento` varchar(50) DEFAULT NULL,
  `descricaonovoproduto` varchar(200) DEFAULT NULL,
  `descricaodoprodutooriginal` varchar(200) DEFAULT NULL,
  `codigoean` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpgraficodashboards
CREATE TABLE IF NOT EXISTS `tmpgraficodashboards` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mes` varchar(50) DEFAULT NULL,
  `faturamento` decimal(10,2) DEFAULT NULL,
  `cmv` decimal(10,2) DEFAULT NULL,
  `despesas` decimal(10,2) DEFAULT NULL,
  `lucro` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=146071 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimportarxmlnfegerarcte
CREATE TABLE IF NOT EXISTS `tmpimportarxmlnfegerarcte` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `chnfe` varchar(44) DEFAULT NULL,
  `nnf` varchar(10) DEFAULT NULL,
  `mod` varchar(10) DEFAULT NULL,
  `dhemi` datetime DEFAULT NULL,
  `dhsaient` datetime DEFAULT NULL,
  `codigo_emi` varchar(20) DEFAULT NULL,
  `cnpj_emi` varchar(20) DEFAULT NULL,
  `xnome_emi` varchar(200) DEFAULT NULL,
  `xlgr_emi` varchar(200) DEFAULT NULL,
  `nro_emi` varchar(20) DEFAULT NULL,
  `xbairro_emi` varchar(200) DEFAULT NULL,
  `codigo_cidade_emi` varchar(20) DEFAULT NULL,
  `cmun_emi` varchar(10) DEFAULT NULL,
  `xmun_emi` varchar(200) DEFAULT NULL,
  `uf_emi` varchar(20) DEFAULT NULL,
  `cep_emi` varchar(20) DEFAULT NULL,
  `cpais_emi` varchar(20) DEFAULT NULL,
  `fone_emi` varchar(20) DEFAULT NULL,
  `ie_emi` varchar(20) DEFAULT NULL,
  `codigo_dest` varchar(20) DEFAULT NULL,
  `cnpj_dest` varchar(20) DEFAULT NULL,
  `xnome_dest` varchar(200) DEFAULT NULL,
  `xlgr_dest` varchar(200) DEFAULT NULL,
  `nro_dest` varchar(20) DEFAULT NULL,
  `xbairro_dest` varchar(200) DEFAULT NULL,
  `codigo_cidade_dest` varchar(20) DEFAULT NULL,
  `cmun_dest` varchar(10) DEFAULT NULL,
  `xmun_dest` varchar(200) DEFAULT NULL,
  `uf_dest` varchar(20) DEFAULT NULL,
  `cep_dest` varchar(20) DEFAULT NULL,
  `cpais_dest` varchar(20) DEFAULT NULL,
  `fone_dest` varchar(20) DEFAULT NULL,
  `ie_dest` varchar(20) DEFAULT NULL,
  `qvol` decimal(20,6) DEFAULT NULL,
  `esp` varchar(100) DEFAULT NULL,
  `pesol` decimal(20,6) DEFAULT NULL,
  `pesob` decimal(20,6) DEFAULT NULL,
  `vfrete` decimal(20,6) DEFAULT '0.000000',
  `vnf` decimal(20,7) DEFAULT '0.0000000',
  `situacao_documento` varchar(50) DEFAULT '',
  `empresa` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE,
  UNIQUE KEY `chnfe` (`chnfe`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaoacademico
CREATE TABLE IF NOT EXISTS `tmpimpressaoacademico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `turma` varchar(50) DEFAULT NULL,
  `datarecebimentocertificados` date DEFAULT NULL,
  `dataenviocertificados` date DEFAULT NULL,
  `observacoescertificados` varchar(500) DEFAULT NULL,
  `documentoenviadocancelamento` varchar(50) DEFAULT NULL,
  `documentorecebidocancelamento` varchar(50) DEFAULT NULL,
  `datacancelamento` date DEFAULT NULL,
  `motivocancelamento` varchar(50) DEFAULT NULL,
  `documentoenviadotrancamento` varchar(50) DEFAULT NULL,
  `documentorecebidotrancamento` varchar(50) DEFAULT NULL,
  `datatrancamento` date DEFAULT NULL,
  `dataretornotrancamento` date DEFAULT NULL,
  `retornotrancamento` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Cursando',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaoatendimentos
CREATE TABLE IF NOT EXISTS `tmpimpressaoatendimentos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(20) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `vendedor` varchar(50) DEFAULT NULL,
  `colaborador` varchar(200) DEFAULT NULL,
  `nomefantasia` varchar(200) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `numero` varchar(200) DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `uf` varchar(200) DEFAULT NULL,
  `cep` varchar(200) DEFAULT NULL,
  `bairro` varchar(200) DEFAULT NULL,
  `referencia` varchar(200) DEFAULT NULL,
  `telefone` varchar(200) DEFAULT NULL,
  `contato` varchar(200) DEFAULT NULL,
  `cnpj` varchar(200) DEFAULT NULL,
  `ie` varchar(200) DEFAULT NULL,
  `prazodeentrega` varchar(200) DEFAULT NULL,
  `prazodepagamento` varchar(200) DEFAULT NULL,
  `datadopedido` varchar(200) DEFAULT NULL,
  `numerodopedido` varchar(200) DEFAULT NULL,
  `lancamento` varchar(200) DEFAULT NULL,
  `validade` varchar(200) DEFAULT NULL,
  `tipodofrete` varchar(200) DEFAULT NULL,
  `subtotal` decimal(20,5) DEFAULT NULL,
  `frete` decimal(20,5) DEFAULT NULL,
  `ipi` decimal(20,5) DEFAULT NULL,
  `st` decimal(20,5) DEFAULT NULL,
  `total` decimal(20,5) DEFAULT NULL,
  `cabecalholinha1` varchar(200) DEFAULT NULL,
  `cabecalholinha2` varchar(200) DEFAULT NULL,
  `cabecalholinha3` varchar(200) DEFAULT NULL,
  `cabecalholinha4` varchar(200) DEFAULT NULL,
  `cabecalhoimagem1` longblob,
  `cabecalhoimagem2` longblob,
  `email` varchar(200) DEFAULT NULL,
  `observacoes` varchar(5000) DEFAULT NULL,
  `transportadora` varchar(200) DEFAULT NULL,
  `fornecedor` varchar(200) DEFAULT NULL,
  `condicaopagamento` varchar(200) DEFAULT NULL,
  `entrada` varchar(200) DEFAULT NULL,
  `prazo` varchar(200) DEFAULT NULL,
  `ordemdecompra` varchar(200) DEFAULT NULL,
  `naturezaoperacao` varchar(200) DEFAULT NULL,
  `dataemissaonota` varchar(200) DEFAULT NULL,
  `datasaida` varchar(200) DEFAULT NULL,
  `horasaida` varchar(200) DEFAULT NULL,
  `fatura` varchar(2000) DEFAULT NULL,
  `numeronota` varchar(200) DEFAULT NULL,
  `observacoesnota` varchar(200) DEFAULT NULL,
  `imovel` varchar(200) DEFAULT NULL,
  `observacoesos` varchar(1000) DEFAULT NULL,
  `reumodoproblema` varchar(1000) DEFAULT NULL,
  `laudotecnico` varchar(1000) DEFAULT NULL,
  `responsaveltecnico` varchar(200) DEFAULT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `captiontextolivre` varchar(200) DEFAULT NULL,
  `veiculo` varchar(20) DEFAULT NULL,
  `odometro` varchar(20) DEFAULT NULL,
  `descricaoimovel` varchar(300) DEFAULT NULL,
  `proprietario` varchar(300) DEFAULT NULL,
  `locatario` varchar(300) DEFAULT NULL,
  `dataagendada` varchar(300) DEFAULT NULL,
  `horainicio` varchar(300) DEFAULT NULL,
  `horatermino` varchar(300) DEFAULT NULL,
  `dianteiraantescasterle` varchar(300) DEFAULT NULL,
  `dianteiraantesinccamberle` varchar(300) DEFAULT NULL,
  `dianteiraantescasterld` varchar(300) DEFAULT NULL,
  `dianteiraantesinccamberld` varchar(300) DEFAULT NULL,
  `dianteiraantesconvergencia` varchar(300) DEFAULT NULL,
  `traseiraantesinccamberle` varchar(300) DEFAULT NULL,
  `traseiraantesinccamberld` varchar(300) DEFAULT NULL,
  `traseiraantesconvergencia` varchar(300) DEFAULT NULL,
  `dianteiradepoiscasterle` varchar(300) DEFAULT NULL,
  `dianteiradepoisinccamberle` varchar(300) DEFAULT NULL,
  `dianteiradepoiscasterld` varchar(300) DEFAULT NULL,
  `dianteiradepoisinccamberld` varchar(300) DEFAULT NULL,
  `dianteiradepoisconvergencia` varchar(300) DEFAULT NULL,
  `traseiradepoisinccamberle` varchar(300) DEFAULT NULL,
  `traseiradepoisinccamberld` varchar(300) DEFAULT NULL,
  `traseiradepoisconvergencia` varchar(300) DEFAULT NULL,
  `geometriaendcolunale` varchar(50) DEFAULT NULL,
  `geometriabalrodasdianteiras` varchar(50) DEFAULT NULL,
  `geometriaserveixotraseiro` varchar(50) DEFAULT NULL,
  `geometriaendcolunald` varchar(50) DEFAULT NULL,
  `geometriabalrodastraseiras` varchar(50) DEFAULT NULL,
  `horalancamento` varchar(50) DEFAULT NULL,
  `formatura` varchar(100) DEFAULT NULL,
  `pesobruto` varchar(100) DEFAULT NULL,
  `pesoliquido` varchar(100) DEFAULT NULL,
  `rg` varchar(100) DEFAULT NULL,
  `datanascimento` varchar(100) DEFAULT NULL,
  `descontomoeda` decimal(20,5) DEFAULT NULL,
  `codigocentrodecusto` varchar(50) DEFAULT NULL,
  `descricaoveiculo` varchar(50) DEFAULT NULL,
  `descricaoplaca` varchar(50) DEFAULT NULL,
  `descricaocorveiculo` varchar(50) DEFAULT NULL,
  `descricaoano` varchar(50) DEFAULT NULL,
  `dataprevisao` varchar(50) DEFAULT NULL,
  `dataentrega` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `equipamento` varchar(200) DEFAULT NULL,
  `horaprevisao` varchar(200) DEFAULT NULL,
  `placa` varchar(200) DEFAULT NULL,
  `issretido` decimal(20,5) DEFAULT NULL,
  `servicos` decimal(20,5) DEFAULT NULL,
  `totalnota` decimal(20,5) DEFAULT NULL,
  `operacao` varchar(50) DEFAULT NULL,
  `valoraproximadotributos` varchar(200) DEFAULT NULL,
  `nomedoevento` varchar(200) DEFAULT NULL,
  `telefonedoevento` varchar(20) DEFAULT NULL,
  `emaildoevento` varchar(100) DEFAULT NULL,
  `tipodoevento` varchar(100) DEFAULT NULL,
  `datadoevento` date DEFAULT NULL,
  `horadoevento` datetime DEFAULT NULL,
  `enderecocompletodoevento` varchar(200) DEFAULT NULL,
  `emissor` varchar(200) DEFAULT NULL,
  `cnpjemissor` varchar(200) DEFAULT NULL,
  `modalidade` varchar(200) DEFAULT NULL,
  `edital` varchar(200) DEFAULT NULL,
  `processo` varchar(200) DEFAULT NULL,
  `abertura` varchar(200) DEFAULT NULL,
  `validadeitens` varchar(200) DEFAULT NULL,
  `objeto` varchar(200) DEFAULT NULL,
  `cidadeemissor` varchar(200) DEFAULT NULL,
  `proprietarioempresa` varchar(200) DEFAULT NULL,
  `documentoproprietario` varchar(200) DEFAULT NULL,
  `condicaoespecial` varchar(200) DEFAULT NULL,
  `percentualcondicaoespecial` decimal(20,5) DEFAULT NULL,
  `fretedatasaida` varchar(50) DEFAULT NULL,
  `fretesatachegada` varchar(50) DEFAULT NULL,
  `fretequantidadearla` varchar(50) DEFAULT NULL,
  `fretekminicial` varchar(50) DEFAULT NULL,
  `fretekmfinal` varchar(50) DEFAULT NULL,
  `fretekmtotal` varchar(50) DEFAULT NULL,
  `fretequantidadecombustivel` varchar(50) DEFAULT NULL,
  `fretedespesas` varchar(50) DEFAULT NULL,
  `fretevalorkm` varchar(50) DEFAULT NULL,
  `freteconsumokm` varchar(50) DEFAULT NULL,
  `fretesaldo` varchar(50) DEFAULT NULL,
  `fretecidadeorigem` varchar(100) DEFAULT NULL,
  `fretecidadedestino` varchar(100) DEFAULT NULL,
  `numerocontrato` varchar(100) DEFAULT NULL,
  `descricaocontrato` varchar(5000) DEFAULT NULL,
  `enderecoemissor` varchar(100) DEFAULT NULL,
  `estadoemissor` varchar(100) DEFAULT NULL,
  `bairroemissor` varchar(100) DEFAULT NULL,
  `emailemissor` varchar(100) DEFAULT NULL,
  `telefoneemissor` varchar(100) DEFAULT NULL,
  `motorista` varchar(100) DEFAULT NULL,
  `agencia` varchar(100) DEFAULT NULL,
  `statusorcamento` varchar(100) DEFAULT NULL,
  `motivostatusorcamento` varchar(250) DEFAULT NULL,
  `creditos` decimal(20,5) DEFAULT NULL,
  `conjuge` varchar(100) DEFAULT NULL,
  `telefoneconjuge` varchar(100) DEFAULT NULL,
  `telefonecomercial` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `assinatura` blob,
  `acessoriosaparencia` varchar(100) DEFAULT NULL,
  `ceiobra` varchar(20) DEFAULT NULL,
  `cidadeincidencia` varchar(50) DEFAULT NULL,
  `valorextenso` varchar(150) DEFAULT NULL,
  `rps` varchar(10) DEFAULT NULL,
  `titulocontrato` varchar(50) DEFAULT NULL,
  `fatura2` varchar(1000) DEFAULT NULL,
  `controle` varchar(50) DEFAULT NULL,
  `baseiss` decimal(20,5) DEFAULT NULL,
  `valorissreduzido` varchar(50) DEFAULT NULL,
  `rgproprietario` varchar(50) DEFAULT NULL,
  `grupocliente` varchar(50) DEFAULT NULL,
  `solicitante` varchar(50) DEFAULT NULL,
  `revisao` varchar(2) DEFAULT NULL,
  `localentrega` varchar(100) DEFAULT NULL,
  `tiporesponsavel` varchar(100) DEFAULT NULL,
  `documentoaprazo` varchar(50) DEFAULT NULL,
  `documentoavista` varchar(50) DEFAULT NULL,
  `cnpjsemformatacao` varchar(20) DEFAULT NULL,
  `observacoescliente` varchar(300) DEFAULT NULL,
  `codigoenderecocobranca` int(11) DEFAULT NULL,
  `codigoenderecoentrega` int(11) DEFAULT NULL,
  `ordemservico` varchar(20) DEFAULT NULL,
  `pedido` varchar(20) DEFAULT NULL,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `produtos` double(20,5) DEFAULT NULL,
  `recibolocacao` varchar(20) DEFAULT NULL,
  `textoautorizacao` varchar(5000) DEFAULT NULL,
  `orcamento` varchar(20) DEFAULT NULL,
  `dataexecucao` date DEFAULT NULL,
  `subtotal2` decimal(20,5) DEFAULT NULL,
  `titularatendimento` varchar(500) DEFAULT NULL,
  `nomedoautorizado` varchar(100) DEFAULT NULL,
  `comandamesa` varchar(20) DEFAULT NULL,
  `comissao` decimal(20,5) DEFAULT NULL,
  `auxiliarcustofixo` decimal(20,5) DEFAULT NULL,
  `auxiliarcustoadicional` decimal(20,5) DEFAULT NULL,
  `totalvmv` decimal(20,5) DEFAULT NULL,
  `totalcmv` decimal(20,5) DEFAULT NULL,
  `codigorenesem` varchar(50) DEFAULT NULL,
  `responsaveltecnicodaempresa` varchar(50) DEFAULT NULL,
  `intervaloparcelas` varchar(50) DEFAULT NULL,
  `termoconformidade` varchar(50) DEFAULT NULL,
  `ata` varchar(50) DEFAULT NULL,
  `pregao` varchar(50) DEFAULT NULL,
  `faturamento` varchar(10) DEFAULT NULL,
  `fretetransporte` decimal(20,5) DEFAULT NULL,
  `prazovalidade` varchar(25) DEFAULT NULL,
  `empresa` varchar(10) DEFAULT NULL,
  `datalancamento` date DEFAULT NULL,
  `volumes` varchar(10) DEFAULT NULL,
  `devolucoes` decimal(20,5) DEFAULT NULL,
  `valortroco` decimal(20,5) DEFAULT '0.00000',
  `descricaocontratolonga` text,
  `operador` varchar(200) DEFAULT NULL,
  `observacoesordemproducaoestrutural` varchar(5000) DEFAULT NULL,
  `cubagem` decimal(20,5) DEFAULT NULL,
  `pdesconto` decimal(10,5) DEFAULT '0.00000',
  `despesas` decimal(10,5) DEFAULT '0.00000',
  `descadicional1` decimal(10,5) DEFAULT '0.00000',
  `descadicional2` decimal(10,5) DEFAULT '0.00000',
  `descadicional3` decimal(10,5) DEFAULT '0.00000',
  `descadicional4` decimal(10,5) DEFAULT '0.00000',
  `descadicional5` decimal(10,5) DEFAULT '0.00000',
  `especie` varchar(100) DEFAULT '0.00000',
  `marca` varchar(100) DEFAULT '0.00000',
  `quantidade` varchar(50) DEFAULT '0.00000',
  `valordesconto` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaoatendimentos2
CREATE TABLE IF NOT EXISTS `tmpimpressaoatendimentos2` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `descricaocontratoextensa` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaoatendimentos3
CREATE TABLE IF NOT EXISTS `tmpimpressaoatendimentos3` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `obsdoiscolaborador` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7732 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaoatendimentosimagens
CREATE TABLE IF NOT EXISTS `tmpimpressaoatendimentosimagens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `imagem` longblob,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaoavisos
CREATE TABLE IF NOT EXISTS `tmpimpressaoavisos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mensagem` text,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaocomanda
CREATE TABLE IF NOT EXISTS `tmpimpressaocomanda` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `codigocliente` varchar(50) DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `pontoreferencia` varchar(100) DEFAULT NULL,
  `itemcomanda` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `totalitem` decimal(10,2) DEFAULT NULL,
  `complementos` varchar(1000) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `entrega` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `pagamento` varchar(50) DEFAULT NULL,
  `receber` decimal(10,2) DEFAULT NULL,
  `troco` decimal(10,2) DEFAULT NULL,
  `observacoesitem` varchar(100) DEFAULT NULL,
  `observacoescomanda` varchar(100) DEFAULT NULL,
  `cabecalholinha1` varchar(100) DEFAULT NULL,
  `cabecalholinha2` varchar(100) DEFAULT NULL,
  `cabecalholinha3` varchar(100) DEFAULT NULL,
  `cabecalholinha4` varchar(100) DEFAULT NULL,
  `comanda` varchar(50) DEFAULT NULL,
  `impressora` varchar(100) DEFAULT NULL,
  `atendente` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT 'Tele-Entrega',
  PRIMARY KEY (`codigo`),
  KEY `comanda` (`atendimento`),
  KEY `codigocliente` (`codigocliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaocontatos
CREATE TABLE IF NOT EXISTS `tmpimpressaocontatos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contato` varchar(50) DEFAULT NULL,
  `colaborador` varchar(200) DEFAULT NULL,
  `responsavel` varchar(200) DEFAULT NULL,
  `imovel` varchar(200) DEFAULT NULL,
  `solicitacao` varchar(1000) DEFAULT NULL,
  `parecer` varchar(1000) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `unitario` decimal(10,2) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `unidade` varchar(50) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `datalancamento` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaoduplicata
CREATE TABLE IF NOT EXISTS `tmpimpressaoduplicata` (
  `codigo` varchar(50) DEFAULT NULL,
  `codigoconta` varchar(50) DEFAULT NULL,
  `cabecalhoimagem1` longblob,
  `cabecalhoimagem2` longblob,
  `cabecalholinha1` varchar(255) DEFAULT NULL,
  `cabecalholinha2` varchar(255) DEFAULT NULL,
  `cabecalholinha3` varchar(255) DEFAULT NULL,
  `cabecalholinha4` varchar(255) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaogestorordemservicos
CREATE TABLE IF NOT EXISTS `tmpimpressaogestorordemservicos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `numeroequipamento` varchar(200) DEFAULT NULL,
  `equipamento` varchar(200) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `telefone` varchar(200) DEFAULT NULL,
  `numeroserie` varchar(200) DEFAULT NULL,
  `parecertecnico` varchar(50) DEFAULT NULL,
  `autorizado` varchar(50) DEFAULT NULL,
  `equipamentoretirado` varchar(50) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `numeroequipamentocliente` varchar(50) DEFAULT NULL,
  `codigocliente` varchar(50) DEFAULT NULL,
  `codigoitem` varchar(50) DEFAULT NULL,
  `contatocliente` varchar(50) DEFAULT NULL,
  `retirada` varchar(50) DEFAULT NULL,
  `previsaoconclusao` date DEFAULT NULL,
  `dataconclusao` date DEFAULT NULL,
  `previsaoentrega` date DEFAULT NULL,
  `dataentrega` date DEFAULT NULL,
  `tecnico` varchar(200) DEFAULT NULL,
  `servico` varchar(200) DEFAULT NULL,
  `tipoatendimento` varchar(200) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `valorservicos` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpimpressaomatriculaescolas
CREATE TABLE IF NOT EXISTS `tmpimpressaomatriculaescolas` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpinadimplencia
CREATE TABLE IF NOT EXISTS `tmpinadimplencia` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mes` date DEFAULT NULL,
  `valorinicial` decimal(10,2) DEFAULT NULL,
  `valorrecebido` decimal(10,2) DEFAULT NULL,
  `inadimplencia` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpinventarioreservas
CREATE TABLE IF NOT EXISTS `tmpinventarioreservas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `reservas` decimal(10,2) DEFAULT NULL,
  `qnt` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpitensatendimentos
CREATE TABLE IF NOT EXISTS `tmpitensatendimentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `item` int(11) NOT NULL,
  `atendimento` varchar(25) DEFAULT NULL,
  `codigoproduto` varchar(20) DEFAULT NULL,
  `produto` varchar(130) DEFAULT NULL,
  `quantidade` decimal(20,7) DEFAULT NULL,
  `tabela` decimal(20,7) DEFAULT NULL,
  `total` decimal(20,7) DEFAULT NULL,
  `tabelacomdesconto` decimal(20,7) DEFAULT NULL,
  `totalcomdesconto` decimal(20,7) DEFAULT NULL,
  `st` varchar(3) DEFAULT NULL,
  `cfop` varchar(4) DEFAULT NULL,
  `aliquotaicms` varchar(5) DEFAULT NULL,
  `freteitem` decimal(20,5) DEFAULT NULL COMMENT 'percentual',
  `seguroitem` decimal(20,5) DEFAULT NULL,
  `descontoitem` decimal(20,5) DEFAULT NULL,
  `reducaobcicms` decimal(20,5) DEFAULT NULL,
  `valoricmsst` decimal(20,5) DEFAULT NULL,
  `aliquotaicmsst` decimal(20,5) DEFAULT NULL,
  `valoricms` decimal(20,5) DEFAULT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `valorbasecalculoicms` decimal(20,5) DEFAULT NULL,
  `incidenciaicms` decimal(20,5) DEFAULT NULL,
  `valorbasecalculoicmsst` decimal(20,5) DEFAULT NULL,
  `valoripi` decimal(20,5) DEFAULT NULL,
  `despesasitem` decimal(20,5) DEFAULT NULL,
  `vmv` decimal(20,5) DEFAULT NULL,
  `totalvmv` decimal(20,5) DEFAULT NULL,
  `ipi` decimal(20,5) DEFAULT NULL,
  `psubstituicao` decimal(20,5) DEFAULT NULL,
  `fornecedortextolivre` varchar(50) DEFAULT NULL,
  `mva` decimal(20,5) DEFAULT NULL,
  `codigoequipamentoos` varchar(20) DEFAULT NULL,
  `pcomissaoitem` decimal(20,5) DEFAULT NULL,
  `comissaoitem` decimal(20,5) DEFAULT NULL,
  `observacoes` varchar(2000) DEFAULT NULL,
  `marcatextolivre` varchar(50) DEFAULT NULL,
  `descontoadicional1` decimal(20,5) DEFAULT NULL,
  `descontoadicional2` decimal(20,5) DEFAULT NULL,
  `descontoadicional3` decimal(20,5) DEFAULT NULL,
  `descontoadicional4` decimal(20,5) DEFAULT NULL,
  `descontoadicional5` decimal(20,5) DEFAULT NULL,
  `cmvunitario` decimal(20,5) DEFAULT NULL,
  `ppis` decimal(20,5) DEFAULT NULL,
  `bcpis` decimal(20,5) DEFAULT NULL,
  `vpis` decimal(20,5) DEFAULT NULL,
  `pcofins` decimal(20,5) DEFAULT NULL,
  `bccofins` decimal(20,5) DEFAULT NULL,
  `vcofins` decimal(20,5) DEFAULT NULL,
  `cstpis` varchar(50) DEFAULT NULL,
  `cstcofins` varchar(50) DEFAULT NULL,
  `numerodeserie` varchar(100) DEFAULT NULL,
  `datalancamentoitem` datetime DEFAULT NULL,
  `pdesconto` decimal(20,5) DEFAULT NULL,
  `textolivre` varchar(100) DEFAULT NULL,
  `imagem` longblob,
  `idpedido` int(11) DEFAULT NULL,
  `idorigem` int(11) DEFAULT NULL,
  `_idorigem` int(11) DEFAULT NULL,
  `iddispositivo` varchar(50) DEFAULT NULL,
  `referenciatmp` varchar(50) DEFAULT NULL,
  `vendedor` varchar(25) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `diametro` varchar(100) DEFAULT NULL,
  `curvas` varchar(100) DEFAULT NULL,
  `nivel` varchar(100) DEFAULT NULL,
  `cstipi` varchar(10) DEFAULT NULL,
  `bcipi` decimal(20,2) DEFAULT NULL,
  `tmpespecificacoestecnicas` varchar(5000) DEFAULT NULL,
  `modelo2` varchar(100) DEFAULT NULL,
  `numeroserie2` varchar(100) DEFAULT NULL,
  `tmplocalizacao` varchar(100) DEFAULT NULL,
  `tmpgrupo` varchar(100) DEFAULT NULL,
  `tmppraticado` decimal(20,2) DEFAULT NULL,
  `tmpdescontomaximo` decimal(20,2) DEFAULT NULL,
  `tmppesoliquido` decimal(20,2) DEFAULT NULL,
  `tmppesobruto` decimal(20,2) DEFAULT NULL,
  `selecionado` varchar(1) DEFAULT NULL,
  `tmpcor` varchar(100) DEFAULT NULL,
  `tmptamanho` varchar(100) DEFAULT NULL,
  `largura` decimal(10,3) DEFAULT NULL,
  `altura` decimal(10,3) DEFAULT NULL,
  `pecas` decimal(10,3) DEFAULT NULL,
  `tmpnumeroitem` int(11) DEFAULT NULL,
  `cores` decimal(10,2) DEFAULT NULL,
  `pontos` decimal(10,2) DEFAULT NULL,
  `custorealunitario` decimal(10,2) DEFAULT NULL,
  `valoraproximadotributos` decimal(10,2) DEFAULT NULL,
  `vir` decimal(10,2) DEFAULT NULL,
  `vcsll` decimal(10,2) DEFAULT NULL,
  `indice` decimal(10,4) DEFAULT NULL,
  `inss` decimal(10,4) DEFAULT NULL,
  `iss` decimal(10,4) DEFAULT NULL,
  `issretido` decimal(10,4) DEFAULT NULL,
  `tmpdevolucao` decimal(10,4) DEFAULT NULL,
  `ncm` varchar(50) DEFAULT NULL,
  `nomecomercial` varchar(100) DEFAULT NULL,
  `registroms` varchar(50) DEFAULT NULL,
  `tipodois` varchar(100) DEFAULT NULL,
  `tmpsubgrupo` varchar(100) DEFAULT NULL,
  `quantidadeembalagem` varchar(50) DEFAULT NULL,
  `tmpfabricante` varchar(100) DEFAULT NULL,
  `numeroitempedido` varchar(50) DEFAULT NULL,
  `valorporextenso` varchar(100) DEFAULT NULL,
  `quantidadeembalagemnumerica` decimal(10,2) DEFAULT NULL,
  `operacao` varchar(10) DEFAULT NULL,
  `tempoentrega` decimal(10,0) DEFAULT NULL,
  `operacaoitem` varchar(20) DEFAULT NULL,
  `codigoprodutofornecedor` varchar(20) DEFAULT NULL,
  `dataentrega` date DEFAULT NULL,
  `tipoproduto` varchar(50) DEFAULT NULL,
  `observacoesfinais` varchar(500) DEFAULT NULL,
  `garantia` varchar(3) DEFAULT NULL,
  `validadegarantia` varchar(20) DEFAULT NULL,
  `codigocentrodecusto` varchar(20) DEFAULT NULL,
  `codigoetapa` varchar(20) DEFAULT NULL,
  `lotes` varchar(2000) DEFAULT NULL,
  `metrosquadrados` decimal(15,5) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `atendimento` (`atendimento`),
  KEY `item` (`item`),
  KEY `codigoproduto` (`codigoproduto`),
  KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpitensatendimentos2
CREATE TABLE IF NOT EXISTS `tmpitensatendimentos2` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `imagem` longblob,
  `quantidadeordemdecompra` decimal(10,2) DEFAULT NULL,
  `previsaochegada` date DEFAULT NULL,
  `atributos` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `atendimento` (`atendimento`),
  KEY `item` (`item`),
  KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpitensatendimentosatributos
CREATE TABLE IF NOT EXISTS `tmpitensatendimentosatributos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itematendimento` int(11) DEFAULT NULL,
  `atributo` varchar(50) DEFAULT NULL,
  `valor` varchar(1000) DEFAULT NULL,
  `imagem` longblob,
  `observacoes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpitensleituradearquivo
CREATE TABLE IF NOT EXISTS `tmpitensleituradearquivo` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `quantidade` decimal(12,4) DEFAULT '0.0000',
  `unidade` varchar(20) DEFAULT '',
  `tabela` decimal(12,4) DEFAULT '0.0000',
  `total` decimal(12,4) DEFAULT '0.0000',
  `vmv` decimal(12,4) DEFAULT '0.0000',
  `totalvmv` decimal(12,4) DEFAULT '0.0000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpitensnota
CREATE TABLE IF NOT EXISTS `tmpitensnota` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoitem` varchar(20) DEFAULT NULL,
  `codigopdv` varchar(20) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `cprod` varchar(20) DEFAULT NULL,
  `xprod` varchar(120) DEFAULT NULL,
  `ori` varchar(4) DEFAULT NULL,
  `cst` varchar(4) DEFAULT NULL,
  `cfop` varchar(4) DEFAULT NULL,
  `ncm` varchar(8) DEFAULT NULL,
  `ucom` varchar(10) DEFAULT NULL,
  `qcom` decimal(20,7) DEFAULT '0.0000000',
  `vuncom` decimal(20,7) DEFAULT '0.0000000',
  `vprod` decimal(20,7) DEFAULT '0.0000000',
  `utrib` varchar(8) DEFAULT NULL,
  `qtrib` decimal(20,7) DEFAULT '0.0000000',
  `vuntrib` decimal(20,7) DEFAULT '0.0000000',
  `vfrete` decimal(20,7) DEFAULT '0.0000000',
  `vseg` decimal(20,7) DEFAULT '0.0000000',
  `vdesc` decimal(20,7) DEFAULT '0.0000000',
  `voutro` decimal(20,7) DEFAULT '0.0000000',
  `modbc` varchar(2) DEFAULT NULL,
  `predbc` decimal(20,7) DEFAULT '0.0000000',
  `vbcicms` decimal(20,7) DEFAULT '0.0000000',
  `picms` decimal(20,7) DEFAULT '0.0000000',
  `vicms` decimal(20,7) DEFAULT '0.0000000',
  `vbcst` decimal(20,7) DEFAULT '0.0000000',
  `motdesicms` varchar(2) DEFAULT NULL,
  `modbcst` varchar(2) DEFAULT NULL,
  `pmvast` decimal(20,7) DEFAULT '0.0000000',
  `predbcst` decimal(20,7) DEFAULT '0.0000000',
  `picmsst` decimal(20,7) DEFAULT '0.0000000',
  `vicmsst` decimal(20,7) DEFAULT '0.0000000',
  `vbcstret` decimal(20,7) DEFAULT '0.0000000',
  `picmsstret` decimal(20,7) DEFAULT '0.0000000',
  `vicmsstret` decimal(20,7) DEFAULT '0.0000000',
  `pcredsn` decimal(20,7) DEFAULT '0.0000000',
  `vcredicmssn` decimal(20,7) DEFAULT '0.0000000',
  `vbcufdest` decimal(20,7) DEFAULT '0.0000000',
  `picmsufdest` decimal(20,7) DEFAULT '0.0000000',
  `picmsinter` decimal(20,7) DEFAULT '0.0000000',
  `picmsinterpart` decimal(20,7) DEFAULT '100.0000000',
  `vicmsufdest` decimal(20,7) DEFAULT '0.0000000',
  `vicmsufremet` decimal(20,7) DEFAULT '0.0000000',
  `vbcfcpufdest` decimal(20,7) DEFAULT '0.0000000',
  `pfcpufdest` decimal(20,7) DEFAULT '0.0000000',
  `vfcpufdest` decimal(20,7) DEFAULT '0.0000000',
  `cstpis` varchar(4) DEFAULT NULL,
  `vbcpis` decimal(20,7) DEFAULT '0.0000000',
  `ppis` decimal(20,7) DEFAULT '0.0000000',
  `vpis` decimal(20,7) DEFAULT '0.0000000',
  `cstcofins` varchar(4) DEFAULT NULL,
  `vbccofins` decimal(20,7) DEFAULT '0.0000000',
  `pcofins` decimal(20,7) DEFAULT '0.0000000',
  `vcofins` decimal(20,7) DEFAULT '0.0000000',
  `cstipi` varchar(4) DEFAULT NULL,
  `vbcipi` decimal(20,7) DEFAULT '0.0000000',
  `pipi` decimal(20,7) DEFAULT '0.0000000',
  `vipi` decimal(20,7) DEFAULT '0.0000000',
  `vbcefet` decimal(20,7) DEFAULT '0.0000000',
  `picmsefet` decimal(20,7) DEFAULT '0.0000000',
  `vicmsefet` decimal(20,7) DEFAULT '0.0000000',
  `itemespecifico` varchar(50) DEFAULT NULL,
  `codigoanp` varchar(50) DEFAULT NULL,
  `cbenef` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmplotes
CREATE TABLE IF NOT EXISTS `tmplotes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `lote` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricaoproduto` varchar(200) DEFAULT NULL,
  `fabricacao` date DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `quantidadeentrada` decimal(20,4) DEFAULT NULL,
  `quantidadesaida` decimal(20,4) DEFAULT NULL,
  `estoqueatual` decimal(20,4) DEFAULT NULL,
  `runnigtotal` decimal(20,4) DEFAULT NULL,
  `saldolote` decimal(20,4) DEFAULT NULL,
  `quantidadetotalfabricado` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmapadecargacontas
CREATE TABLE IF NOT EXISTS `tmpmapadecargacontas` (
  `codigo` int(11) NOT NULL,
  `mapadecarga` varchar(50) DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmapadecargaresumoitensproducao
CREATE TABLE IF NOT EXISTS `tmpmapadecargaresumoitensproducao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mapa` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(255) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `enviadoproducao` decimal(10,2) DEFAULT NULL,
  `produzidos` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmapadecargaresumoitensproducaovariacoes
CREATE TABLE IF NOT EXISTS `tmpmapadecargaresumoitensproducaovariacoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mapa` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(255) DEFAULT NULL,
  `variacao` varchar(50) DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmapadecargas
CREATE TABLE IF NOT EXISTS `tmpmapadecargas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mapa` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmateriaprima
CREATE TABLE IF NOT EXISTS `tmpmateriaprima` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidadeproduto` decimal(20,2) DEFAULT NULL,
  `materiaprima` varchar(50) DEFAULT NULL,
  `quantidademateriaprima` decimal(20,6) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `quantidadetotal` decimal(20,6) DEFAULT NULL,
  `percentualadicionalcusto` decimal(10,6) DEFAULT '0.000000',
  `setor` varchar(50) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  `hierarquiapai` varchar(50) DEFAULT NULL,
  `temfilho` varchar(50) DEFAULT NULL,
  `imprimirop` varchar(50) DEFAULT 'Sim',
  `tmpmapacarga` varchar(50) DEFAULT NULL,
  `itematendimento` varchar(50) DEFAULT NULL,
  `qntauxiliarexibicaogrupo` decimal(10,6) DEFAULT NULL,
  `descricaomateriaprima` varchar(255) DEFAULT NULL,
  `produtoacabado` varchar(50) DEFAULT NULL,
  `expedicao` tinyint(1) DEFAULT NULL,
  `ordenacao` int(11) DEFAULT NULL,
  `produzir` varchar(50) DEFAULT 'Sim',
  `obs` varchar(2000) DEFAULT NULL,
  `materiaprimanivel2` varchar(50) DEFAULT NULL,
  `quantidademateriaprimanivel2` decimal(20,6) DEFAULT NULL,
  `materiaprimanivel3` varchar(50) DEFAULT NULL,
  `quantidademateriaprimanivel3` decimal(20,6) DEFAULT NULL,
  `itemmateriaprima` decimal(11,0) DEFAULT NULL,
  `itemmateriaprimanivel2` decimal(11,0) DEFAULT NULL,
  `produzirmateriaprima` varchar(50) DEFAULT 'Sim',
  `produzirmateriaprimanivel2` varchar(50) DEFAULT 'Sim',
  `produzirmateriaprimanivel3` varchar(50) DEFAULT 'Sim',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4174 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmateriaprima2
CREATE TABLE IF NOT EXISTS `tmpmateriaprima2` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `qnt` decimal(10,4) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `imprimirop` tinyint(1) DEFAULT '0',
  `expedicao` tinyint(1) DEFAULT '0',
  `itematendimento` varchar(50) DEFAULT NULL,
  `hierarquiapai` varchar(200) DEFAULT NULL,
  `produtopai` varchar(50) DEFAULT NULL,
  `qnttotal` decimal(10,4) DEFAULT NULL,
  `varia` varchar(1) DEFAULT NULL,
  `descricaooriginal` varchar(200) DEFAULT NULL,
  `qntitem` decimal(10,4) DEFAULT NULL,
  `descricaovariacao` varchar(200) DEFAULT NULL,
  `descricaoagrupamento` varchar(200) DEFAULT NULL,
  `qntsetordescricaoagrupamento` decimal(10,4) DEFAULT NULL,
  `qntsetordescricaoagrupamentofilho` decimal(10,4) DEFAULT NULL,
  `descricaoagrupamentopai` varchar(200) DEFAULT NULL,
  `qntporunidade` decimal(10,4) DEFAULT NULL,
  `qntgrupo` decimal(10,4) DEFAULT NULL,
  `descricaoprodutopai` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmateriaprima3
CREATE TABLE IF NOT EXISTS `tmpmateriaprima3` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `qnt` decimal(10,4) DEFAULT NULL,
  `hierarquia` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `imprimirop` tinyint(1) DEFAULT '0',
  `expedicao` tinyint(1) DEFAULT '0',
  `itematendimento` varchar(50) DEFAULT NULL,
  `hierarquiapai` varchar(200) DEFAULT NULL,
  `produtopai` varchar(50) DEFAULT NULL,
  `qnttotal` decimal(10,4) DEFAULT NULL,
  `varia` varchar(1) DEFAULT NULL,
  `descricaooriginal` varchar(200) DEFAULT NULL,
  `qntitem` decimal(10,4) DEFAULT NULL,
  `descricaovariacao` varchar(200) DEFAULT NULL,
  `descricaoagrupamento` varchar(200) DEFAULT NULL,
  `qntsetordescricaoagrupamento` decimal(10,4) DEFAULT NULL,
  `qntsetordescricaoagrupamentofilho` decimal(10,4) DEFAULT NULL,
  `descricaoagrupamentopai` varchar(200) DEFAULT NULL,
  `qntporunidade` decimal(10,4) DEFAULT NULL,
  `qntgrupo` decimal(10,4) DEFAULT NULL,
  `descricaoprodutopai` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmateriaprima4
CREATE TABLE IF NOT EXISTS `tmpmateriaprima4` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(255) DEFAULT NULL,
  `quantidadeproduto` decimal(12,6) DEFAULT NULL,
  `codigomateriaprima` varchar(50) DEFAULT NULL,
  `materiaprima` varchar(255) DEFAULT NULL,
  `quantidademateriaprima` decimal(12,6) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `produzir` varchar(50) DEFAULT NULL,
  `unidadeproduto` varchar(50) DEFAULT NULL,
  `unidademateriaprima` varchar(50) DEFAULT NULL,
  `materiaprimanivel2` varchar(50) DEFAULT NULL,
  `quantidademateriaprimanivel2` decimal(12,6) DEFAULT NULL,
  `materiaprimanivel3` varchar(50) DEFAULT NULL,
  `quantidademateriaprimanivel3` decimal(12,6) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6478 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmetas
CREATE TABLE IF NOT EXISTS `tmpmetas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigometa` varchar(20) DEFAULT NULL,
  `valorrealizado` decimal(20,7) DEFAULT '0.0000000',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmovimentocontabil
CREATE TABLE IF NOT EXISTS `tmpmovimentocontabil` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `contadebito` varchar(20) DEFAULT NULL,
  `contacredito` varchar(20) DEFAULT NULL,
  `numerodocumento` varchar(50) DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  `debito` decimal(20,6) DEFAULT '0.000000',
  `credito` decimal(20,6) DEFAULT '0.000000',
  `saldo` decimal(20,6) DEFAULT '0.000000',
  `empresa` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpmovimentoestoque
CREATE TABLE IF NOT EXISTS `tmpmovimentoestoque` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `tipomovimento` varchar(50) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `codigomovimentoestoque` int(11) DEFAULT NULL,
  `tmpquantidade` decimal(10,2) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `produto` (`produto`),
  KEY `colaborador` (`colaborador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpnfce
CREATE TABLE IF NOT EXISTS `tmpnfce` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpnotaeletronicadeservico
CREATE TABLE IF NOT EXISTS `tmpnotaeletronicadeservico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `numeronota` varchar(50) DEFAULT NULL,
  `dataehoraemissao` varchar(50) DEFAULT NULL,
  `codigoverificacao` varchar(50) DEFAULT NULL,
  `competencia` varchar(50) DEFAULT NULL,
  `numerorps` varchar(50) DEFAULT NULL,
  `serierps` varchar(50) DEFAULT NULL,
  `dataemissaorps` varchar(50) DEFAULT NULL,
  `numerodanfsesubstituida` varchar(50) DEFAULT NULL,
  `exigibilidade` varchar(50) DEFAULT NULL,
  `municipiodaprestacaodosservicos` varchar(50) DEFAULT NULL,
  `municipiodaincidencia` varchar(50) DEFAULT NULL,
  `nomeprestador` varchar(100) DEFAULT NULL,
  `nomefantasiaprestador` varchar(100) DEFAULT NULL,
  `enderecoprestador` varchar(100) DEFAULT NULL,
  `numeroprestador` varchar(50) DEFAULT NULL,
  `complementoprestador` varchar(50) DEFAULT NULL,
  `bairroprestador` varchar(50) DEFAULT NULL,
  `cidadeprestador` varchar(100) DEFAULT NULL,
  `cepprestador` varchar(50) DEFAULT NULL,
  `cpfcnpjprestador` varchar(50) DEFAULT NULL,
  `inscricaomunicipalprestador` varchar(50) DEFAULT NULL,
  `inscricaoestadualprestador` varchar(50) DEFAULT NULL,
  `telefoneprestador` varchar(50) DEFAULT NULL,
  `emailprestador` varchar(100) DEFAULT NULL,
  `nometomador` varchar(200) DEFAULT NULL,
  `enderecotomador` varchar(100) DEFAULT NULL,
  `numerotomador` varchar(50) DEFAULT NULL,
  `complementotomador` varchar(50) DEFAULT NULL,
  `bairrotomador` varchar(100) DEFAULT NULL,
  `municipiotomador` varchar(100) DEFAULT NULL,
  `ceptomador` varchar(50) DEFAULT NULL,
  `cpfcnpjtomador` varchar(50) DEFAULT NULL,
  `inscricaomunicipaltomador` varchar(50) DEFAULT NULL,
  `telefonetomador` varchar(50) DEFAULT NULL,
  `emailtomador` varchar(100) DEFAULT NULL,
  `discriminacao` text,
  `valordoservico` varchar(50) DEFAULT NULL,
  `aliquotaiss` varchar(50) DEFAULT NULL,
  `valoriss` varchar(50) DEFAULT NULL,
  `notavalorservicos` varchar(50) DEFAULT NULL,
  `notabasedecaldulo` varchar(50) DEFAULT NULL,
  `notaaliquota` varchar(50) DEFAULT NULL,
  `notavaloriss` varchar(50) DEFAULT NULL,
  `notatotalservicos` varchar(50) DEFAULT NULL,
  `notatotalliquido` varchar(50) DEFAULT NULL,
  `outrasinformacoes` varchar(1000) DEFAULT NULL,
  `logoemissor` blob,
  `itemlistaservico` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `ir` varchar(50) DEFAULT NULL,
  `pis` varchar(50) DEFAULT NULL,
  `cofins` varchar(50) DEFAULT NULL,
  `csll` varchar(50) DEFAULT NULL,
  `inss` varchar(50) DEFAULT NULL,
  `outrasretencoes` varchar(50) DEFAULT NULL,
  `fantasiatomador` varchar(100) DEFAULT NULL,
  `ietomador` varchar(100) DEFAULT NULL,
  `notavalorissretido` varchar(50) DEFAULT NULL,
  `faturamento` varchar(1000) DEFAULT NULL,
  `protocolo` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpnotaeletronicadeservicoitem
CREATE TABLE IF NOT EXISTS `tmpnotaeletronicadeservicoitem` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `nota` varchar(50) DEFAULT NULL,
  `discriminacao` varchar(250) DEFAULT NULL,
  `valorservico` decimal(10,4) DEFAULT NULL,
  `aliquota` varchar(200) DEFAULT NULL,
  `valoriss` varchar(200) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `praticado` decimal(10,4) DEFAULT NULL,
  `codigoitemlista` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpnotafiscaleletronicatelecomunicacao
CREATE TABLE IF NOT EXISTS `tmpnotafiscaleletronicatelecomunicacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `numeronota` varchar(50) DEFAULT NULL,
  `dataehoraemissao` varchar(50) DEFAULT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `nomeprestador` varchar(100) DEFAULT NULL,
  `nomefantasiaprestador` varchar(100) DEFAULT NULL,
  `enderecoprestador` varchar(100) DEFAULT NULL,
  `numeroprestador` varchar(50) DEFAULT NULL,
  `complementoprestador` varchar(50) DEFAULT NULL,
  `bairroprestador` varchar(50) DEFAULT NULL,
  `cidadeprestador` varchar(100) DEFAULT NULL,
  `cepprestador` varchar(50) DEFAULT NULL,
  `cpfcnpjprestador` varchar(50) DEFAULT NULL,
  `telefoneprestador` varchar(50) DEFAULT NULL,
  `emailprestador` varchar(100) DEFAULT NULL,
  `nometomador` varchar(200) DEFAULT NULL,
  `enderecotomador` varchar(100) DEFAULT NULL,
  `numerotomador` varchar(50) DEFAULT NULL,
  `complementotomador` varchar(50) DEFAULT NULL,
  `bairrotomador` varchar(100) DEFAULT NULL,
  `municipiotomador` varchar(100) DEFAULT NULL,
  `ceptomador` varchar(50) DEFAULT NULL,
  `cpfcnpjtomador` varchar(50) DEFAULT NULL,
  `telefonetomador` varchar(50) DEFAULT NULL,
  `emailtomador` varchar(100) DEFAULT NULL,
  `discriminacao` varchar(100) DEFAULT NULL,
  `valordoservico` varchar(50) DEFAULT NULL,
  `outrasinformacoes` varchar(1000) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `fantasiatomador` varchar(100) DEFAULT NULL,
  `ietomador` varchar(100) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `ieprestador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpordemproducao
CREATE TABLE IF NOT EXISTS `tmpordemproducao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `processo` varchar(50) DEFAULT NULL,
  `materiaprima` varchar(50) DEFAULT NULL,
  `quantidadeproduto` decimal(10,4) DEFAULT NULL,
  `quantidademateriaprima` decimal(10,4) DEFAULT NULL,
  `codigopai` varchar(50) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpplanejamentoentregaproducao
CREATE TABLE IF NOT EXISTS `tmpplanejamentoentregaproducao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `planejamento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `produto` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `cliente` varchar(200) DEFAULT NULL,
  `pedidosdevenda` decimal(10,2) DEFAULT NULL,
  `estoqueatual` decimal(10,2) DEFAULT NULL,
  `pedidodecompra` decimal(10,2) DEFAULT NULL,
  `previsao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmppresenca
CREATE TABLE IF NOT EXISTS `tmppresenca` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `dias` decimal(10,2) DEFAULT NULL,
  `valormensal` decimal(10,2) DEFAULT NULL,
  `valorproporcional` decimal(10,2) DEFAULT NULL,
  `presencas` decimal(10,2) DEFAULT NULL,
  `faltas` decimal(10,2) DEFAULT NULL,
  `percentual` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpprocessaestoqueempresa
CREATE TABLE IF NOT EXISTS `tmpprocessaestoqueempresa` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `cor` varchar(200) DEFAULT NULL,
  `tamanho` varchar(200) DEFAULT NULL,
  `unidade` varchar(200) DEFAULT NULL,
  `entrada` decimal(10,2) DEFAULT NULL,
  `saida` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `praticado` decimal(10,2) DEFAULT NULL,
  `praticado2` decimal(10,2) DEFAULT NULL,
  `valormercadoria` decimal(10,2) DEFAULT NULL,
  `imagem` longblob,
  `praticado3` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpprocessarestoquenaturezaoperacao
CREATE TABLE IF NOT EXISTS `tmpprocessarestoquenaturezaoperacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `entrada` decimal(10,3) DEFAULT NULL,
  `saida` decimal(10,3) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `valorunitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpprodutosautoajusteestoque
CREATE TABLE IF NOT EXISTS `tmpprodutosautoajusteestoque` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpprodutoseservicos
CREATE TABLE IF NOT EXISTS `tmpprodutoseservicos` (
  `codigo` varchar(25) DEFAULT NULL,
  `tipo` varchar(25) DEFAULT NULL,
  `situacao` varchar(25) DEFAULT NULL,
  `datacadastro` datetime DEFAULT NULL,
  `codigogrupo` varchar(100) DEFAULT NULL,
  `codigosubgrupo` varchar(25) DEFAULT NULL,
  `codigoprincipalfornecedor` varchar(100) DEFAULT NULL,
  `descricao` varchar(130) DEFAULT NULL,
  `valormercadoria` decimal(12,4) DEFAULT NULL,
  `lucrodesejado` decimal(12,4) DEFAULT NULL,
  `custoreal` decimal(12,4) DEFAULT NULL,
  `sugestao` decimal(12,4) DEFAULT NULL,
  `praticado` decimal(12,4) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `codigodepartamento` varchar(25) DEFAULT NULL,
  `unidade` varchar(25) DEFAULT NULL,
  `embalagem` varchar(25) DEFAULT NULL,
  `codigocor` varchar(25) DEFAULT NULL,
  `codigotamanho` varchar(25) DEFAULT NULL,
  `registroms` varchar(25) DEFAULT NULL,
  `codigomarca` varchar(100) DEFAULT NULL,
  `codigocolecao` varchar(25) DEFAULT NULL,
  `tempoentrega` varchar(25) DEFAULT NULL,
  `codigoean` varchar(25) DEFAULT NULL,
  `codigoramoatividade` varchar(25) DEFAULT NULL,
  `codigosetor` varchar(25) DEFAULT NULL,
  `listaprecos` varchar(3) DEFAULT NULL,
  `promocao` varchar(3) DEFAULT NULL,
  `precopromocao` decimal(12,4) DEFAULT NULL,
  `validadepromocao` date DEFAULT NULL,
  `especificacoestecnicas` varchar(2000) DEFAULT NULL,
  `auxiliarpesquisa` varchar(2000) DEFAULT NULL,
  `creditoicms` decimal(12,4) DEFAULT NULL,
  `aliquotaicms` decimal(12,4) DEFAULT NULL,
  `diferencaicms` decimal(12,4) DEFAULT NULL,
  `ipi` decimal(12,4) DEFAULT NULL,
  `fretesobrecompras` decimal(12,4) DEFAULT NULL,
  `fretesobrevendas` decimal(12,4) DEFAULT NULL,
  `comissao` decimal(12,4) DEFAULT NULL,
  `aliquotasubstituicao` decimal(12,4) DEFAULT NULL,
  `customercadoria` decimal(12,6) DEFAULT NULL,
  `classificacaofiscal` varchar(8) DEFAULT NULL,
  `origemmercadoria` varchar(1) DEFAULT NULL,
  `situacaotributaria` varchar(3) DEFAULT NULL,
  `markup` decimal(12,4) DEFAULT NULL,
  `descontoautomatico` decimal(12,4) DEFAULT NULL,
  `descontomaximo` decimal(12,4) DEFAULT NULL,
  `estoqueideal` decimal(12,4) DEFAULT NULL,
  `estoqueminimo` decimal(12,4) DEFAULT NULL,
  `estoquedesejado` decimal(12,4) DEFAULT NULL,
  `entrada` decimal(12,4) DEFAULT NULL,
  `saida` decimal(12,4) DEFAULT NULL,
  `saldo` decimal(12,4) DEFAULT NULL,
  `ultimacompra` date DEFAULT NULL,
  `pesoliquido` decimal(12,8) DEFAULT NULL,
  `pesobruto` decimal(12,8) DEFAULT NULL,
  `usartabelas` varchar(3) DEFAULT NULL,
  `usarsugestao` varchar(3) DEFAULT NULL,
  `codigoca` varchar(10) DEFAULT NULL,
  `praticado2` decimal(12,4) DEFAULT NULL,
  `reducaobcicmsestadual` decimal(12,4) DEFAULT NULL,
  `reducaobcicmsinterestadual` decimal(12,4) DEFAULT NULL,
  `codigointerno` varchar(25) DEFAULT NULL,
  `aplicacao` varchar(2000) DEFAULT NULL,
  `localizacao` varchar(200) DEFAULT NULL,
  `tipomarkup` varchar(50) DEFAULT NULL,
  `validade` datetime DEFAULT NULL,
  `sequencia` int(11) NOT NULL AUTO_INCREMENT,
  `observacoes` varchar(300) DEFAULT NULL,
  `pis` decimal(12,4) DEFAULT NULL,
  `cofins` decimal(12,4) DEFAULT NULL,
  `stpis` varchar(50) DEFAULT NULL,
  `stcofins` varchar(50) DEFAULT NULL,
  `simulado1` decimal(10,4) DEFAULT NULL,
  `simulado2` decimal(10,4) DEFAULT NULL,
  `simulado3` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida1` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida2` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida3` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida4` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida5` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida6` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida7` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida8` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida9` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida10` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida11` decimal(10,4) DEFAULT NULL,
  `simuladoqntvendida12` decimal(10,4) DEFAULT NULL,
  `cfopespecificavendaestado` varchar(4) DEFAULT NULL,
  `cfopespecificavendainterestadual` varchar(4) DEFAULT NULL,
  `pesoembalagem` decimal(10,4) DEFAULT NULL,
  `quantidadeembalagem` varchar(50) DEFAULT NULL,
  `estoquedisponivel` decimal(10,4) DEFAULT NULL,
  `codigonumerico` decimal(20,0) DEFAULT NULL,
  `observacaoparaetiqueta` varchar(100) DEFAULT NULL,
  `parcelas` varchar(10) DEFAULT NULL,
  `divisor` varchar(10) DEFAULT NULL,
  `tmplogoetiquetas` blob,
  `tipodoitem` varchar(2) DEFAULT NULL,
  `generodoitem` varchar(10) DEFAULT NULL,
  `codigodoservico` varchar(10) DEFAULT NULL,
  `precomaximoconsumidor` decimal(10,4) DEFAULT NULL,
  `itemespecifico` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `site` tinyint(1) DEFAULT NULL,
  `usaremcondicional` varchar(3) DEFAULT NULL,
  `ultimaalteracao` date DEFAULT NULL,
  `grupoparanotafiscaleletronica` varchar(50) DEFAULT NULL,
  `outrasdespesas` decimal(10,4) DEFAULT NULL,
  `praticado3` decimal(10,4) DEFAULT '0.0000',
  `controlarestoque` varchar(3) DEFAULT 'Sim',
  `codigoadicional` varchar(20) DEFAULT NULL,
  `tmpterminal` varchar(20) DEFAULT NULL,
  `numerodeserie` varchar(100) DEFAULT NULL,
  `tmpbalaco` decimal(10,2) DEFAULT NULL,
  `tempo` decimal(10,2) DEFAULT '0.00',
  `tmpfornecedor` varchar(200) DEFAULT NULL,
  `tmpnota` varchar(200) DEFAULT NULL,
  `validadeemtempo` varchar(50) DEFAULT NULL,
  `centrodecustos` varchar(50) DEFAULT NULL,
  `area` decimal(10,2) DEFAULT NULL,
  `tmpsimples` decimal(10,2) DEFAULT NULL,
  `tmpcustofixo` decimal(10,2) DEFAULT NULL,
  `tmpdespesasvariaveis` decimal(10,2) DEFAULT NULL,
  `tmpmarkupsemlucro` decimal(10,2) DEFAULT NULL,
  `tmpipi` decimal(10,2) DEFAULT NULL,
  `tmpfretesobrecompras` decimal(10,2) DEFAULT NULL,
  `tmpcreditoicms` decimal(10,2) DEFAULT NULL,
  `tmpdiferencaicms` decimal(10,2) DEFAULT NULL,
  `tmpaliquotasubstituicao` decimal(10,2) DEFAULT NULL,
  `tmpoutrasdespesas` decimal(10,2) DEFAULT NULL,
  `iss` decimal(10,2) DEFAULT NULL,
  `ir` decimal(10,2) DEFAULT NULL,
  `csll` decimal(10,2) DEFAULT NULL,
  `inss` decimal(10,2) DEFAULT NULL,
  `issretido` decimal(10,2) DEFAULT NULL,
  `deducoes` decimal(10,2) DEFAULT NULL,
  `comissaotabela2` decimal(10,2) DEFAULT NULL,
  `comissaotabela3` decimal(10,2) DEFAULT NULL,
  `issretidointermunicipal` decimal(10,2) DEFAULT NULL,
  `ultimavenda` date DEFAULT NULL,
  `tmpemissao` date DEFAULT NULL,
  `tmpentrada` decimal(10,2) DEFAULT NULL,
  `tmpsaida` decimal(10,2) DEFAULT NULL,
  `tmpinventario` decimal(10,2) DEFAULT NULL,
  `ecf` varchar(50) DEFAULT NULL,
  `nomecomercial` varchar(100) DEFAULT NULL,
  `tipodois` varchar(100) DEFAULT NULL,
  `outrosimpostos` decimal(10,2) DEFAULT NULL,
  `tmpdivisor` decimal(10,2) DEFAULT NULL,
  `tmpvalordivido` decimal(10,2) DEFAULT NULL,
  `dcb` varchar(50) DEFAULT NULL,
  `fabricante` varchar(50) DEFAULT NULL,
  `impressora` varchar(50) DEFAULT NULL,
  `tmpempresa` varchar(50) DEFAULT NULL,
  `observacoes2` varchar(100) DEFAULT NULL,
  `observacoes3` varchar(100) DEFAULT NULL,
  `observacoes4` varchar(100) DEFAULT NULL,
  `tmpquantidadeembalagem` decimal(10,4) DEFAULT NULL,
  `alteracao` tinyint(1) DEFAULT NULL,
  `destacar` varchar(3) DEFAULT NULL,
  `valormanual` decimal(10,2) DEFAULT NULL,
  `tmpentradaestoquemanual` decimal(10,2) DEFAULT NULL,
  `tmpsaidaestoquemanual` decimal(10,2) DEFAULT NULL,
  `tmpsaldoestoquemanual` decimal(10,2) DEFAULT NULL,
  `familia` varchar(20) DEFAULT NULL,
  `estoquemaximo` decimal(10,4) DEFAULT NULL,
  `loteeconomico` decimal(10,4) DEFAULT NULL,
  `balanca` tinyint(1) DEFAULT NULL,
  `descontosimulado` decimal(10,2) DEFAULT NULL,
  `tmpatendimento` varchar(50) DEFAULT NULL,
  `kilatagem` varchar(50) DEFAULT NULL,
  `pesoouro` decimal(10,4) DEFAULT NULL,
  `indicevendacotacao` decimal(10,4) DEFAULT NULL,
  `tmpcodigogrupo` varchar(50) DEFAULT NULL,
  `tipoetiqueta` varchar(50) DEFAULT NULL,
  `tipopedra` varchar(50) DEFAULT NULL,
  `pontuacaopedra` varchar(50) DEFAULT NULL,
  `tmplote` varchar(50) DEFAULT NULL,
  `praticadopersonalizado` varchar(50) DEFAULT NULL,
  KEY `sequencia` (`sequencia`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpprodutoseservicosfornecedores
CREATE TABLE IF NOT EXISTS `tmpprodutoseservicosfornecedores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `fornecedor` varchar(100) DEFAULT NULL,
  `codigofornecedor` varchar(50) DEFAULT NULL,
  `nossocodigo` varchar(50) DEFAULT NULL,
  `descricaofornecedor` varchar(255) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT '0.0000',
  `data` date DEFAULT NULL,
  `observacoes` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpprodutoseservicosimagens
CREATE TABLE IF NOT EXISTS `tmpprodutoseservicosimagens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `imagem` longblob,
  `temimagem` varchar(10) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpprodutoseservicosvariacoesvalores
CREATE TABLE IF NOT EXISTS `tmpprodutoseservicosvariacoesvalores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `variacao` varchar(50) DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmprecebimentoporcodigo
CREATE TABLE IF NOT EXISTS `tmprecebimentoporcodigo` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoconta` varchar(50) DEFAULT NULL,
  `computador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpreceitaagronomica
CREATE TABLE IF NOT EXISTS `tmpreceitaagronomica` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(50) DEFAULT NULL,
  `numeroreceita` varchar(50) DEFAULT NULL,
  `seriereceita` varchar(50) DEFAULT NULL,
  `notafiscal` varchar(50) DEFAULT NULL,
  `vinculadaart` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `areatratar` varchar(50) DEFAULT NULL,
  `codigoresponsaveltecnico` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmprecibos
CREATE TABLE IF NOT EXISTS `tmprecibos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `atendimento` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `valorparcela` decimal(10,2) DEFAULT NULL,
  `valorporextenso` varchar(1000) DEFAULT NULL,
  `referentea` varchar(1000) DEFAULT NULL,
  `numerodocumento` varchar(25) DEFAULT NULL,
  `emissaodocumento` date DEFAULT NULL,
  `vencimentodocumento` date DEFAULT NULL,
  `observacoes` varchar(1000) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmprelatorioestoquedisponivel
CREATE TABLE IF NOT EXISTS `tmprelatorioestoquedisponivel` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(100) DEFAULT NULL,
  `disponivel` varchar(50) DEFAULT NULL,
  `disponiveldecimal` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmprelatorioitensdashboards
CREATE TABLE IF NOT EXISTS `tmprelatorioitensdashboards` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `cliente` varchar(200) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `valorunitario` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpresumofinanceirocolaborador
CREATE TABLE IF NOT EXISTS `tmpresumofinanceirocolaborador` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `compras` decimal(10,2) DEFAULT NULL,
  `desconto` decimal(10,2) DEFAULT NULL,
  `juros` decimal(10,2) DEFAULT NULL,
  `valorpago` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `informacoes` varchar(50) DEFAULT NULL,
  `debito` decimal(10,2) DEFAULT NULL,
  `credito` decimal(10,2) DEFAULT NULL,
  `multa` decimal(10,2) DEFAULT NULL,
  `cartorio` decimal(10,2) DEFAULT NULL,
  `outras` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpresumofinanceirocolaborador2
CREATE TABLE IF NOT EXISTS `tmpresumofinanceirocolaborador2` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `compras` decimal(10,2) DEFAULT NULL,
  `desconto` decimal(10,2) DEFAULT NULL,
  `juros` decimal(10,2) DEFAULT NULL,
  `valorpago` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `informacoes` varchar(50) DEFAULT NULL,
  `debito` decimal(10,2) DEFAULT NULL,
  `credito` decimal(10,2) DEFAULT NULL,
  `multa` decimal(10,2) DEFAULT NULL,
  `cartorio` decimal(10,2) DEFAULT NULL,
  `outras` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpsaldocaixa
CREATE TABLE IF NOT EXISTS `tmpsaldocaixa` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `contacaixa` varchar(50) DEFAULT NULL,
  `saldoinicial` decimal(10,2) DEFAULT NULL,
  `entradas` decimal(10,2) DEFAULT NULL,
  `saidas` decimal(10,2) DEFAULT NULL,
  `saldofinal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpsped1600
CREATE TABLE IF NOT EXISTS `tmpsped1600` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoparticipante` varchar(50) DEFAULT NULL,
  `totalcredito` decimal(10,2) DEFAULT NULL,
  `totaldebito` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpsped1920
CREATE TABLE IF NOT EXISTS `tmpsped1920` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `vl_tot_transf_debitos_oa` decimal(10,2) DEFAULT NULL,
  `vl_tot_aj_debitos_os` decimal(10,2) DEFAULT NULL,
  `vl_tot_transf_creditos_oa` decimal(10,2) DEFAULT NULL,
  `vl_tot_aj_creditos_oa` decimal(10,2) DEFAULT NULL,
  `vl_estornos_deb_oa` decimal(10,2) DEFAULT NULL,
  `vl_sld_credor_ant_oa` decimal(10,2) DEFAULT NULL,
  `vl_sld_apurado_oa` decimal(10,2) DEFAULT NULL,
  `vl_tot_ded` decimal(10,2) DEFAULT NULL,
  `vl_icms_recolher_oa` decimal(10,2) DEFAULT NULL,
  `vl_sld_credor_transp_oa` decimal(10,2) DEFAULT NULL,
  `deb_esp_oa` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpsped1923
CREATE TABLE IF NOT EXISTS `tmpsped1923` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cod_part` varchar(50) DEFAULT NULL,
  `cod_mod` varchar(50) DEFAULT NULL,
  `ser` varchar(50) DEFAULT NULL,
  `sub` varchar(50) DEFAULT NULL,
  `num_doc` varchar(50) DEFAULT NULL,
  `dt_doc` varchar(50) DEFAULT NULL,
  `cod_item` varchar(50) DEFAULT NULL,
  `vl_aj_item` decimal(10,2) DEFAULT NULL,
  `chv_doce` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `obs` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedblocoh
CREATE TABLE IF NOT EXISTS `tmpspedblocoh` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `unidade` varchar(50) DEFAULT NULL,
  `quantidade` decimal(15,3) DEFAULT NULL,
  `valorunitario` decimal(15,6) DEFAULT NULL,
  `valoritem` decimal(15,2) DEFAULT NULL,
  `indicadorpropriedade` varchar(50) DEFAULT NULL,
  `codigoparticipante` varchar(50) DEFAULT NULL,
  `descricaocomplementar` varchar(50) DEFAULT NULL,
  `codigodaconta` varchar(50) DEFAULT NULL,
  `alterado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedblocok
CREATE TABLE IF NOT EXISTS `tmpspedblocok` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `dataestoquefinal` date DEFAULT NULL,
  `codigoitem` varchar(50) DEFAULT NULL,
  `quantidadeemestoque` decimal(10,3) DEFAULT NULL,
  `indicadortipoestoque` varchar(50) DEFAULT NULL,
  `participante` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedblocokpropriedadeterceiros
CREATE TABLE IF NOT EXISTS `tmpspedblocokpropriedadeterceiros` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `participante` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedblocokpropriedadeterceirossaldo
CREATE TABLE IF NOT EXISTS `tmpspedblocokpropriedadeterceirossaldo` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `participante` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc180
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc180` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cod_mod` varchar(50) DEFAULT NULL,
  `dt_doc_ini` varchar(50) DEFAULT NULL,
  `dt_doc_fin` varchar(50) DEFAULT NULL,
  `cod_item` varchar(50) DEFAULT NULL,
  `cod_ncms` varchar(50) DEFAULT NULL,
  `ex_ipi` varchar(50) DEFAULT NULL,
  `vl_tot_item` decimal(15,5) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc181
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc181` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cst_pis` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `vl_item` decimal(15,2) DEFAULT NULL,
  `vl_desc` decimal(15,2) DEFAULT NULL,
  `vl_bc_pis` decimal(15,2) DEFAULT NULL,
  `aliq_pis` decimal(15,2) DEFAULT NULL,
  `quant_bc_pis` decimal(15,2) DEFAULT NULL,
  `aliq_pis_quant` decimal(15,2) DEFAULT NULL,
  `vl_pis` decimal(15,2) DEFAULT NULL,
  `cod_cta` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc185
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc185` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cst_cofins` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `vl_item` decimal(15,2) DEFAULT NULL,
  `vl_desc` decimal(15,2) DEFAULT NULL,
  `vl_bc_cofins` decimal(15,2) DEFAULT NULL,
  `aliq_cofins` decimal(15,2) DEFAULT NULL,
  `quant_bc_cofins` decimal(15,2) DEFAULT NULL,
  `aliq_cofins_quant` decimal(15,2) DEFAULT NULL,
  `vl_cofins` decimal(15,2) DEFAULT NULL,
  `cod_cta` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc190
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc190` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cod_mod` varchar(50) DEFAULT NULL,
  `dt_doc_ini` varchar(50) DEFAULT NULL,
  `dt_doc_fin` varchar(50) DEFAULT NULL,
  `cod_item` varchar(50) DEFAULT NULL,
  `cod_ncms` varchar(50) DEFAULT NULL,
  `ex_ipi` varchar(50) DEFAULT NULL,
  `vl_tot_item` decimal(15,5) DEFAULT NULL,
  `empresa` decimal(15,5) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc191
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc191` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cst_pis` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `vl_item` decimal(15,2) DEFAULT NULL,
  `vl_desc` decimal(15,2) DEFAULT NULL,
  `vl_bc_pis` decimal(15,2) DEFAULT NULL,
  `aliq_pis` decimal(15,2) DEFAULT NULL,
  `quant_bc_pis` decimal(15,2) DEFAULT NULL,
  `aliq_pis_quant` decimal(15,2) DEFAULT NULL,
  `vl_pis` decimal(15,2) DEFAULT NULL,
  `cod_cta` varchar(50) DEFAULT NULL,
  `cnpjparticipante` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc195
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc195` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cst_cofins` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `vl_item` decimal(15,2) DEFAULT NULL,
  `vl_desc` decimal(15,2) DEFAULT NULL,
  `vl_bc_cofins` decimal(15,2) DEFAULT NULL,
  `aliq_cofins` decimal(15,2) DEFAULT NULL,
  `quant_bc_cofins` decimal(15,2) DEFAULT NULL,
  `aliq_cofins_quant` decimal(15,2) DEFAULT NULL,
  `vl_cofins` decimal(15,2) DEFAULT NULL,
  `cod_cta` varchar(50) DEFAULT NULL,
  `cnpjparticipante` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `codigoproduto` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc481
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc481` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cod_item` varchar(50) DEFAULT NULL,
  `cst_pis` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `vl_item` decimal(10,2) DEFAULT NULL,
  `vl_bc_pis` decimal(10,2) DEFAULT NULL,
  `aliq_pis` decimal(10,4) DEFAULT NULL,
  `quant_bc_pis` decimal(10,2) DEFAULT NULL,
  `aliq_pis_quant` decimal(10,2) DEFAULT NULL,
  `vl_pis` decimal(10,2) DEFAULT NULL,
  `cod_cta` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc485
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc485` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cod_item` varchar(50) DEFAULT NULL,
  `cst_cofins` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `vl_item` decimal(10,2) DEFAULT NULL,
  `vl_bc_cofins` decimal(10,2) DEFAULT NULL,
  `aliq_cofins` decimal(10,4) DEFAULT NULL,
  `quant_bc_cofins` decimal(10,2) DEFAULT NULL,
  `aliq_cofins_quant` decimal(10,2) DEFAULT NULL,
  `vl_cofins` decimal(10,2) DEFAULT NULL,
  `cod_cta` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc491
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc491` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cod_item` varchar(50) DEFAULT NULL,
  `cst_pis` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `vl_item` decimal(10,2) DEFAULT NULL,
  `vl_bc_pis` decimal(10,2) DEFAULT NULL,
  `aliq_pis` decimal(10,4) DEFAULT NULL,
  `quant_bc_pis` decimal(10,2) DEFAULT NULL,
  `aliq_pis_quant` decimal(10,2) DEFAULT NULL,
  `vl_pis` decimal(10,2) DEFAULT NULL,
  `cod_cta` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicaoc495
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicaoc495` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `cod_item` varchar(50) DEFAULT NULL,
  `cst_cofins` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `vl_item` decimal(10,2) DEFAULT NULL,
  `vl_bc_cofins` decimal(10,2) DEFAULT NULL,
  `aliq_cofins` decimal(10,4) DEFAULT NULL,
  `quant_bc_cofins` decimal(10,2) DEFAULT NULL,
  `aliq_cofins_quant` decimal(10,2) DEFAULT NULL,
  `vl_cofins` decimal(10,2) DEFAULT NULL,
  `cod_cta` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedcontribuicoesc405
CREATE TABLE IF NOT EXISTS `tmpspedcontribuicoesc405` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `cro` varchar(50) DEFAULT NULL,
  `crz` varchar(50) DEFAULT NULL,
  `num_coo_fin` varchar(50) DEFAULT NULL,
  `gt_fin` varchar(50) DEFAULT NULL,
  `vl_brt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspede115
CREATE TABLE IF NOT EXISTS `tmpspede115` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cod_inf_adic` varchar(20) DEFAULT NULL,
  `vl_inf_adic` decimal(20,6) DEFAULT NULL,
  `descr_comple_aj` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspede310
CREATE TABLE IF NOT EXISTS `tmpspede310` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ind_mov_fcp_difal` varchar(1) DEFAULT NULL,
  `vl_sld_cred_ant_difal` decimal(10,2) DEFAULT NULL,
  `vl_tot_debitos_difal` decimal(10,2) DEFAULT NULL,
  `vl_out_deb_difal` decimal(10,2) DEFAULT NULL,
  `vl_tot_creditos_difal` decimal(10,2) DEFAULT NULL,
  `vl_out_cred_difal` decimal(10,2) DEFAULT NULL,
  `vl_sld_dev_ant_difal` decimal(10,2) DEFAULT NULL,
  `vl_deducoes_difal` decimal(10,2) DEFAULT NULL,
  `vl_recol_difal` decimal(10,2) DEFAULT NULL,
  `vl_sld_cred_transportar_difal` decimal(10,2) DEFAULT NULL,
  `deb_esp_difal` decimal(10,2) DEFAULT NULL,
  `vl_sld_cred_ant_fcp` decimal(10,2) DEFAULT NULL,
  `vl_tot_deb_fcp` decimal(10,2) DEFAULT NULL,
  `vl_out_deb_fcp` decimal(10,2) DEFAULT NULL,
  `vl_tot_cred_fcp` decimal(10,2) DEFAULT NULL,
  `vl_out_cred_fcp` decimal(10,2) DEFAULT NULL,
  `vl_sld_dev_ant_fcp` decimal(10,2) DEFAULT NULL,
  `vl_deducoes_fcp` decimal(10,2) DEFAULT NULL,
  `vl_recol_fcp` decimal(10,2) DEFAULT NULL,
  `vl_sld_cred_transportar_fcp` decimal(10,2) DEFAULT NULL,
  `deb_esp_fcp` decimal(10,2) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedparticipantes
CREATE TABLE IF NOT EXISTS `tmpspedparticipantes` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigoparticipante` varchar(60) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pais` varchar(5) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `ie` varchar(20) DEFAULT NULL,
  `codigomunicipio` varchar(7) DEFAULT NULL,
  `suframa` varchar(9) DEFAULT NULL,
  `endereco` varchar(60) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `empresa` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedplanodecontas
CREATE TABLE IF NOT EXISTS `tmpspedplanodecontas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigonaturezaoperacao` varchar(50) DEFAULT NULL,
  `codigocontacontabil` varchar(50) DEFAULT NULL,
  `datainclusaoalteracao` varchar(50) DEFAULT NULL,
  `codigonaturezaconta` varchar(50) DEFAULT NULL,
  `indicadordotipodaconta` varchar(50) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `codigocontaoutrossistemas` varchar(50) DEFAULT NULL,
  `nomedaconta` varchar(150) DEFAULT NULL,
  `codigorfb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigonaturezaoperacao` (`codigonaturezaoperacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedprodutos
CREATE TABLE IF NOT EXISTS `tmpspedprodutos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `codigoitem` varchar(60) DEFAULT NULL,
  `descricaodoitem` varchar(200) DEFAULT NULL,
  `codigodebarras` varchar(200) DEFAULT NULL,
  `codigoanteriordoitem` varchar(200) DEFAULT NULL,
  `unidadedemedida` varchar(6) DEFAULT NULL,
  `tipodoitem` varchar(2) DEFAULT NULL,
  `ncm` varchar(8) DEFAULT NULL,
  `codigoexipi` varchar(3) DEFAULT NULL,
  `codigodogenero` varchar(2) DEFAULT NULL,
  `codigolst` varchar(4) DEFAULT NULL,
  `aliquotaicms` varchar(6) DEFAULT NULL,
  `empresa` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpspedunidadesdemedida
CREATE TABLE IF NOT EXISTS `tmpspedunidadesdemedida` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `unidade` varchar(50) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmptabeladeprecos
CREATE TABLE IF NOT EXISTS `tmptabeladeprecos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `nometabela` varchar(50) DEFAULT NULL,
  `praticado` decimal(10,2) DEFAULT NULL,
  `percentual` decimal(10,2) DEFAULT NULL,
  `valortabela` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmptamanhos
CREATE TABLE IF NOT EXISTS `tmptamanhos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigotamanho` varchar(50) DEFAULT NULL,
  `tamanho` varchar(50) DEFAULT NULL,
  `pdv` varchar(50) DEFAULT NULL,
  `selecionado` varchar(50) DEFAULT NULL,
  `codigoauxiliar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmptrocademercadorias
CREATE TABLE IF NOT EXISTS `tmptrocademercadorias` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) DEFAULT NULL,
  `codigoproduto` varchar(25) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `tabelacomdesconto` decimal(10,4) DEFAULT NULL,
  `totalcomdesconto` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpvalepresente
CREATE TABLE IF NOT EXISTS `tmpvalepresente` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpvalepresenteetiqueta
CREATE TABLE IF NOT EXISTS `tmpvalepresenteetiqueta` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `valor` varchar(50) DEFAULT NULL,
  `codigovalepresente` varchar(50) DEFAULT NULL,
  `validade` varchar(50) DEFAULT NULL,
  `textovalidade` varchar(50) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `nomedestinatario` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tmpvaletransporte
CREATE TABLE IF NOT EXISTS `tmpvaletransporte` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `vales` decimal(10,0) DEFAULT NULL,
  `competencia` varchar(50) DEFAULT NULL,
  `empresa` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.tributacao
CREATE TABLE IF NOT EXISTS `tributacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nometributacao` varchar(100) DEFAULT NULL,
  `tipocolaborador` varchar(100) DEFAULT NULL,
  `operacao` varchar(100) DEFAULT NULL,
  `uf` varchar(100) DEFAULT NULL,
  `cfop` varchar(100) DEFAULT NULL,
  `ncm` varchar(100) DEFAULT NULL,
  `origem` varchar(100) DEFAULT NULL,
  `observacoes` varchar(100) DEFAULT NULL,
  `icmsst` varchar(100) DEFAULT NULL,
  `icmsufdestino` decimal(10,2) DEFAULT NULL,
  `icmsproprio` decimal(10,2) DEFAULT NULL,
  `icmsreducaobc` decimal(10,2) DEFAULT NULL,
  `pisst` varchar(50) DEFAULT NULL,
  `pisaliquota` decimal(10,2) DEFAULT NULL,
  `pisreducaobc` decimal(10,2) DEFAULT NULL,
  `cofinsst` varchar(50) DEFAULT NULL,
  `cofinsaliquota` decimal(10,2) DEFAULT NULL,
  `cofinsreducaobc` decimal(10,2) DEFAULT NULL,
  `ipist` varchar(50) DEFAULT NULL,
  `ipialiquota` decimal(10,2) DEFAULT NULL,
  `ipireducaobc` decimal(10,2) DEFAULT NULL,
  `mva` decimal(10,2) DEFAULT NULL,
  `reducaomva` decimal(10,2) DEFAULT NULL,
  `reducaobcsubstituicaotributaria` decimal(10,2) DEFAULT NULL,
  `ampara` decimal(10,2) DEFAULT NULL,
  `diferimento` decimal(10,2) DEFAULT NULL,
  `cargamedia` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.turmas
CREATE TABLE IF NOT EXISTS `turmas` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `turma` varchar(50) DEFAULT '0',
  `tipocurso` varchar(50) DEFAULT NULL,
  `datainicio` date DEFAULT NULL,
  `codigocurso` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.turmasdespesas
CREATE TABLE IF NOT EXISTS `turmasdespesas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `turma` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `despesa` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.ultimoscodigos
CREATE TABLE IF NOT EXISTS `ultimoscodigos` (
  `empresa` varchar(10) NOT NULL,
  `colaboradores` decimal(10,0) DEFAULT NULL,
  `bancos` decimal(10,0) DEFAULT NULL,
  `cidades` decimal(10,0) DEFAULT NULL,
  `grupos` decimal(10,0) DEFAULT NULL,
  `documentos` decimal(10,0) DEFAULT NULL,
  `cores` decimal(10,0) DEFAULT NULL,
  `historicos` decimal(10,0) DEFAULT NULL,
  `naturezadaoperacao` decimal(10,0) DEFAULT NULL,
  `contascontabeis` decimal(10,0) DEFAULT NULL,
  `produtoseservicos` decimal(13,0) DEFAULT NULL,
  `tamanhos` decimal(10,0) DEFAULT NULL,
  `materiais` decimal(10,0) DEFAULT NULL,
  `departamentos` decimal(10,0) DEFAULT NULL,
  `convenios` decimal(10,0) DEFAULT NULL,
  `locaisdecobranca` decimal(10,0) DEFAULT NULL,
  `profissoes` decimal(10,0) DEFAULT NULL,
  `ramosdeatividades` decimal(10,0) DEFAULT NULL,
  `contas` decimal(10,0) DEFAULT NULL,
  `atendimentos` decimal(10,0) DEFAULT NULL,
  `itensatendimentos` decimal(10,0) DEFAULT NULL,
  `tabelasdeprecos` decimal(10,0) DEFAULT NULL,
  `condicoesdepagamento` decimal(10,0) DEFAULT NULL,
  `itenspendencia` decimal(10,0) DEFAULT NULL,
  `colecoes` decimal(10,0) DEFAULT NULL,
  `maodeobra` decimal(10,0) DEFAULT NULL,
  `processos` decimal(10,0) DEFAULT NULL,
  `setores` decimal(10,0) DEFAULT NULL,
  `marcas` decimal(10,0) DEFAULT NULL,
  `usuarios` decimal(10,0) DEFAULT NULL,
  `centrodecustos` decimal(10,0) DEFAULT NULL,
  `empresausuaria` decimal(10,0) DEFAULT NULL,
  `tipooperacoes` decimal(10,0) DEFAULT NULL,
  `atributos` decimal(10,0) DEFAULT NULL,
  `equipamentos` decimal(10,0) DEFAULT NULL,
  `aliquotacf` decimal(10,0) DEFAULT NULL,
  `contatosdiversos` decimal(10,0) DEFAULT NULL,
  `reunioes` decimal(10,0) DEFAULT NULL,
  `agenciasbancarias` decimal(10,0) DEFAULT NULL,
  `notafiscaleletronica` decimal(10,0) DEFAULT NULL,
  `veiculos` decimal(10,0) DEFAULT NULL,
  `produtoseservicosinterno` decimal(10,0) DEFAULT NULL,
  `diretoriosbackup` decimal(10,0) DEFAULT NULL,
  `contratos` decimal(10,0) DEFAULT NULL,
  `lancamentoscontabeis` decimal(10,0) DEFAULT NULL,
  `ncm` decimal(10,0) DEFAULT NULL,
  `numeroserie` decimal(10,0) DEFAULT '0',
  `formatura` decimal(10,0) DEFAULT '0',
  `numerodeserie` decimal(10,0) DEFAULT '0',
  `notafiscaldeservico` decimal(10,0) DEFAULT '0',
  `imovel` decimal(10,0) DEFAULT '0',
  `postit` decimal(10,0) DEFAULT '0',
  `ordemdecompra` decimal(10,0) DEFAULT '0',
  `protocolo` decimal(10,0) DEFAULT '0',
  `receitaoptica` decimal(10,0) DEFAULT '5000',
  `ultimonossonumerosemregistrobb` decimal(20,0) DEFAULT '0',
  `ultimonossonumerocomregistrobb` decimal(20,0) DEFAULT '0',
  `mapadecarga` decimal(20,0) DEFAULT '0',
  `acompanhamentoatendimento` decimal(20,0) DEFAULT '0',
  `remessasicredi` decimal(20,0) DEFAULT '1',
  `ultimoboletosicredi` decimal(20,0) DEFAULT '1',
  `ultimovisualizadordeimagens` decimal(20,0) DEFAULT '1',
  `retornosicredi` decimal(20,0) DEFAULT '1',
  `controlecolaboradores` decimal(20,0) DEFAULT '0',
  `controleatendimentos` decimal(20,0) DEFAULT '0',
  `receitaagronomica` decimal(20,0) DEFAULT '0',
  `diferencarpsnotaservico` decimal(20,0) DEFAULT '0',
  `checklist` decimal(20,0) DEFAULT '0',
  `cincowdoish` decimal(20,0) DEFAULT '0',
  `cupomitautec` decimal(20,0) DEFAULT '0',
  `ultimoboletobanrisul` decimal(20,0) DEFAULT '0',
  `remessabanrisul` decimal(20,0) DEFAULT '0',
  `cte` decimal(20,0) DEFAULT '0',
  `nfce` decimal(20,0) DEFAULT '0',
  `dcb` decimal(20,0) DEFAULT '0',
  `resumoloterica` decimal(20,0) DEFAULT '0',
  `produtosloterica` decimal(20,0) DEFAULT '0',
  `rps` decimal(20,0) DEFAULT '0',
  `ultimoboletobradesco` decimal(20,0) DEFAULT '0',
  `ultimasenhaatendimento` decimal(20,0) DEFAULT '0',
  `remessabradesco` decimal(20,0) DEFAULT '0',
  `itemcomanda` decimal(20,0) DEFAULT '0',
  `valepresente` decimal(20,0) DEFAULT '0',
  `pagamentocomissoes` decimal(20,0) DEFAULT '0',
  `envioconserto` decimal(20,0) DEFAULT '0',
  `folhapagamento` decimal(20,0) DEFAULT '10000',
  `pet` decimal(20,0) DEFAULT '0',
  `ultimoboletosantander` decimal(20,0) DEFAULT '0',
  `remessasantander` decimal(20,0) DEFAULT '0',
  `rota` decimal(20,0) DEFAULT '1000',
  `ultimoboletobb` decimal(20,0) DEFAULT '0',
  `remessabancodobrasil` decimal(20,0) DEFAULT '0',
  `mdfe` decimal(20,0) DEFAULT '0',
  `numeromdfe` decimal(20,0) DEFAULT '0',
  `ultimoboletocaixa` decimal(20,0) DEFAULT '0',
  `remessacaixa` decimal(20,0) DEFAULT '0',
  `ultimoboletosicoob` decimal(20,0) DEFAULT '0',
  `remessasicoob` decimal(20,0) DEFAULT '0',
  `petfichaanestesica` decimal(20,0) DEFAULT '0',
  `petatestados` decimal(20,0) DEFAULT '0',
  `ultimaletracodigoproduto` varchar(2) DEFAULT 'A',
  `sequenciacodigoprodutoletra` decimal(20,0) DEFAULT '0',
  `boletonumeroremessabaixa` varchar(100) DEFAULT NULL,
  `ordemservico` decimal(20,0) DEFAULT '0',
  `pedido` decimal(20,0) DEFAULT '0',
  `ordemproducao` decimal(20,0) DEFAULT '0',
  `ultimoboletounicred` decimal(20,0) DEFAULT '0',
  `recibolocacaobemmovel` decimal(20,0) DEFAULT '0',
  `diferencalotenotaservico` decimal(20,0) DEFAULT '0',
  `lotenfse` decimal(20,0) DEFAULT '0',
  `remessaunicred` decimal(20,0) DEFAULT '0',
  `ctecartadecorrecao` decimal(20,0) DEFAULT '0',
  `ultimoboletoitau` decimal(20,0) DEFAULT '0',
  `remessaitau` decimal(20,0) DEFAULT '0',
  `orcamento` decimal(20,0) DEFAULT '0',
  `controledequilometragem` decimal(20,0) DEFAULT '10000',
  `montagemcomposicao` decimal(20,0) DEFAULT '0',
  `diversos` decimal(20,0) DEFAULT '0',
  `leituraarquivos` decimal(20,0) DEFAULT '0',
  `apontamentoproducao` decimal(20,0) DEFAULT '0',
  `codigoadicionalproduto` decimal(20,0) DEFAULT '0',
  `grades` decimal(10,0) DEFAULT '0',
  `autorizados` decimal(10,0) DEFAULT '10000',
  `ultimoboletocresol` decimal(10,0) DEFAULT '0',
  `remessacresol` decimal(10,0) DEFAULT '0',
  `nfeinfdeclaracaoid` decimal(10,0) DEFAULT '0',
  `contratosimoveis` decimal(10,0) DEFAULT '0',
  `examestoxicologicos` decimal(10,0) DEFAULT '0',
  `termoconformidade` decimal(10,0) DEFAULT '0',
  `auditoriaestoque` decimal(10,0) DEFAULT '0',
  `lotes` decimal(10,0) DEFAULT '0',
  `arquivomodelo21` decimal(10,0) DEFAULT '0',
  `combinacaoprodutos` decimal(10,0) DEFAULT '0',
  `envioconsertositens` decimal(10,0) DEFAULT '0',
  `configuracoesprodutos` decimal(10,0) DEFAULT '0',
  `anexos` decimal(10,0) DEFAULT '0',
  `variacoes` decimal(10,0) DEFAULT '0',
  `planejamentoproducao` decimal(10,0) DEFAULT '0',
  `nsu` decimal(15,0) DEFAULT '0',
  `faturamentoauxiliar` decimal(10,0) DEFAULT '0',
  `ultimodebitoautomaticosicredi` decimal(10,0) DEFAULT '0',
  `nsucte` decimal(15,0) DEFAULT '0',
  `consultaestoque` decimal(15,0) DEFAULT '0',
  `edinotifis` decimal(15,0) DEFAULT '0',
  `diarioobra` decimal(15,0) DEFAULT '1000',
  `hashgeral` decimal(15,0) DEFAULT '1000',
  `osequipamentos` decimal(15,0) DEFAULT '0',
  `gnre` decimal(15,0) DEFAULT '1000',
  `pdv` decimal(15,0) DEFAULT '0',
  `regrasfiscaisipi` decimal(15,0) DEFAULT '0',
  `regrasfiscaisicms` decimal(15,0) DEFAULT '0',
  `regrasfiscaispis` decimal(15,0) DEFAULT '0',
  `regrasfiscaiscofins` decimal(15,0) DEFAULT '0',
  PRIMARY KEY (`empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.unidadesdemedida
CREATE TABLE IF NOT EXISTS `unidadesdemedida` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `unidade` varchar(50) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuarioagenda
CREATE TABLE IF NOT EXISTS `usuarioagenda` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `veragendadousuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuariorelatorios
CREATE TABLE IF NOT EXISTS `usuariorelatorios` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `relatorio` varchar(50) DEFAULT NULL,
  `tela` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `codigo` varchar(10) NOT NULL,
  `usuario` varchar(130) DEFAULT NULL,
  `senha` varchar(25) DEFAULT NULL,
  `clientes` varchar(3) DEFAULT NULL,
  `clientesatendimentos` varchar(3) DEFAULT NULL,
  `clientesfinanceiro` varchar(3) DEFAULT NULL,
  `clientesautorizados` varchar(3) DEFAULT NULL,
  `clientescrm` varchar(3) DEFAULT NULL,
  `fornecedores` varchar(3) DEFAULT NULL,
  `fornecedoresatendimentos` varchar(3) DEFAULT NULL,
  `fornecedoresfinanceiro` varchar(3) DEFAULT NULL,
  `fornecedoresautorizados` varchar(3) DEFAULT NULL,
  `fornecedorescrm` varchar(3) DEFAULT NULL,
  `produtos` varchar(3) DEFAULT NULL,
  `produtoscusto` varchar(3) DEFAULT NULL,
  `produtosmarkup` varchar(3) DEFAULT NULL,
  `produtosestoque` varchar(3) DEFAULT NULL,
  `produtosproducao` varchar(3) DEFAULT NULL,
  `produtosmovimentacoes` varchar(3) DEFAULT NULL,
  `servicos` varchar(3) DEFAULT NULL,
  `vendedores` varchar(3) DEFAULT NULL,
  `grupos` varchar(3) DEFAULT NULL,
  `cidades` varchar(3) DEFAULT NULL,
  `estados` varchar(3) DEFAULT NULL,
  `transportadoras` varchar(3) DEFAULT NULL,
  `contatosdiversos` varchar(3) DEFAULT NULL,
  `contascontabeis` varchar(3) DEFAULT NULL,
  `historicos` varchar(3) DEFAULT NULL,
  `naturezasdeoperacoes` varchar(3) DEFAULT NULL,
  `tiposdedocumentos` varchar(3) DEFAULT NULL,
  `departamentos` varchar(3) DEFAULT NULL,
  `convenios` varchar(3) DEFAULT NULL,
  `cartoesdecredito` varchar(3) DEFAULT NULL,
  `veiculos` varchar(3) DEFAULT NULL,
  `setores` varchar(3) DEFAULT NULL,
  `ramosdeatividades` varchar(3) DEFAULT NULL,
  `profissoes` varchar(3) DEFAULT NULL,
  `condicoesdepagamento` varchar(3) DEFAULT NULL,
  `processos` varchar(3) DEFAULT NULL,
  `locaisdecobranca` varchar(3) DEFAULT NULL,
  `tiposdeoperacoes` varchar(3) DEFAULT NULL,
  `usuarios` varchar(3) DEFAULT NULL,
  `cores` varchar(3) DEFAULT NULL,
  `tamanhos` varchar(3) DEFAULT NULL,
  `materiais` varchar(3) DEFAULT NULL,
  `atributos` varchar(3) DEFAULT NULL,
  `funcionarios` varchar(3) DEFAULT NULL,
  `maodeobra` varchar(3) DEFAULT NULL,
  `equipamentos` varchar(3) DEFAULT NULL,
  `consultordevendas` varchar(3) DEFAULT NULL,
  `compras` varchar(3) DEFAULT NULL,
  `compraspedidos` varchar(3) DEFAULT NULL,
  `comprasorcamentos` varchar(3) DEFAULT NULL,
  `comprasordensdecompra` varchar(3) DEFAULT NULL,
  `comprasnotasfiscais` varchar(3) DEFAULT NULL,
  `comprasoutrascompras` varchar(3) DEFAULT NULL,
  `comprasfaturamento` varchar(3) DEFAULT NULL,
  `comprasfinalizacao` varchar(3) DEFAULT NULL,
  `vendas` varchar(3) DEFAULT NULL,
  `vendasprevendas` varchar(3) DEFAULT NULL,
  `vendasorcamentos` varchar(3) DEFAULT NULL,
  `vendascondicionais` varchar(3) DEFAULT NULL,
  `vendaspedidos` varchar(3) DEFAULT NULL,
  `vendasnotasfiscais` varchar(3) DEFAULT NULL,
  `vendasoutrasvendas` varchar(3) DEFAULT NULL,
  `vendascancelar` varchar(3) DEFAULT NULL,
  `vendasfaturamento` varchar(3) DEFAULT NULL,
  `vendasdeletar` varchar(3) DEFAULT NULL,
  `vendasdeletaritem` varchar(3) DEFAULT NULL,
  `vendasdescontomaximoitem` varchar(3) DEFAULT NULL,
  `vendasdescontomaximoatendimento` varchar(3) DEFAULT NULL,
  `vendasfinalizacao` varchar(3) DEFAULT NULL,
  `vendasliberadescontoparaoutros` varchar(3) DEFAULT NULL,
  `outrasoperacoesdeentrada` varchar(3) DEFAULT NULL,
  `outrasoperacoesdesaida` varchar(3) DEFAULT NULL,
  `contasreceber` varchar(3) DEFAULT NULL,
  `contasreceberrecebimento` varchar(3) DEFAULT NULL,
  `contasreceberestorno` varchar(3) DEFAULT NULL,
  `contasrecebercancelamento` varchar(3) DEFAULT NULL,
  `contasreceberexcluir` varchar(3) DEFAULT NULL,
  `contasrecebercadastrar` varchar(3) DEFAULT NULL,
  `contasreceberboletobancario` varchar(3) DEFAULT NULL,
  `contaspagar` varchar(3) DEFAULT NULL,
  `contaspagarpagamento` varchar(3) DEFAULT NULL,
  `contaspagarestorno` varchar(3) DEFAULT NULL,
  `contaspagarcancelamento` varchar(3) DEFAULT NULL,
  `contaspagarexcluir` varchar(3) DEFAULT NULL,
  `contaspagarcadastrar` varchar(3) DEFAULT NULL,
  `contabil` varchar(3) DEFAULT NULL,
  `fiscal` varchar(3) DEFAULT NULL,
  `ordemdeservico` varchar(3) DEFAULT NULL,
  `producao` varchar(3) DEFAULT NULL,
  `custos` varchar(3) DEFAULT NULL,
  `estoques` varchar(3) DEFAULT NULL,
  `relatoriosgerenciais` varchar(3) DEFAULT NULL,
  `relatoriosgerenciaisinadimplencia` varchar(3) DEFAULT NULL,
  `relatoriosgerenciaisatendimentos` varchar(3) DEFAULT NULL,
  `relatoriosgerenciaiscontasreceber` varchar(3) DEFAULT NULL,
  `relatoriosgerenciaiscontaspagar` varchar(3) DEFAULT NULL,
  `ajustesdecadastros` varchar(3) DEFAULT NULL,
  `maladireta` varchar(3) DEFAULT NULL,
  `geradordemensalidades` varchar(3) DEFAULT NULL,
  `gerenciadordecontatos` varchar(3) DEFAULT NULL,
  `posvendas` varchar(3) DEFAULT NULL,
  `clonarprodutos` varchar(3) DEFAULT NULL,
  `exportacaodearquivos` varchar(3) DEFAULT NULL,
  `impressaodedocumentos` varchar(3) DEFAULT NULL,
  `agenda` varchar(3) DEFAULT NULL,
  `tarefas` varchar(3) DEFAULT NULL,
  `mensagens` varchar(3) DEFAULT NULL,
  `ajusterapidodeestoque` varchar(3) DEFAULT NULL,
  `devolucaodecondicionais` varchar(3) DEFAULT NULL,
  `arquivodeeventos` varchar(3) DEFAULT NULL,
  `configuracoes` varchar(3) DEFAULT NULL,
  `arquivoconfiguracoes` varchar(3) DEFAULT NULL,
  `backup` varchar(3) DEFAULT NULL,
  `cupomfiscal` varchar(3) DEFAULT NULL,
  `ajustesequencianotafiscal` varchar(3) DEFAULT NULL,
  `geradordesenhasadministrativas` varchar(3) DEFAULT NULL,
  `relatoriosgerenciaisitens` varchar(3) DEFAULT NULL,
  `relatoriosgerenciaiscolaboradores` varchar(3) DEFAULT NULL,
  `comprascancelar` varchar(3) DEFAULT NULL,
  `comprasdeletar` varchar(3) DEFAULT NULL,
  `aliquotascf` varchar(3) DEFAULT NULL,
  `atalhoclientes` varchar(3) DEFAULT NULL,
  `atalhofornecedores` varchar(3) DEFAULT NULL,
  `atalhovenda` varchar(3) DEFAULT NULL,
  `atalhocompra` varchar(3) DEFAULT NULL,
  `atalhorecebimento` varchar(3) DEFAULT NULL,
  `atalhopagamento` varchar(3) DEFAULT NULL,
  `atalhoprodutos` varchar(3) DEFAULT NULL,
  `atalhorelatoriosgerenciais` varchar(3) DEFAULT NULL,
  `graficosnatelaprincipal` varchar(3) DEFAULT NULL,
  `bancos` varchar(3) DEFAULT NULL,
  `centrodecustos` varchar(3) DEFAULT NULL,
  `colecoes` varchar(3) DEFAULT NULL,
  `marcas` varchar(3) DEFAULT NULL,
  `tabelasdeprecos` varchar(3) DEFAULT NULL,
  `relatoriosauxiliares` varchar(3) DEFAULT NULL,
  `diretoriosbackup` varchar(3) DEFAULT NULL,
  `informacoesprodutosnalista` varchar(3) DEFAULT NULL,
  `atalhopedidos` varchar(3) DEFAULT NULL,
  `contratosdejogos` varchar(3) DEFAULT NULL,
  `complementosdecadastros` varchar(3) DEFAULT NULL,
  `clientebloqueado` varchar(10) DEFAULT NULL,
  `liberaclientebloqueadoparaoutrosusuarios` varchar(3) DEFAULT NULL,
  `clienteematraso` varchar(10) DEFAULT NULL,
  `liberaclienteatrasoparaoutrosusuarios` varchar(3) DEFAULT NULL,
  `preferenciacriterioprodutosservicos` varchar(50) DEFAULT NULL,
  `ncm` varchar(3) DEFAULT NULL,
  `preferenciaordematendimento` varchar(50) DEFAULT NULL,
  `preferenciapesquisacontas` varchar(50) DEFAULT NULL,
  `saldoscontas` varchar(3) DEFAULT NULL,
  `atalhocondicional` varchar(3) DEFAULT NULL,
  `vendedorpadraousuario` varchar(20) DEFAULT NULL,
  `lotes` varchar(3) DEFAULT NULL,
  `numerodeserie` varchar(3) DEFAULT NULL,
  `formatura` varchar(3) DEFAULT NULL,
  `cursos` varchar(3) DEFAULT NULL,
  `instituicoes` varchar(3) DEFAULT NULL,
  `exibircustorealnalista` varchar(3) DEFAULT NULL,
  `geradorlistadeprecos` varchar(3) DEFAULT NULL,
  `atalhoformaturas` varchar(3) DEFAULT NULL,
  `preferenciaordemcontas` varchar(20) DEFAULT NULL,
  `atalhoorcamentos` varchar(3) DEFAULT NULL,
  `preferenciapesquisaatendimentos` varchar(20) DEFAULT NULL,
  `atalhoordemdeservico` varchar(3) DEFAULT NULL,
  `atalhocontascontabeis` varchar(3) DEFAULT NULL,
  `atalhoagenda` varchar(3) DEFAULT NULL,
  `veragendadeoutros` varchar(1) DEFAULT NULL,
  `gestaodeordemdeservicos` varchar(1) DEFAULT NULL,
  `atalhogestaoordemdeservico` varchar(3) DEFAULT NULL,
  `turmas` varchar(3) DEFAULT NULL,
  `niveis` varchar(3) DEFAULT NULL,
  `imoveis` varchar(3) DEFAULT NULL,
  `verasvendasdosoutrosusuarios` varchar(3) DEFAULT NULL,
  `gestorfinanceiro` varchar(3) DEFAULT NULL,
  `contacontabilpadraoaoabrirpeloatalho` varchar(20) DEFAULT NULL,
  `atalhorelatoriosauxiliares` varchar(3) DEFAULT NULL,
  `inquilinos` varchar(3) DEFAULT NULL,
  `proprietarios` varchar(3) DEFAULT NULL,
  `atalhocontatoscolaborador` varchar(3) DEFAULT NULL,
  `exibirtotalcustorealnoatendimento` varchar(3) DEFAULT NULL,
  `exibirtotalvalorvercadorianoatendimento` varchar(3) DEFAULT NULL,
  `atalhoprevenda` varchar(3) DEFAULT NULL,
  `integracaoentrefiliaisprodutos` varchar(3) DEFAULT NULL,
  `diasgerenciadordecontatosverde` varchar(3) DEFAULT NULL,
  `diasgerenciadordecontatosamarelo` varchar(3) DEFAULT NULL,
  `diasgerenciadordecontatosvermelho` varchar(3) DEFAULT NULL,
  `atalhoacionagaveta` varchar(3) DEFAULT NULL,
  `prospect` varchar(3) DEFAULT NULL,
  `visualizarvalordamercadorianoadditens` varchar(3) DEFAULT NULL,
  `ordenarprodutospor` varchar(50) DEFAULT NULL,
  `ajustaraliquotascreditoicms` varchar(3) DEFAULT NULL,
  `atalhooutrasentradas` varchar(3) DEFAULT NULL,
  `atalhooutrassaidas` varchar(3) DEFAULT NULL,
  `baixaautomaticadecontas` varchar(3) DEFAULT NULL,
  `rotas` varchar(3) DEFAULT NULL,
  `reunioes` varchar(3) DEFAULT NULL,
  `contapreferencialquitacaoreceber` varchar(20) DEFAULT NULL,
  `visualizarsomenteseusclientes` tinyint(1) DEFAULT NULL,
  `clientesalteraremailtelefone` tinyint(1) DEFAULT NULL,
  `atalhoteleentrega` varchar(3) DEFAULT NULL,
  `exibirvalormercadorianalista` varchar(3) DEFAULT NULL,
  `unidadesdemedida` varchar(3) DEFAULT NULL,
  `generodosprodutos` varchar(3) DEFAULT NULL,
  `codigodeservicos` varchar(3) DEFAULT NULL,
  `somenteestoquepositivonalistadeprodutos` tinyint(1) DEFAULT '0',
  `totaisnatelaatendimentos` tinyint(1) DEFAULT '1',
  `exibircustomercadorianalista` varchar(3) DEFAULT NULL,
  `atalhoproducao` varchar(3) DEFAULT NULL,
  `vendedor2` varchar(10) DEFAULT NULL,
  `spedcontribuicoes` varchar(3) DEFAULT NULL,
  `reducoes` varchar(3) DEFAULT NULL,
  `descontomaximo` varchar(10) DEFAULT NULL,
  `liberadescontos` varchar(3) DEFAULT NULL,
  `estoqueaexibir` varchar(10) DEFAULT 'Ambos',
  `exibirtotalvmvnositensatendimento` tinyint(1) DEFAULT '0',
  `alterardatacontato` tinyint(1) DEFAULT '1',
  `totaisdascontas` tinyint(1) DEFAULT '1',
  `atalhogestaoestoque` varchar(3) DEFAULT NULL,
  `mudarvendedor` tinyint(1) DEFAULT '1',
  `atalhogestorcomercial` varchar(3) DEFAULT NULL,
  `informacoesfinanceirasformaturas` tinyint(1) DEFAULT '1',
  `mudarprevisaoformandosformaturanaedicao` tinyint(1) DEFAULT '1',
  `exibirresumodoultimofaturamento` tinyint(1) DEFAULT '1',
  `exibirresumodoultimorecebimento` tinyint(1) DEFAULT '1',
  `inutilizacaonfe` varchar(3) DEFAULT NULL,
  `modificarestoque` tinyint(1) DEFAULT '1',
  `liberaclientecomcondicionalatrasado` tinyint(1) DEFAULT '0',
  `oquefazercomcondicionalatrasado` varchar(50) DEFAULT 'Notificar',
  `concederdescontoquitacao` tinyint(1) DEFAULT '1',
  `oquefazerclientesemlimite` varchar(50) DEFAULT 'Notificar',
  `liberaclientesemlimite` tinyint(1) DEFAULT '1',
  `associados` varchar(50) DEFAULT NULL,
  `comandas` varchar(50) DEFAULT NULL,
  `gestorestoque` varchar(50) DEFAULT NULL,
  `spedfiscal` varchar(50) DEFAULT NULL,
  `contratosdiversos` varchar(50) DEFAULT NULL,
  `copiarsigame` varchar(50) DEFAULT NULL,
  `sincronizar` varchar(50) DEFAULT NULL,
  `importarnfe` varchar(50) DEFAULT NULL,
  `pesagem` varchar(50) DEFAULT NULL,
  `contagemdepecas` varchar(50) DEFAULT NULL,
  `copiarbancoremoto` varchar(50) DEFAULT NULL,
  `enviaestoque` varchar(50) DEFAULT NULL,
  `ocorrencias` varchar(50) DEFAULT NULL,
  `acessoaatendimentosnaofaturados` tinyint(1) DEFAULT '1',
  `ocultariconesadicionaisdevolucaocondicional` tinyint(1) DEFAULT '0',
  `visualizarrelatorioscomlucratividade` tinyint(1) DEFAULT '1',
  `exibiraniversariantesnatelaprincipal` tinyint(1) DEFAULT '0',
  `exibiragendanatelaprincipal` tinyint(1) DEFAULT '0',
  `menuoutrasentradas` tinyint(1) DEFAULT '1',
  `submenuoutrasentradas` tinyint(1) DEFAULT '1',
  `submenutransferenciaentradas` tinyint(1) DEFAULT '1',
  `submenudevolucaovendas` tinyint(1) DEFAULT '1',
  `submenuremessaentrada` tinyint(1) DEFAULT '1',
  `submenubonificacaoentrada` tinyint(1) DEFAULT '1',
  `menuoutrassaidas` tinyint(1) DEFAULT '1',
  `submenuoutrassaidas` tinyint(1) DEFAULT '1',
  `submenutrasnferenciasaidas` tinyint(1) DEFAULT '1',
  `submenudevolucaodecompras` tinyint(1) DEFAULT '1',
  `submenuremessasaidas` tinyint(1) DEFAULT '1',
  `submenubonificacaosaida` tinyint(1) DEFAULT '1',
  `exibirpraticados` tinyint(1) DEFAULT '1',
  `mapadecarga` varchar(50) DEFAULT 'N',
  `modificartipooperacaoatendimento` tinyint(4) DEFAULT '1',
  `aniversariantes` varchar(50) DEFAULT NULL,
  `modificartipocolaborador` tinyint(1) DEFAULT '1',
  `operacoesatendimentos` tinyint(1) DEFAULT '1',
  `imprimircondicional` tinyint(1) DEFAULT '1',
  `imprimirpedido` tinyint(1) DEFAULT '1',
  `unicaopcaodisponivelajustarcadastro` varchar(50) DEFAULT NULL,
  `situacaodousuario` varchar(50) DEFAULT 'Ativo',
  `tipopadraoaocriarnovocolaborador` varchar(50) DEFAULT NULL,
  `atendimentorapidoiconeavista` tinyint(1) DEFAULT '1',
  `atendimentorapidoiconeaprazo` tinyint(1) DEFAULT '1',
  `atendimentorapidoiconecalcular` tinyint(1) DEFAULT '1',
  `atendimentorapidoiconeexcluiritem` tinyint(1) DEFAULT '1',
  `atendimentorapidoiconecupomavista` tinyint(1) DEFAULT '1',
  `atendimentorapidoiconecupomaprazo` tinyint(1) DEFAULT '1',
  `atendimentorapidoiconetabelaigualtabelacd` tinyint(1) DEFAULT '1',
  `atendimentorapidoiconecondicional` tinyint(1) DEFAULT '1',
  `atendimentorapidoiconeorcamento` tinyint(1) DEFAULT '1',
  `atendimentorapidoiconeprevenda` tinyint(1) DEFAULT '1',
  `somentescontasvendedorpadrao` tinyint(1) DEFAULT NULL,
  `atualizavalorunitarioatendimentocompra` tinyint(1) DEFAULT '0',
  `precopraticadopadrao` varchar(50) DEFAULT NULL,
  `atalhoauxiliaratendimentosfaturados` varchar(3) DEFAULT 'NÃO',
  `padraosituacaoprodutos` varchar(25) DEFAULT 'Ativo',
  `exibiralterarpraticadoematendimentorapido` tinyint(1) DEFAULT '0',
  `arquivocotepe` tinyint(1) DEFAULT '0',
  `ecf` varchar(3) DEFAULT 'N',
  `ponto` varchar(3) DEFAULT 'N',
  `portaria` tinyint(1) DEFAULT '0',
  `exclusaomovimentocontabil` tinyint(1) DEFAULT '1',
  `exportacaoplanilhamattel` tinyint(1) DEFAULT '0',
  `conceitofinanceiro` varchar(3) DEFAULT NULL,
  `safras` varchar(3) DEFAULT 'N',
  `culturas` varchar(3) DEFAULT 'N',
  `vazoes` varchar(3) DEFAULT 'N',
  `acompanhamentoatendimento` varchar(3) DEFAULT 'N',
  `caixapadraounico` varchar(50) DEFAULT NULL,
  `exibirpraticado` tinyint(1) DEFAULT '1',
  `exibirpraticado2` tinyint(1) DEFAULT '0',
  `exibirpraticado3` tinyint(1) DEFAULT '0',
  `atalhocondicionaisnaofaturados` varchar(3) DEFAULT NULL,
  `atalhodevolucaocondicionais` varchar(3) DEFAULT NULL,
  `alertascolaboradores` tinyint(1) DEFAULT '0',
  `enviaremailtelaagenda` tinyint(1) DEFAULT '1',
  `remessasicredi` varchar(3) DEFAULT 'N',
  `mudarvendedoratendimentofaturado` tinyint(1) DEFAULT '0',
  `excluirprodutoscommovimentacao` tinyint(1) DEFAULT '0',
  `bloquearsaidasprodutoslimiteatingidogrupo` varchar(50) DEFAULT 'Permitir',
  `exibirvaloresdosatendimentos` tinyint(1) DEFAULT '1',
  `abriratendimentos` tinyint(1) DEFAULT '1',
  `quantidadebloqueadaadditens` tinyint(1) DEFAULT '0',
  `quantidadebloqueadanogrid` tinyint(1) DEFAULT '0',
  `visualizadordeimagens` tinyint(1) DEFAULT '0',
  `atalhoimpressaodedocumentos` varchar(3) DEFAULT NULL,
  `gerarnotaatendimentofaturado` tinyint(1) DEFAULT '0',
  `modificartipodocumento` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvonota` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvopedido` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvocondicional` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvoorcamento` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvopromocao` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvoentregamaterial` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvocontrato` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvopropostapreco` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvolicitacao` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvoamostras` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvoemprestimos` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvoprevenda` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvoordemdecompra` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvoproducao` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvoordemservico` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvoteleentrega` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvogarantia` tinyint(1) DEFAULT '1',
  `excluiritematendimentosalvorecibo` tinyint(1) DEFAULT '1',
  `mudarpadraopercentualjuroscontasreceber` tinyint(1) DEFAULT '0',
  `indices` varchar(3) DEFAULT 'N',
  `bairros` varchar(3) DEFAULT 'N',
  `ajustarsequenciacontroleatendimento` tinyint(1) DEFAULT '0',
  `centrodecustosunicoparaoponto` varchar(50) DEFAULT NULL,
  `incluiritensoperacoesvenda` tinyint(1) DEFAULT '1',
  `metas` varchar(50) DEFAULT 'N',
  `gestaodemetas` tinyint(1) DEFAULT '0',
  `abriritensnasvendas` tinyint(1) DEFAULT '1',
  `modificarcolaboradornavenda` tinyint(1) DEFAULT '1',
  `editarmovimentoscontabeis` tinyint(1) DEFAULT '1',
  `modificarjurosnorecebimento` tinyint(1) DEFAULT '1',
  `modificarvalorcontas` tinyint(1) DEFAULT '1',
  `modificartolerancianorecebimento` tinyint(1) DEFAULT '1',
  `solicitacaotransferenciaestoque` tinyint(1) DEFAULT '0',
  `guianotafiscal` tinyint(1) DEFAULT '1',
  `pesquisarvendedoratendimentospelalupa` tinyint(1) DEFAULT '1',
  `exibirsolicitacaodecompraadditens` tinyint(1) DEFAULT '1',
  `solicitacaodecompra` tinyint(1) DEFAULT '0',
  `exibirguiaitens1` tinyint(1) DEFAULT '1',
  `exibirguiafaturamento` tinyint(1) DEFAULT '1',
  `exibirguiaadicionais` tinyint(1) DEFAULT '1',
  `exibirguiaordemservicos` tinyint(1) DEFAULT '1',
  `atendimentodocumento1` tinyint(1) DEFAULT '1',
  `atendimentodocumento2` tinyint(1) DEFAULT '1',
  `atendimentodocumento3` tinyint(1) DEFAULT '1',
  `atendimentodocumento4` tinyint(1) DEFAULT '1',
  `atendimentodocumento5` tinyint(1) DEFAULT '1',
  `atendimentodocumento6` tinyint(1) DEFAULT '1',
  `atendimentodocumento7` tinyint(1) DEFAULT '1',
  `atendimentodocumento8` tinyint(1) DEFAULT '1',
  `atendimentodocumento9` tinyint(1) DEFAULT '1',
  `atendimentodocumento10` tinyint(1) DEFAULT '1',
  `atendimentodocumento11` tinyint(1) DEFAULT '1',
  `atendimentodocumento12` tinyint(1) DEFAULT '1',
  `atendimentodocumento13` tinyint(1) DEFAULT '1',
  `atendimentodocumento14` tinyint(1) DEFAULT '1',
  `atendimentodocumento15` tinyint(1) DEFAULT '1',
  `atendimentodocumento16` tinyint(1) DEFAULT '1',
  `atendimentodocumento17` tinyint(1) DEFAULT '1',
  `atendimentodocumento18` tinyint(1) DEFAULT '1',
  `atendimentodocumento19` tinyint(1) DEFAULT '1',
  `atendimentodocumento20` tinyint(1) DEFAULT '1',
  `atendimentodocumento21` tinyint(1) DEFAULT '1',
  `atendimentodocumento22` tinyint(1) DEFAULT '1',
  `atendimentodocumento23` tinyint(1) DEFAULT '1',
  `atendimentodocumento24` tinyint(1) DEFAULT '1',
  `atendimentodocumento25` tinyint(1) DEFAULT '1',
  `atendimentodocumento26` tinyint(1) DEFAULT '1',
  `atendimentodocumento27` tinyint(1) DEFAULT '1',
  `atendimentodocumento28` tinyint(1) DEFAULT '1',
  `atendimentodocumento29` tinyint(1) DEFAULT '1',
  `atendimentodocumento30` tinyint(1) DEFAULT '1',
  `atendimentodocumento31` tinyint(1) DEFAULT '1',
  `atendimentodocumento32` tinyint(1) DEFAULT '1',
  `atendimentodocumento33` tinyint(1) DEFAULT '1',
  `atendimentodocumentofinalizacao` tinyint(1) DEFAULT '1',
  `devolucaocondicionalnoatendimento` tinyint(1) DEFAULT '0',
  `escolhertabelasatendimentotapido` tinyint(1) DEFAULT '0',
  `checklist` varchar(3) DEFAULT 'N',
  `checklistclientes` tinyint(1) DEFAULT '0',
  `checklistfornecedores` tinyint(1) DEFAULT '0',
  `cincowdoish` varchar(3) DEFAULT 'N',
  `impressaodenotasporperiodo` tinyint(1) DEFAULT '0',
  `alterarlimites` tinyint(1) DEFAULT '1',
  `autorizarpedidos` tinyint(1) DEFAULT '1',
  `imprimirpedidosnaoautorizados` tinyint(1) DEFAULT '1',
  `atalhoalunos` varchar(3) DEFAULT NULL,
  `dre` varchar(3) DEFAULT NULL,
  `cadastroscomplementares` varchar(1) DEFAULT '1',
  `tab1` tinyint(1) DEFAULT '0',
  `atalhoservicos` varchar(3) DEFAULT 'NÃO',
  `regrasdecomissao` tinyint(1) DEFAULT '0',
  `exibirvendasaoconsultarestoquefiliais` tinyint(1) DEFAULT '0',
  `modificarvencimentodascontas` tinyint(1) DEFAULT '1',
  `modificardatanaquitacao` tinyint(1) DEFAULT '1',
  `padraogestorospesquisarpor` varchar(50) DEFAULT NULL,
  `padraogestorosordenarpor` varchar(50) DEFAULT NULL,
  `padraogestorosstatustecnico` varchar(50) DEFAULT NULL,
  `excluircreditocolaboradores` tinyint(1) DEFAULT '0',
  `tab2` tinyint(1) DEFAULT '1',
  `tab7` tinyint(1) DEFAULT '1',
  `tab8` tinyint(1) DEFAULT '1',
  `tab9` tinyint(1) DEFAULT '1',
  `tab10` tinyint(1) DEFAULT '1',
  `tab11` tinyint(1) DEFAULT '1',
  `tab12` tinyint(1) DEFAULT '1',
  `tab13` tinyint(1) DEFAULT '1',
  `tab14` tinyint(1) DEFAULT '1',
  `tab15` tinyint(1) DEFAULT '1',
  `tab16` tinyint(1) DEFAULT '1',
  `tab17` tinyint(1) DEFAULT '1',
  `tab18` tinyint(1) DEFAULT '1',
  `tab19` tinyint(1) DEFAULT '1',
  `tab20` tinyint(1) DEFAULT '1',
  `tab21` tinyint(1) DEFAULT '1',
  `imprimirorcamentonaoautorizado` tinyint(1) DEFAULT '1',
  `imprimircondicionalnaoautorizado` tinyint(1) DEFAULT '1',
  `imprimirdemaisdocumentosnaoautorizados` tinyint(1) DEFAULT '1',
  `centrodecustospadrao` varchar(50) DEFAULT NULL,
  `colaboradorpadrao` varchar(50) DEFAULT NULL,
  `tipodocumentopadraoaoabriratendimentos` varchar(50) DEFAULT 'Item Clicado',
  `paises` varchar(50) DEFAULT 'N',
  `pedidominimo` varchar(50) DEFAULT '0',
  `comissaocolaboradores` tinyint(1) DEFAULT '0',
  `adicionalvalormercadoria` tinyint(1) DEFAULT '0',
  `inventarioestoque` tinyint(1) DEFAULT '0',
  `conversores` varchar(50) DEFAULT 'N',
  `prazomediopedidominimo` varchar(50) DEFAULT 'N',
  `oquefazerprazomediopedidominimoatingido` varchar(50) DEFAULT 'Nada',
  `liberaprazomediopedidominimoatingido` varchar(50) DEFAULT 'NÃO',
  `atendimentodocumentoboleto` tinyint(1) DEFAULT '0',
  `eventos` varchar(50) DEFAULT 'N',
  `confirmarsolicitacaotransferencia` tinyint(1) DEFAULT '1',
  `excluirdefinitivamenteclientes` tinyint(1) DEFAULT '0',
  `exibirtarefasdetodosaoabriragenda` tinyint(1) DEFAULT '0',
  `incluiritenscondicionaisapossalvar` tinyint(1) DEFAULT '1',
  `graficofaturamento` tinyint(1) DEFAULT '1',
  `graficometas` tinyint(1) DEFAULT '1',
  `metaaexibirnografico` varchar(50) DEFAULT NULL,
  `atalhodevolucaodevendas` varchar(50) DEFAULT NULL,
  `vendedorparametas` varchar(50) DEFAULT NULL,
  `cancelaritens` varchar(50) DEFAULT NULL,
  `gestaometassomentesuasmetas` tinyint(1) DEFAULT '0',
  `atalhogestaometas` varchar(3) DEFAULT 'NÃO',
  `somentecolaboradoresdaempresalogada` tinyint(1) DEFAULT '0',
  `somenteatendimentosdaempresalogada` tinyint(1) DEFAULT '0',
  `somentecontasdaempresalogada` tinyint(1) DEFAULT '0',
  `somenterelatoriosgerenciaisdaempresalogada` tinyint(1) DEFAULT '0',
  `somenteestoquedaempresalogada` tinyint(1) DEFAULT '0',
  `tabelaigualatabelacdaolancaritem` tinyint(1) DEFAULT '0',
  `balancopatrimonial` tinyint(1) DEFAULT '0',
  `conferenciapacote` tinyint(1) DEFAULT '0',
  `exibiriconesalteracaopraticado` tinyint(1) DEFAULT '1',
  `editarvalorunitarioedescontoadditens` tinyint(1) DEFAULT '1',
  `gerarnfsedascontasreceber` tinyint(1) DEFAULT '0',
  `atalhoordemdecompra` varchar(3) DEFAULT NULL,
  `processarestoques` tinyint(1) DEFAULT NULL,
  `atendimentoexportarexcel` tinyint(1) DEFAULT '1',
  `alteracaopraticadofaturados` tinyint(1) DEFAULT '0',
  `exibirvalormercadoriaajusteestoque` tinyint(1) DEFAULT '0',
  `exibirpraticadoajusteestoque` tinyint(1) DEFAULT '0',
  `exibirtotalcustomercadorianoatendimento` varchar(3) DEFAULT 'NÃO',
  `exibiropcaocancelamentoitens` tinyint(1) DEFAULT '0',
  `veiculos2` varchar(3) DEFAULT 'N',
  `faturarnotasfiscais` tinyint(1) DEFAULT '1',
  `gestaodeorcamentos` tinyint(1) DEFAULT '0',
  `modificarhistoricofechamentocaixa` tinyint(1) DEFAULT '1',
  `gestorcomercialpadraocriteriodata` varchar(50) DEFAULT 'Compra',
  `gestorcomercialpadraometodo` varchar(50) DEFAULT 'Compra',
  `modificardatamovimentocontabil` tinyint(1) DEFAULT '1',
  `gestaodecobranca` tinyint(1) DEFAULT '1',
  `emailcobranca` varchar(50) DEFAULT 'N',
  `statuspreferencialatendimentos` varchar(50) DEFAULT NULL,
  `denominacaomedicamentos` varchar(50) DEFAULT 'N',
  `atalhofuncionarios` varchar(3) DEFAULT 'NÃO',
  `lotericaprodutos` varchar(3) DEFAULT 'N',
  `lotericaresumo` varchar(3) DEFAULT 'N',
  `modificarprecosquandotabelaselecionada` tinyint(1) DEFAULT '1',
  `exibirauxiliaredescontodoatendimento` tinyint(1) DEFAULT '1',
  `gradeatendimentocompra` tinyint(1) DEFAULT NULL,
  `exibircustocomposicaoitematendimento` tinyint(1) DEFAULT NULL,
  `modificarvendedorpadraocliente` tinyint(1) DEFAULT '1',
  `atalhocomandas` varchar(3) DEFAULT NULL,
  `impressoras` varchar(3) DEFAULT NULL,
  `apuracoes` tinyint(1) DEFAULT NULL,
  `caixapadrao` varchar(20) DEFAULT NULL,
  `faturamentocomandas` tinyint(1) DEFAULT '1',
  `valormapacomandas` tinyint(1) DEFAULT '1',
  `valepresente` varchar(3) DEFAULT 'N',
  `visualizarlistadeatendimentos` tinyint(1) DEFAULT '1',
  `editarvalormercadoriaitemmesmoaposfaturado` tinyint(1) DEFAULT '0',
  `atendimentodocumentonecessidadecompra` tinyint(1) DEFAULT '0',
  `etiquetas` tinyint(1) DEFAULT '1',
  `gerargrade` tinyint(1) DEFAULT '1',
  `colaboradorpadraoatendimentos` varchar(50) DEFAULT NULL,
  `atendimentosadicionaisetiquetas` tinyint(1) DEFAULT '1',
  `atendimentosadicionaisoperacoes` tinyint(1) DEFAULT '1',
  `atendimentosadicionaislog` tinyint(1) DEFAULT '1',
  `atendimentosadicionaiseventos` tinyint(1) DEFAULT '1',
  `atendimentosadicionaisensino` tinyint(1) DEFAULT '1',
  `atendimentosadicionaiscomplementar` tinyint(1) DEFAULT '1',
  `atendimentosadicionaisautorizacao` tinyint(1) DEFAULT '1',
  `atendimentosadicionaislicitacao` tinyint(1) DEFAULT '1',
  `atendimentosadicionaisfrete` tinyint(1) DEFAULT '1',
  `atendimentosadicionaisdespesas` tinyint(1) DEFAULT '1',
  `atendimentosadicionaiscontrato` tinyint(1) DEFAULT '1',
  `atendimentosadicionaisanexos` tinyint(1) DEFAULT '1',
  `atendimentosadicionaisimagens` tinyint(1) DEFAULT '1',
  `envioconserto` tinyint(1) DEFAULT NULL,
  `atalhoinvoice` tinyint(1) DEFAULT NULL,
  `gerarrecibolocalcaocontasreceber` tinyint(1) DEFAULT NULL,
  `inclusaoitemnavendapordescricao` tinyint(1) DEFAULT '1',
  `folhapagamento` tinyint(1) DEFAULT NULL,
  `tipodocumentopadraoguiafaturamentoatendimento` varchar(50) DEFAULT 'Nenhum',
  `exibiratendimentosfaturadosquandovenda` tinyint(1) DEFAULT '1',
  `iconefaturamentocomandatelaprincipal` tinyint(1) DEFAULT NULL,
  `atendimentogarantia` tinyint(1) DEFAULT NULL,
  `copiardadosnasincronizacao` tinyint(1) DEFAULT NULL,
  `salariofuncionarios` tinyint(1) DEFAULT NULL,
  `maximoparcelasprazovenda` varchar(3) DEFAULT NULL,
  `oquefazerunircondicionais` varchar(50) DEFAULT 'Nada',
  `liberaunircondicionais` tinyint(1) DEFAULT '1',
  `alterarnumeroatendimentonaconta` tinyint(1) DEFAULT NULL,
  `documentopadraoconta` varchar(20) DEFAULT NULL,
  `exigirsenhaliberarconferencia` tinyint(1) DEFAULT '1',
  `atalholicitacao` tinyint(1) DEFAULT NULL,
  `senhaaofaturarnotafiscal` tinyint(1) DEFAULT NULL,
  `liberacondicionalnocadastrodocliente` tinyint(1) DEFAULT '1',
  `totaisnatelaatendimentosquandohouverpesquisa` tinyint(1) DEFAULT NULL,
  `habilitarcombovendedor` tinyint(1) DEFAULT NULL,
  `atalhocanvas` tinyint(1) DEFAULT NULL,
  `gestaoescolar` tinyint(1) DEFAULT NULL,
  `pet` varchar(3) DEFAULT 'N',
  `emailobrigatoriocliente` tinyint(1) DEFAULT '1',
  `gestaoorcamentostotalservicos` tinyint(1) DEFAULT '1',
  `gestaoorcamentostotalprodutos` tinyint(1) DEFAULT '1',
  `gestaoorcamentostotalnota` tinyint(1) DEFAULT '1',
  `destacaragendamento` tinyint(1) DEFAULT '1',
  `copiarclientesintegracaofilial` tinyint(1) DEFAULT '1',
  `copiarprodutosintegracaofilial` tinyint(1) DEFAULT '1',
  `copiaratendimentosintegracaofilial` tinyint(1) DEFAULT '1',
  `copiarmovimentoestoqueintegrcaofilial` tinyint(1) DEFAULT '1',
  `copiarcontasreceberintegracaofilial` tinyint(1) DEFAULT '1',
  `copiaranotacoesprodutosintegracaofilial` tinyint(1) DEFAULT '1',
  `destinocomprovante` varchar(100) DEFAULT NULL,
  `contratosimobiliarios` tinyint(1) DEFAULT '0',
  `subgrupoclientesavisualizar` varchar(50) DEFAULT NULL,
  `acaoaoexcluiritem` varchar(15) DEFAULT NULL,
  `liberaexclusaodeitensparaoutrousuario` tinyint(1) DEFAULT '0',
  `guiacte` tinyint(1) DEFAULT '0',
  `atalhocte` tinyint(1) DEFAULT '0',
  `atalhomdfe` tinyint(1) DEFAULT '0',
  `criaratendimento` tinyint(1) DEFAULT '1',
  `atalhovalepresente` varchar(3) DEFAULT 'NÃO',
  `oquefazercancelarcomandas` varchar(50) DEFAULT 'Nada',
  `liberacancelarcomandas` tinyint(1) DEFAULT '1',
  `debitoautomatico` tinyint(1) DEFAULT '0',
  `atalhoconsertos` tinyint(1) DEFAULT '0',
  `documentossistema` varchar(3) DEFAULT 'N',
  `atendimentodocumentoselecionar` tinyint(1) DEFAULT '0',
  `atendimentosoperacoesproducao` tinyint(1) DEFAULT '0',
  `modificarcomposicaoaoadditem` tinyint(1) DEFAULT '1',
  `selecionartabelaespecificaadditem` tinyint(1) DEFAULT '0',
  `atendimentosoperacoesosrelogiosoptica` tinyint(1) DEFAULT '0',
  `atendimentosoperacoesjoias` tinyint(1) DEFAULT '0',
  `atendimentosoperacoesoptica` tinyint(1) DEFAULT '0',
  `auditoriadocumentosfiscais` tinyint(1) DEFAULT '0',
  `oquefazeraoexcluiritemvenda` varchar(20) DEFAULT NULL,
  `oquefazerlimiteexcedidoitemvenda` varchar(20) DEFAULT NULL,
  `entregafutura` tinyint(1) DEFAULT '0',
  `indicadores` tinyint(1) DEFAULT '0',
  `concluircontatonaagenda` tinyint(1) DEFAULT '1',
  `tipodejuronaquitacao` tinyint(1) DEFAULT '0',
  `bloqueardescricaodoprodutonoatendimento` tinyint(1) DEFAULT '0',
  `oquefazerclientebloqueadoaogerarnota` varchar(20) DEFAULT NULL,
  `comissaodeprodutosporvendedores` tinyint(1) DEFAULT '0',
  `atendimentosoperacoesproducao2` tinyint(1) DEFAULT '0',
  `academicocertificados` tinyint(1) DEFAULT '0',
  `academicocancelamentos` tinyint(1) DEFAULT '0',
  `academicotrancamentos` tinyint(1) DEFAULT '0',
  `estruturaanaliticaprodutos` tinyint(1) DEFAULT '0',
  `finalizaracompanhamentodeentrega` tinyint(1) DEFAULT '1',
  `desbloquearacompanhamentodeentrega` tinyint(1) DEFAULT '1',
  `oquefazervendasaprazo` varchar(20) DEFAULT 'Nada',
  `liberavendasaprazoparaoutrosusuarios` tinyint(1) DEFAULT '1',
  `liberapedidonocadastrodocliente` tinyint(1) DEFAULT '1',
  `gestordeordemdeproducao` tinyint(1) DEFAULT '0',
  `atalhocontroledepublico` tinyint(1) DEFAULT '0',
  `cadastrodeferiados` tinyint(1) DEFAULT '0',
  `atendimentosoperacoescontratos` tinyint(1) DEFAULT '0',
  `contratosacupuntura` tinyint(1) DEFAULT '0',
  `contratoscosmetoeestetica` tinyint(1) DEFAULT '0',
  `contratoscursos1000` tinyint(1) DEFAULT '0',
  `contratoscursos` tinyint(1) DEFAULT '0',
  `contratosdermato` tinyint(1) DEFAULT '0',
  `contratosergonomia` tinyint(1) DEFAULT '0',
  `contratosterapiaintensiva` tinyint(1) DEFAULT '0',
  `contratosterapiasmanuais` tinyint(1) DEFAULT '0',
  `atalhoconsultaprecos` tinyint(1) DEFAULT '0',
  `contratosfarmaciaestetica` tinyint(1) DEFAULT '0',
  `contratosbiomedicina` tinyint(1) DEFAULT '0',
  `operacoesrecibolocacaobemmovel` tinyint(1) DEFAULT '0',
  `contratostodososcursos` tinyint(1) DEFAULT '0',
  `contratosunificado` tinyint(1) DEFAULT '0',
  `contratosunificados1` tinyint(1) DEFAULT '0',
  `contratosunificados2` tinyint(1) DEFAULT '0',
  `operacoesfaturar` tinyint(1) DEFAULT '0',
  `atalhocontratos` tinyint(1) DEFAULT '0',
  `exibirinformacoesadicionaisatendimento` tinyint(1) DEFAULT '1',
  `desabilitarbotaosalvaratendimento` tinyint(1) DEFAULT '0',
  `operacoesgerarboletosdamatricula` tinyint(1) DEFAULT '0',
  `cadastrodeobservacoes` tinyint(1) DEFAULT '1',
  `bloqueioversatil` tinyint(1) DEFAULT '0',
  `atalhointegracaofiliais` tinyint(1) DEFAULT '0',
  `academicorelatorioslucratividade` tinyint(1) DEFAULT '0',
  `operacoesosseguradoras` tinyint(1) DEFAULT '0',
  `atendimentosoperacoesfragmentar` tinyint(1) DEFAULT '0',
  `gestaodeprocessos` tinyint(1) DEFAULT '0',
  `operacoesseguradorasagendamento` tinyint(1) DEFAULT '0',
  `operacoesseguradorasnegociacao` tinyint(1) DEFAULT '0',
  `operacoesseguradorasatendimento` tinyint(1) DEFAULT '0',
  `atalhopesquisaseguradoras` tinyint(1) DEFAULT '0',
  `exibirgraficoempresalogada` tinyint(1) DEFAULT '0',
  `atalhoprofessores` tinyint(1) DEFAULT '0',
  `modificarvencimentocarnes` tinyint(1) DEFAULT '0',
  `atalhofidelidade` tinyint(1) DEFAULT '0',
  `atalhonovopedido` tinyint(1) DEFAULT '0',
  `ocultarsubtotalatendimentos` tinyint(1) DEFAULT '0',
  `ocultardescontoatendimentos` tinyint(1) DEFAULT '0',
  `emailusuario` varchar(100) DEFAULT NULL,
  `enviaremailtecnicoatravesdaagenda` tinyint(1) DEFAULT '0',
  `modificaprodutoadditensatendimento` tinyint(1) DEFAULT '0',
  `excluiretapacanvas` tinyint(1) DEFAULT '1',
  `atalhojornadas` tinyint(1) DEFAULT '0',
  `atalhopedidomatriz` tinyint(1) DEFAULT '0',
  `custorealadicionaritematendimento` tinyint(1) DEFAULT '0',
  `customercadoriaadicionaritematendimento` tinyint(1) DEFAULT '0',
  `selecionado` varchar(1) DEFAULT NULL,
  `oquefazerestoquezerado` varchar(10) DEFAULT 'Nada',
  `liberavendaestoquezerado` tinyint(1) DEFAULT '0',
  `editartabelaaoadditematendimento` tinyint(1) DEFAULT '0',
  `ocultarpercentualtabelaprecos` tinyint(1) DEFAULT '0',
  `ocultartabelaadditens` tinyint(1) DEFAULT '0',
  `iconeboletocontasreceber` tinyint(1) DEFAULT '1',
  `exibirpraticadonalista` tinyint(1) DEFAULT '1',
  `exibirpraticado2nalista` tinyint(1) DEFAULT '1',
  `exibirpraticado3nalista` tinyint(1) DEFAULT '1',
  `negociacaoouro` varchar(3) DEFAULT NULL,
  `atalhonegociacaoouro` tinyint(1) DEFAULT '0',
  `alterarcustomercadoriaadicionaritematendimento` tinyint(1) DEFAULT '0',
  `alterarvalormercadoriaadicionaritematendimento` tinyint(1) DEFAULT '1',
  `habilitardesabilitardescontonanota` tinyint(1) DEFAULT '1',
  `atalhopesquisarcomandas` tinyint(1) DEFAULT '0',
  `operacoesordemproducaoestrutural` tinyint(1) DEFAULT '0',
  `ocultartotalatendimentos` tinyint(1) DEFAULT '0',
  `ocultarvaloresgridnoatendimento` tinyint(1) DEFAULT '0',
  `ocultarvaloresaoadicionaritemnoatendimento` tinyint(1) DEFAULT '0',
  `importararquivos` tinyint(1) DEFAULT '0',
  `cheque` varchar(3) DEFAULT 'N',
  `atalhopedidosapp` tinyint(1) DEFAULT '0',
  `atalhogestaoequipamentos` tinyint(1) DEFAULT '0',
  `atalhogestaoautorizados` tinyint(1) DEFAULT '0',
  `modeloagenda1` varchar(10) DEFAULT 'Modelo 1',
  `contasrecebermenuenviaemailboleto` tinyint(1) DEFAULT '0',
  `preferenciaordemcontascontabeis` varchar(20) DEFAULT NULL,
  `atalhoapontamentos` tinyint(1) DEFAULT '0',
  `atalhopedidossite` tinyint(1) DEFAULT '0',
  `faturamentoocultarpdesconto` tinyint(1) DEFAULT '0',
  `faturamentoocultarvalordesconto` tinyint(1) DEFAULT '0',
  `faturamentoocultarauxiliar` tinyint(1) DEFAULT '0',
  `itensdoisocultardesconto` tinyint(1) DEFAULT '0',
  `itensdoisocultarauxiliar` tinyint(1) DEFAULT '0',
  `contratosunificado2` tinyint(1) DEFAULT '0',
  `atalhoacertoestoque` tinyint(1) DEFAULT '0',
  `movimentocontabilsomenteempresalogada` tinyint(1) DEFAULT '0',
  `dresomenteempresalogada` tinyint(1) DEFAULT '0',
  `atalhosolicitacaocompra` tinyint(1) DEFAULT '0',
  `atalhoprocessarestoques` tinyint(1) DEFAULT '0',
  `processarestoquerelatorioseoperacoes` tinyint(1) DEFAULT '1',
  `ocultarfornecedorprincipalprodutos` tinyint(1) DEFAULT '0',
  `operacoeschecklist` tinyint(1) DEFAULT '0',
  `exibircmvlistaitensatendimentos` tinyint(1) DEFAULT '0',
  `exeibirlucrodoatendimento` tinyint(1) DEFAULT '0',
  `modificaroperacaoatendimentofaturado` tinyint(1) DEFAULT '0',
  `dashboarddovendedorpadrao` tinyint(1) DEFAULT '0',
  `controleseries` tinyint(1) DEFAULT '0',
  `somentoenviaconsertosempresalogada` tinyint(1) DEFAULT '1',
  `manifestacaodestinatario` tinyint(1) DEFAULT '0',
  `operacoescarregarlotes` tinyint(1) DEFAULT '0',
  `acompanhamentodeatendimentossomentemepresalogada` tinyint(1) DEFAULT '0',
  `grade` varchar(3) DEFAULT 'N',
  `atalhosangria` tinyint(1) DEFAULT '0',
  `atalhosuprimento` tinyint(1) DEFAULT '0',
  `cancelartodasascontasdalista` tinyint(1) DEFAULT '0',
  `trocamercadoria` tinyint(1) DEFAULT '0',
  `atalhotransferenciasaida` tinyint(1) DEFAULT '0',
  `teleentrega` tinyint(1) DEFAULT '0',
  `enviaatendimentoparaoutraempresa` tinyint(1) DEFAULT '1',
  `selecionarbancodedadossolicitacaocompra` tinyint(1) DEFAULT '1',
  `tabelasolicitacaocompra` varchar(50) DEFAULT 'Valor Mercadoria',
  `atalhotrocamercadoria` tinyint(1) DEFAULT '0',
  `mudartabelaprecosnavendaseinformadanocliente` tinyint(1) DEFAULT '1',
  `tabelatransferencia` varchar(50) DEFAULT NULL,
  `acaoiconeprazoatendimentoitens2` varchar(50) DEFAULT 'Faturar a Prazo',
  `atendimentodocumentobaixamateriaprima` tinyint(1) DEFAULT '0',
  `usarprecopromocao` tinyint(1) DEFAULT '1',
  `exibirpraticado4nalista` tinyint(1) DEFAULT '0',
  `solicitacaodecomprasomentedaempresalogada` tinyint(1) DEFAULT '0',
  `trocarempresanorecebimento` tinyint(1) DEFAULT '0',
  `liberaapontamentoproducaoparasetorforadasequencia` tinyint(1) DEFAULT '0',
  `auditoriaestoque` varchar(20) DEFAULT 'NÃO',
  `inventarioestoquesomenteempresalogada` tinyint(1) DEFAULT '0',
  `atendimentosremoveitemporcodigo` tinyint(1) DEFAULT '0',
  `validardadosobrigatorioscolaborador` tinyint(1) DEFAULT '1',
  `alterarpraticadoscadastroproduto` tinyint(1) DEFAULT '1',
  `copiarrecortaratendimentos` tinyint(1) DEFAULT '1',
  `alterarempresadoatendimentonaofaturado` tinyint(1) DEFAULT '1',
  `abriratendimentosemprocessamento` tinyint(1) DEFAULT '1',
  `marcaratendimentocomonaofaturado` tinyint(1) DEFAULT '1',
  `solicitarsenhadashboard` tinyint(1) DEFAULT '0',
  `editarorigemmovimentoestoque` tinyint(1) DEFAULT '0',
  `contratosoncologia` tinyint(1) DEFAULT '0',
  `atalhoremessasaida` tinyint(1) DEFAULT '0',
  `alterardataimpressaorecibo` tinyint(1) DEFAULT '0',
  `grupopadraopesquisaprodutos` varchar(20) DEFAULT NULL,
  `informacoesdolotelistaprodutos` tinyint(1) DEFAULT '0',
  `solicitasenhadescontocadaitem` tinyint(1) DEFAULT '1',
  `atalhointegracaorocky` tinyint(1) DEFAULT '0',
  `atalholotes` tinyint(1) DEFAULT '0',
  `encargosnaquitacao` tinyint(1) DEFAULT '0',
  `bloquearnumerodocumentoabrirconta` tinyint(1) DEFAULT '0',
  `gestorfiscal` tinyint(1) DEFAULT '0',
  `variacoes` varchar(20) DEFAULT NULL,
  `importacaoemmassa` tinyint(1) DEFAULT '0',
  `beneficiofiscal` varchar(3) DEFAULT 'N',
  `recortarchavedeacesso` tinyint(1) DEFAULT '1',
  `pesquisarprodutosapenasdotiponoatendimento` varchar(50) DEFAULT 'Todos',
  `consultanfedestinadas` tinyint(1) DEFAULT '0',
  `faturarvariosatendimentos` tinyint(1) DEFAULT '0',
  `faturarvendaisento` tinyint(1) DEFAULT '0',
  `excluirantecipacaoatendimentos` tinyint(1) DEFAULT '0',
  `bloquearfaturamentoatendimentonaoconferido` tinyint(1) DEFAULT '0',
  `atalhoposvenda` tinyint(1) DEFAULT '0',
  `atalhomapadecarga` tinyint(1) DEFAULT '0',
  `preferenciaordemgestaoservicos` varchar(50) DEFAULT 'Entrada Crescente',
  `limitefaturamentoatendimentos` varchar(20) DEFAULT NULL,
  `validaprazomaximodocumento` tinyint(1) DEFAULT '1',
  `mudarperspectivaconta` tinyint(1) DEFAULT '1',
  `atalhogestaoestoquenoatendimento` tinyint(1) DEFAULT '0',
  `recebimentoporcodigo` tinyint(1) DEFAULT '1',
  `antecipacaorecebiveis` tinyint(1) DEFAULT '1',
  `recebimentofacilitado` tinyint(1) DEFAULT '1',
  `gestaocobrancas` tinyint(1) DEFAULT '1',
  `exibirenviadoecommercelistaprodutos` tinyint(1) DEFAULT '0',
  `gtin14` varchar(3) DEFAULT NULL,
  `atalhoimpressaoavisos` tinyint(1) DEFAULT '0',
  `abriratendimentoscancelados` tinyint(1) DEFAULT '1',
  `modificarestoquemanual` tinyint(1) DEFAULT '1',
  `cadastrorapidocolaboradores` tinyint(1) DEFAULT '0',
  `editarpercentualdescontoauxiliarfaturamento` tinyint(1) DEFAULT '0',
  `exibirclientessemvendedorquandoversomenteseusclientes` tinyint(1) DEFAULT '0',
  `antecipacaoatendimento` tinyint(1) DEFAULT '1',
  `parcelasacrescimos` tinyint(1) DEFAULT '0',
  `bloquearalteracaodeinativoparaativo` tinyint(1) DEFAULT '0',
  `naoselecionarcolaboradorinativonoatendimento` tinyint(1) DEFAULT '0',
  `exibiravisocreditoatendimento` tinyint(1) DEFAULT '1',
  `atalhoconsolidacaofiliais` tinyint(1) DEFAULT '0',
  `acaoatendimentosemlotes` varchar(20) DEFAULT NULL,
  `acaoitemsemlote` varchar(20) DEFAULT NULL,
  `pesquisarapidacolaboradores` tinyint(1) DEFAULT '0',
  `observacoes` text,
  `vendaabaixodocustomercadoria` tinyint(1) DEFAULT '1',
  `produtosdesabilitardiferencaicms` tinyint(1) DEFAULT '0',
  `atendimentosfaturamentorateio` tinyint(1) DEFAULT '0',
  `exibirdevolucao` tinyint(1) DEFAULT '1',
  `incluirremoverajustesauditoria` tinyint(1) DEFAULT '0',
  `grupocomercial` varchar(50) DEFAULT NULL,
  `acomptabatendimentos` tinyint(1) DEFAULT '1',
  `acomptabrelatorios` tinyint(1) DEFAULT '1',
  `acomptabauditoria` tinyint(1) DEFAULT '1',
  `acomptabreposicao` tinyint(1) DEFAULT '1',
  `acomptaboperacoesadicionais` tinyint(1) DEFAULT '1',
  `acomptabinclusoes` tinyint(1) DEFAULT '1',
  `acomptabretiradas` tinyint(1) DEFAULT '1',
  `acomptabitens` tinyint(1) DEFAULT '1',
  `acomptabsaldoitens` tinyint(1) DEFAULT '1',
  `acomptablicitacao` tinyint(1) DEFAULT '1',
  `atalhopdv` tinyint(1) DEFAULT '0',
  `atalhopdvlista` tinyint(1) DEFAULT '0',
  `gerenciadordecreditos` tinyint(1) DEFAULT '1',
  `alterartipocontribuintedoatendmento` tinyint(1) DEFAULT '0',
  `atendimentofaturamentodevolucoes` tinyint(1) DEFAULT '0',
  `visualizarprodutossomenteempresalogada` tinyint(1) DEFAULT '0',
  `mudarstatusentreguelistaatendimentos` tinyint(1) DEFAULT '0',
  `alterarvalorunitarioaoadditem` tinyint(1) DEFAULT '1',
  `lancarcreditoscolaboradores` tinyint(1) DEFAULT '1',
  `computadores` tinyint(1) DEFAULT '0',
  `lancarnovomovimentocontabil` tinyint(1) DEFAULT '1',
  `fragmentaritensorcamentocentrodecusto` tinyint(1) DEFAULT '0',
  `avaliacaodeclientes` tinyint(1) DEFAULT '0',
  `enviaravaliacaoatendimento` tinyint(1) DEFAULT '0',
  `ramal` varchar(10) DEFAULT NULL,
  `modificarsituacaocolaborador` tinyint(1) DEFAULT '1',
  `modificarbloqueiocolaborador` tinyint(1) DEFAULT '1',
  `gerarcteviaxml` tinyint(1) DEFAULT '0',
  `adicionaritemenvioconserto` tinyint(1) DEFAULT '1',
  `editarvmvcmvprodutos` tinyint(1) DEFAULT '0',
  `atalhocpfcnpj` tinyint(1) DEFAULT '0',
  `enviarclientesintegracaofilial` tinyint(1) DEFAULT '1',
  `enviarvendasintegracaofilial` tinyint(1) DEFAULT '1',
  `ecommerce1integracaofilial` tinyint(1) DEFAULT '1',
  `ecommerce2integracaofilial` tinyint(1) DEFAULT '1',
  `ecommerce3integracaofilial` tinyint(1) DEFAULT '1',
  `versatilmobileintegracaofilial` tinyint(1) DEFAULT '1',
  `copiargruposintegracaofilial` tinyint(1) DEFAULT '1',
  `copiarmarcasintegracaofilial` tinyint(1) DEFAULT '1',
  `copiarcolecoesintegracaofilial` tinyint(1) DEFAULT '1',
  `copiarcoresintegracaofilial` tinyint(1) DEFAULT '1',
  `copiartamanhosintegracaofilial` tinyint(1) DEFAULT '1',
  `copiarramosdeatividadeintegracaofilial` tinyint(1) DEFAULT '1',
  `copiarsetoresintegracaofilial` tinyint(1) DEFAULT '1',
  `copiardepartamentosintegracaofilial` tinyint(1) DEFAULT '1',
  `criarprodutosintegracaofilial` tinyint(1) DEFAULT '1',
  `apagarmovimentoestoqueintegracaofilial` tinyint(1) DEFAULT '1',
  `apagarhistoricointegracaofilial` tinyint(1) DEFAULT '1',
  `apagarcontasintegracaofilial` tinyint(1) DEFAULT '1',
  `apagarprodutosintegracaofilial` tinyint(1) DEFAULT '1',
  `apagarcolaboradoresintegracaofilial` tinyint(1) DEFAULT '1',
  `chatwhatsinstancia` varchar(100) DEFAULT NULL,
  `chatwhasttoken` varchar(100) DEFAULT NULL,
  `chatwhatsusuario` varchar(100) DEFAULT NULL,
  `desabilitaratualizarprodutosimportarxml` tinyint(1) DEFAULT '0',
  `atalhorobo` tinyint(1) DEFAULT '0',
  `cadastrarnaturezadaoperacao` tinyint(1) DEFAULT '0',
  `verasvendasdosoutrosusuarioscolababa3` tinyint(1) DEFAULT '1',
  `operacoescomplemento` tinyint(1) DEFAULT '0',
  `consultarcontasfilial` tinyint(1) DEFAULT '0',
  `gestaoentregas` tinyint(1) DEFAULT '0',
  `gnre` tinyint(1) DEFAULT '0',
  `permitirfaturamentoforadomes` tinyint(1) DEFAULT '1',
  `lucrorealitensatendimentos` tinyint(1) DEFAULT '0',
  `menufiscal` tinyint(1) DEFAULT '0',
  `lancamentofiscal` tinyint(1) DEFAULT '0',
  `atalhopainelos` tinyint(1) DEFAULT '0',
  `atalhoopencart` tinyint(1) DEFAULT '0',
  `vergraficodemetasvendedores` tinyint(1) DEFAULT '0',
  `descontoadicionalatendimento` tinyint(1) DEFAULT '0',
  `usarumaunicaveztabelaigualatabelacd` tinyint(1) DEFAULT '0',
  `atalhodashboards` tinyint(1) DEFAULT '0',
  `atalhogestaocontatos` tinyint(1) DEFAULT '0',
  `atalhocentrodecusto` tinyint(1) DEFAULT '0',
  `cadastroestoques` varchar(3) DEFAULT 'N',
  `atalhoconsultaitensvendidos` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuarioscancelardocumentos
CREATE TABLE IF NOT EXISTS `usuarioscancelardocumentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuariosempresas
CREATE TABLE IF NOT EXISTS `usuariosempresas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuariosempresasacessoestoque
CREATE TABLE IF NOT EXISTS `usuariosempresasacessoestoque` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuariosempresasprocessarestoque
CREATE TABLE IF NOT EXISTS `usuariosempresasprocessarestoque` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuariosetiquetas
CREATE TABLE IF NOT EXISTS `usuariosetiquetas` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `etiqueta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuariossequenciadocumentos
CREATE TABLE IF NOT EXISTS `usuariossequenciadocumentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `documentoorigem` varchar(100) DEFAULT NULL,
  `documentodestino` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.usuariotelarelatorios
CREATE TABLE IF NOT EXISTS `usuariotelarelatorios` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `codigorelatorio` varchar(50) DEFAULT NULL,
  `nomerelatorio` varchar(300) DEFAULT NULL,
  `nomerelatoriocliente` varchar(300) DEFAULT NULL,
  `favorito` tinyint(1) DEFAULT NULL,
  `tela` varchar(50) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.valepresente
CREATE TABLE IF NOT EXISTS `valepresente` (
  `codigo` varchar(50) NOT NULL,
  `codigocliente` varchar(65) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `numerocartao` varchar(50) NOT NULL,
  `observacao` varchar(150) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `datalancamento` date NOT NULL,
  `datavalidade` date DEFAULT NULL,
  `datautilizacao` date DEFAULT NULL,
  `valorutilizado` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `destinatario` varchar(65) DEFAULT NULL,
  `telefonecliente` varchar(20) DEFAULT NULL,
  `telefonedestinatario` varchar(20) DEFAULT NULL,
  `condicaopagamento` varchar(20) DEFAULT NULL,
  `tipodocumento` varchar(20) DEFAULT NULL,
  `codigocolaborador` varchar(20) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.valepresenteutilizacao
CREATE TABLE IF NOT EXISTS `valepresenteutilizacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `valepresente` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `atendimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.variacoes
CREATE TABLE IF NOT EXISTS `variacoes` (
  `codigo` varchar(50) NOT NULL,
  `variacao` varchar(50) DEFAULT NULL,
  `incluirnadescricao` tinyint(1) DEFAULT '1',
  `tipovariacao` varchar(50) DEFAULT 'MÃºltipla SeleÃ§Ã£o',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.variacoesvalores
CREATE TABLE IF NOT EXISTS `variacoesvalores` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `variacao` varchar(50) DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.vazoes
CREATE TABLE IF NOT EXISTS `vazoes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `vazao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.veiculos
CREATE TABLE IF NOT EXISTS `veiculos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `veiculo` varchar(50) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `ufplaca` varchar(50) DEFAULT NULL,
  `tipocarroceria` varchar(50) DEFAULT NULL,
  `tiporodado` varchar(50) DEFAULT NULL,
  `tipoveiculo` varchar(50) DEFAULT NULL,
  `proprietario` varchar(50) DEFAULT NULL,
  `capacidadem3` varchar(50) DEFAULT NULL,
  `capacidadekg` varchar(50) DEFAULT NULL,
  `tara` varchar(50) DEFAULT NULL,
  `renavam` varchar(50) DEFAULT NULL,
  `lota` varchar(50) DEFAULT NULL,
  `rntrc` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `tipoproprietario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.veiculos2
CREATE TABLE IF NOT EXISTS `veiculos2` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `proprietario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.veiculoscolaboradores
CREATE TABLE IF NOT EXISTS `veiculoscolaboradores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `colaborador` varchar(20) DEFAULT NULL,
  `modelo` varchar(60) DEFAULT NULL,
  `marca` varchar(25) DEFAULT NULL,
  `anofabricacao` varchar(10) DEFAULT NULL,
  `anomodelo` varchar(10) DEFAULT NULL,
  `motor` varchar(10) DEFAULT NULL,
  `potencia` varchar(10) DEFAULT NULL,
  `cilindradas` varchar(10) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `cor` varchar(25) DEFAULT NULL,
  `chassi` varchar(60) DEFAULT NULL,
  `renavam` varchar(60) DEFAULT NULL,
  `numeromotor` varchar(60) DEFAULT NULL,
  `acessorios` varchar(300) DEFAULT NULL,
  `combustivel` varchar(10) DEFAULT NULL,
  `portas` varchar(2) DEFAULT NULL,
  `observacoes` varchar(300) DEFAULT NULL,
  `numeroveiculofrota` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tipodirecao` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.visualizadordeimagens
CREATE TABLE IF NOT EXISTS `visualizadordeimagens` (
  `codigo` varchar(50) DEFAULT NULL,
  `colaborador` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `observacoes` varchar(5000) DEFAULT NULL,
  `diretorioorigem` varchar(5000) DEFAULT NULL,
  `diretoriodestino` varchar(5000) DEFAULT NULL,
  KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
-- Copiando estrutura para tabela sistemaversatil_dbtest.visualizadordeimagensitens
CREATE TABLE IF NOT EXISTS `visualizadordeimagensitens` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `visualizador` varchar(50) DEFAULT NULL,
  `nomeimagem` varchar(100) DEFAULT NULL,
  `miniatura` blob,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ExportaÃ§Ã£o de dados foi desmarcado.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
