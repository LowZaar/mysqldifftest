
ALTER TABLE `sistemaversatil`.`atendimentosfaturamento` 
  CHANGE COLUMN observacao observacao varchar(100) NULL DEFAULT 'NULL';


ALTER TABLE `sistemaversatil`.`centrodecustosorcamento` 
  CHANGE COLUMN descricaoformatada descricaoformatada varchar(200) NULL DEFAULT 'NULL' AFTER descricao, 
  CHANGE COLUMN unidade unidade varchar(10) NULL DEFAULT 'NULL' AFTER descricaoformatada, 
  CHANGE COLUMN hierarquiaformatada hierarquiaformatada varchar(200) NULL DEFAULT 'NULL', 
  CHANGE COLUMN descricao descricao varchar(100) NULL DEFAULT 'NULL', 
  CHANGE COLUMN codigogrupo codigogrupo varchar(50) NULL DEFAULT 'NULL';


ALTER TABLE `sistemaversatil`.`configuracoesdois` 
  DROP COLUMN gerarobspadraoordemserviçoaoclicaremnovo, 
  ADD COLUMN gerarobspadraoordemserviÃ§oaoclicaremnovo tinyint(1) NULL DEFAULT '0' AFTER usarcodigoadicionalparavendarapida, 
  CHANGE COLUMN datadeemissaoquitacaoparcial datadeemissaoquitacaoparcial varchar(50) NULL DEFAULT '\'Data QuitaÃ§Ã£o\', 
  CHANGE COLUMN captiondocumentoemprestimos captiondocumentoemprestimos varchar(50) NULL DEFAULT '\'10 - EmprÃ©stimos\', 
  CHANGE COLUMN captiondocumentopromocao captiondocumentopromocao varchar(50) NULL DEFAULT '\'4 - PromoÃ§Ã£o\', 
  CHANGE COLUMN diretorioexportacaoarquivosite diretorioexportacaoarquivosite varchar(100) NULL DEFAULT '\'C:\\\\ERP VersÃ¡til\\\\ExportaÃ§Ã£o.txt\', 
  CHANGE COLUMN padraostatusdocumentoaocriar padraostatusdocumentoaocriar varchar(50) NULL DEFAULT '\'Em NegociaÃ§Ã£o\', 
  CHANGE COLUMN regracompra regracompra varchar(50) NULL DEFAULT '\'MÃ­nimo Atingido\', 
  CHANGE COLUMN nomeimagemproduto nomeimagemproduto varchar(50) NULL DEFAULT '\'CÃ³digo\', 
  CHANGE COLUMN tipoprocessarestoque tipoprocessarestoque varchar(20) NULL DEFAULT '\'OperaÃ§Ãµes\', 
  CHANGE COLUMN linkautorizacaopedidoonline linkautorizacaopedidoonline varchar(100) NULL DEFAULT '\'http://sistemaversatil_dbtest.com.br/atualiza/\', 
  CHANGE COLUMN modelovalepresente modelovalepresente varchar(50) NULL DEFAULT '\'PÃ¡gina Inteira\';


ALTER TABLE `sistemaversatil`.`configuracoestres` 
  CHANGE COLUMN diretorioimportacaoemmassa diretorioimportacaoemmassa varchar(255) NULL DEFAULT '\'C:\\\\ERP VersÃ¡til\\\\XML-Nfe\', 
  CHANGE COLUMN sicoobaceite sicoobaceite varchar(5) NULL DEFAULT '\'NÃO\', 
  CHANGE COLUMN statuspadraoposvendas statuspadraoposvendas varchar(50) NULL DEFAULT '\'ConcluÃ­do\', 
  CHANGE COLUMN metodogeracaonfse metodogeracaonfse varchar(50) NULL DEFAULT '\'??? Nfse\', 
  CHANGE COLUMN tipoimpressaocomposicao tipoimpressaocomposicao varchar(50) NULL DEFAULT '\'ComposiÃ§Ã£o Modelo 2\', 
  CHANGE COLUMN diretorioxmldestinatario diretorioxmldestinatario varchar(500) NULL DEFAULT '\'C:\\\\ERP VersÃ¡til\\\\XML-Download\\\\\';


ALTER TABLE `sistemaversatil`.`consultanfedestinatario` 
AUTO_INCREMENT=425;


ALTER TABLE `sistemaversatil`.`contas` 
AUTO_INCREMENT=5361551;


ALTER TABLE `sistemaversatil`.`contasrateio` 
  CHANGE COLUMN tmpcodigoconta tmpcodigoconta varchar(20) NULL DEFAULT 'NULL', 
  CHANGE COLUMN grupoorcamentocentrodecusto grupoorcamentocentrodecusto varchar(20) NULL DEFAULT 'NULL';


ALTER TABLE `sistemaversatil`.`contastmp` 
AUTO_INCREMENT=498;


ALTER TABLE `sistemaversatil`.`contatos` 
  CHANGE COLUMN contatopai contatopai varchar(50) NULL DEFAULT 'NULL', 
  CHANGE COLUMN prioridade prioridade varchar(50) NULL DEFAULT 'NULL', 
  CHANGE COLUMN substatus substatus varchar(100) NULL DEFAULT 'NULL', 
AUTO_INCREMENT=609764;


ALTER TABLE `sistemaversatil`.`contatositens` 
AUTO_INCREMENT=2;


ALTER TABLE `sistemaversatil`.`contatosocorrencias` 
AUTO_INCREMENT=155163;


ALTER TABLE `sistemaversatil`.`contatosocorrenciasanexos` 
AUTO_INCREMENT=12;


ALTER TABLE `sistemaversatil`.`contatosusuarios` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`conversaodecfop` 
AUTO_INCREMENT=8;


ALTER TABLE `sistemaversatil`.`conversorunidades` 
AUTO_INCREMENT=15;


ALTER TABLE `sistemaversatil`.`cotacoes` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`creditocolaboradores` 
AUTO_INCREMENT=1159;


ALTER TABLE `sistemaversatil`.`danfefatura` 
AUTO_INCREMENT=34799;


ALTER TABLE `sistemaversatil`.`danfeitens` 
AUTO_INCREMENT=528452;


ALTER TABLE `sistemaversatil`.`devolucaocondicional` 
AUTO_INCREMENT=7;


ALTER TABLE `sistemaversatil`.`diretoriosbackup` 
AUTO_INCREMENT=6;


ALTER TABLE `sistemaversatil`.`enderecoscolaboradores` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`estados` 
  ADD INDEX codigo (codigo), 
  ADD COLUMN codigo int(11) NOT NULL AFTER empresa, 
AUTO_INCREMENT=36;


ALTER TABLE `sistemaversatil`.`historicopontuacao` 
AUTO_INCREMENT=13883;


ALTER TABLE `sistemaversatil`.`indices` 
AUTO_INCREMENT=2;


ALTER TABLE `sistemaversatil`.`inutilizacoesnfe` 
AUTO_INCREMENT=2;


ALTER TABLE `sistemaversatil`.`itensatendimentosvariacoesvalores` 
  CHANGE COLUMN valor valor varchar(50) NULL DEFAULT '\'\', 
AUTO_INCREMENT=1799;


ALTER TABLE `sistemaversatil`.`manifestacaodestinatario` 
AUTO_INCREMENT=9;


ALTER TABLE `sistemaversatil`.`mapadecargaatendimentos` 
AUTO_INCREMENT=14;


ALTER TABLE `sistemaversatil`.`mapadecargaenvioproducao` 
AUTO_INCREMENT=5;


ALTER TABLE `sistemaversatil`.`mdfecondutores` 
AUTO_INCREMENT=12;


ALTER TABLE `sistemaversatil`.`mdfelocalcarregamento` 
AUTO_INCREMENT=8;


ALTER TABLE `sistemaversatil`.`mdfemunicipiodescarregamento` 
AUTO_INCREMENT=11;


ALTER TABLE `sistemaversatil`.`mdfenfe` 
AUTO_INCREMENT=14;


ALTER TABLE `sistemaversatil`.`mdfeufsdopercurso` 
AUTO_INCREMENT=11;


ALTER TABLE `sistemaversatil`.`movimentocontabil` 
AUTO_INCREMENT=1077265;


ALTER TABLE `sistemaversatil`.`movimentoestoque` 
AUTO_INCREMENT=16011846;


ALTER TABLE `sistemaversatil`.`naturezasdaoperacaoicms` 
AUTO_INCREMENT=42;


ALTER TABLE `sistemaversatil`.`ncm` 
AUTO_INCREMENT=100012;


ALTER TABLE `sistemaversatil`.`ncmmva` 
AUTO_INCREMENT=4893;


ALTER TABLE `sistemaversatil`.`notapromissoriaatendimento` 
AUTO_INCREMENT=1;


ALTER TABLE `sistemaversatil`.`observacoes` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`ocorrencias` 
AUTO_INCREMENT=11;


ALTER TABLE `sistemaversatil`.`paises` 
AUTO_INCREMENT=614;


ALTER TABLE `sistemaversatil`.`pdv` 
  DROP PRIMARY KEY, 
  DROP COLUMN hash, 
  ADD PRIMARY KEY(`codigo`), 
  CHANGE COLUMN codigo codigo int(11) NOT NULL FIRST, 
  CHANGE COLUMN status status varchar(20) NULL DEFAULT 'NULL', 
  CHANGE COLUMN atendimento atendimento varchar(20) NULL DEFAULT 'NULL' AFTER valortotal, 
  CHANGE COLUMN codigovendedor codigovendedor varchar(10) NULL DEFAULT 'NULL', 
  CHANGE COLUMN nomecolaborador nomecolaborador varchar(100) NULL DEFAULT 'NULL', 
  CHANGE COLUMN cpfcnpj cpfcnpj varchar(20) NULL DEFAULT 'NULL', 
  CHANGE COLUMN codigocolaborador codigocolaborador varchar(50) NULL DEFAULT 'NULL';


ALTER TABLE `sistemaversatil`.`pdvitens` 
  DROP COLUMN hash, 
  CHANGE COLUMN codigopdv codigopdv varchar(50) NULL DEFAULT 'NULL', 
  CHANGE COLUMN produto produto varchar(150) NULL DEFAULT 'NULL' AFTER codigoproduto, 
  CHANGE COLUMN unidade unidade varchar(10) NULL DEFAULT 'NULL' AFTER quantidade, 
  CHANGE COLUMN codigoproduto codigoproduto varchar(11) NULL DEFAULT 'NULL' AFTER codigopdv, 


ALTER TABLE `sistemaversatil`.`processosequipamentos` 
AUTO_INCREMENT=2;


ALTER TABLE `sistemaversatil`.`processosprodutos` 
AUTO_INCREMENT=1100;


ALTER TABLE `sistemaversatil`.`produtoseservicosanexos` 
AUTO_INCREMENT=893;


ALTER TABLE `sistemaversatil`.`produtoseservicosanotacoes` 
AUTO_INCREMENT=1;


ALTER TABLE `sistemaversatil`.`produtoseservicosequipamentos` 
AUTO_INCREMENT=7;


ALTER TABLE `sistemaversatil`.`produtoseservicosfornecedores` 
AUTO_INCREMENT=54887;


ALTER TABLE `sistemaversatil`.`produtoseservicosvariacoesvalores` 
AUTO_INCREMENT=6390;


ALTER TABLE `sistemaversatil`.`recibos` 
AUTO_INCREMENT=1;


ALTER TABLE `sistemaversatil`.`regracofins` 
AUTO_INCREMENT=6;


ALTER TABLE `sistemaversatil`.`regraicms` 
AUTO_INCREMENT=4839;


ALTER TABLE `sistemaversatil`.`regraipi` 
AUTO_INCREMENT=10;


ALTER TABLE `sistemaversatil`.`regrapis` 
AUTO_INCREMENT=6;


ALTER TABLE `sistemaversatil`.`regrasfiscaiscofins` 
AUTO_INCREMENT=6;


ALTER TABLE `sistemaversatil`.`regrasfiscaisicms` 
AUTO_INCREMENT=69;


ALTER TABLE `sistemaversatil`.`regrasfiscaisipi` 
AUTO_INCREMENT=6;


ALTER TABLE `sistemaversatil`.`regrasfiscaispis` 
AUTO_INCREMENT=6;


ALTER TABLE `sistemaversatil`.`remessassicoob` 
AUTO_INCREMENT=6;


ALTER TABLE `sistemaversatil`.`remessassicredi` 
AUTO_INCREMENT=15;


ALTER TABLE `sistemaversatil`.`retornobanco` 
AUTO_INCREMENT=918;


ALTER TABLE `sistemaversatil`.`retornosicredi` 
AUTO_INCREMENT=19;


ALTER TABLE `sistemaversatil`.`seriesnotas` 
AUTO_INCREMENT=52;


ALTER TABLE `sistemaversatil`.`tipocontribuinte` 
AUTO_INCREMENT=27;


ALTER TABLE `sistemaversatil`.`tmpagenda` 
AUTO_INCREMENT=4;


ALTER TABLE `sistemaversatil`.`tmparquivodeeventos` 
  CHANGE COLUMN operacao operacao varchar(200) NULL DEFAULT 'NULL' AFTER hora, 
  CHANGE COLUMN atendimento atendimento varchar(50) NULL DEFAULT 'NULL' AFTER operacao, 
AUTO_INCREMENT=6;


ALTER TABLE `sistemaversatil`.`tmpatendimentostipodocumento` 
AUTO_INCREMENT=1;


ALTER TABLE `sistemaversatil`.`tmpcomposicao` 
AUTO_INCREMENT=46594;


ALTER TABLE `sistemaversatil`.`tmpcomposicaoimpressao` 
AUTO_INCREMENT=103;


ALTER TABLE `sistemaversatil`.`tmpcomprasatendimentos` 
  CHANGE COLUMN posvendarealizado posvendarealizado varchar(3) NULL DEFAULT '\'NÃO\';


ALTER TABLE `sistemaversatil`.`tmpcontascobrancaemail` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`tmpcontasrelatoriorapido` 
AUTO_INCREMENT=161;


ALTER TABLE `sistemaversatil`.`tmpcontratosdeprecos` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`tmpdespesasfixas` 
AUTO_INCREMENT=1;


ALTER TABLE `sistemaversatil`.`tmpdocumentoentrega` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`tmpdre` 
AUTO_INCREMENT=5184;


ALTER TABLE `sistemaversatil`.`tmpestoquedeposito` 
AUTO_INCREMENT=2;


ALTER TABLE `sistemaversatil`.`tmpestoqueempresas` 
AUTO_INCREMENT=1779022;


ALTER TABLE `sistemaversatil`.`tmpestoquetodasfiliais` 
AUTO_INCREMENT=1;


ALTER TABLE `sistemaversatil`.`tmpfechamentodecaixa` 
AUTO_INCREMENT=277;


ALTER TABLE `sistemaversatil`.`tmpfechamentodecaixacreditos` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`tmpfechamentodecaixaentradas` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`tmpfechamentodecaixasaidas` 
AUTO_INCREMENT=17;


ALTER TABLE `sistemaversatil`.`tmpfluxodecaixa` 
AUTO_INCREMENT=15;


ALTER TABLE `sistemaversatil`.`tmpgestaoentrega` 
AUTO_INCREMENT=10;


ALTER TABLE `sistemaversatil`.`tmpgestorcomercial` 
AUTO_INCREMENT=1;


ALTER TABLE `sistemaversatil`.`tmpgestorestoque` 
AUTO_INCREMENT=2;


ALTER TABLE `sistemaversatil`.`tmpgestorfinanceiro` 
AUTO_INCREMENT=8566;


ALTER TABLE `sistemaversatil`.`tmpgestorposvendas` 
AUTO_INCREMENT=13143;


ALTER TABLE `sistemaversatil`.`tmpgraficodashboards` 
AUTO_INCREMENT=146071;


ALTER TABLE `sistemaversatil`.`tmpimpressaoatendimentos3` 
AUTO_INCREMENT=7732;


ALTER TABLE `sistemaversatil`.`tmpimpressaocontatos` 
AUTO_INCREMENT=3;


ALTER TABLE `sistemaversatil`.`tmpitensnota` 
  DROP COLUMN predbcefet, 
  DROP COLUMN valortotal, 
  DROP COLUMN quantidade, 
  DROP COLUMN unidade, 
  DROP COLUMN valorunitario, 
  DROP COLUMN atendimentohash, 
  DROP COLUMN vfcpstret, 
  DROP COLUMN pst, 
  CHANGE COLUMN cstipi cstipi varchar(4) NULL DEFAULT 'NULL' AFTER vcofins, 
  CHANGE COLUMN itemespecifico itemespecifico varchar(50) NULL DEFAULT 'NULL' AFTER vicmsefet, 
  CHANGE COLUMN codigopdv codigopdv varchar(20) NULL DEFAULT 'NULL', 
  CHANGE COLUMN tipo tipo varchar(50) NULL DEFAULT 'NULL' AFTER codigopdv, 
  CHANGE COLUMN codigoitem codigoitem varchar(20) NULL DEFAULT 'NULL' AFTER codigo, 
  CHANGE COLUMN cprod cprod varchar(20) NULL DEFAULT 'NULL', 
  CHANGE COLUMN utrib utrib varchar(8) NULL DEFAULT 'NULL', 
  CHANGE COLUMN cst cst varchar(4) NULL DEFAULT 'NULL' AFTER ori, 
  CHANGE COLUMN codigoanp codigoanp varchar(50) NULL DEFAULT 'NULL' AFTER itemespecifico, 
  CHANGE COLUMN cstcofins cstcofins varchar(4) NULL DEFAULT 'NULL' AFTER vpis, 
  CHANGE COLUMN ncm ncm varchar(8) NULL DEFAULT 'NULL' AFTER cfop, 
  CHANGE COLUMN ori ori varchar(4) NULL DEFAULT 'NULL' AFTER xprod, 
  CHANGE COLUMN xprod xprod varchar(120) NULL DEFAULT 'NULL' AFTER cprod, 
  CHANGE COLUMN cstpis cstpis varchar(4) NULL DEFAULT 'NULL' AFTER vfcpufdest, 
  CHANGE COLUMN cfop cfop varchar(4) NULL DEFAULT 'NULL' AFTER cst, 
  CHANGE COLUMN cbenef cbenef varchar(50) NULL DEFAULT 'NULL' AFTER codigoanp, 
  CHANGE COLUMN ucom ucom varchar(10) NULL DEFAULT 'NULL' AFTER ncm, 


ALTER TABLE `sistemaversatil`.`tmpmapadecargaresumoitensproducao` 
AUTO_INCREMENT=71;


ALTER TABLE `sistemaversatil`.`tmpmateriaprima` 
AUTO_INCREMENT=4174;


ALTER TABLE `sistemaversatil`.`tmpmateriaprima2` 
AUTO_INCREMENT=2;


ALTER TABLE `sistemaversatil`.`tmpmateriaprima3` 
AUTO_INCREMENT=2;


ALTER TABLE `sistemaversatil`.`tmpmateriaprima4` 
AUTO_INCREMENT=6478;


ALTER TABLE `sistemaversatil`.`tmpnotaeletronicadeservico` 
AUTO_INCREMENT=29;


ALTER TABLE `sistemaversatil`.`tmpnotaeletronicadeservicoitem` 
AUTO_INCREMENT=41;


ALTER TABLE `sistemaversatil`.`tmpplanejamentoentregaproducao` 
AUTO_INCREMENT=4;


ALTER TABLE `sistemaversatil`.`tmpprodutosautoajusteestoque` 
AUTO_INCREMENT=5;


ALTER TABLE `sistemaversatil`.`tmpprodutoseservicos` 
AUTO_INCREMENT=24;


ALTER TABLE `sistemaversatil`.`tmprecibos` 
AUTO_INCREMENT=1;


ALTER TABLE `sistemaversatil`.`tmpspedblocok` 
AUTO_INCREMENT=53;


ALTER TABLE `sistemaversatil`.`tmpspede310` 
AUTO_INCREMENT=99;


ALTER TABLE `sistemaversatil`.`unidadesdemedida` 
AUTO_INCREMENT=22;


ALTER TABLE `sistemaversatil`.`usuariotelarelatorios` 
AUTO_INCREMENT=15;


ALTER TABLE `sistemaversatil`.`variacoesvalores` 
AUTO_INCREMENT=165;


ALTER TABLE `sistemaversatil`.`veiculos` 
AUTO_INCREMENT=4;

