-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 04-Dez-2019 às 11:34
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mercado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `id_cid` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cid` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`id_cid`, `nome_cid`) VALUES
(1, 'Cuiabá'),
(2, 'Várzea Grande'),
(3, 'Sinop'),
(4, 'Cáceres'),
(5, 'Barra do Garças'),
(6, 'Pontes e Lacerda'),
(7, 'Barra do Bugres'),
(8, 'Rondonópolis'),
(9, 'Tangará da Serra'),
(10, 'Lucas do Rio Verde');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `nomec` varchar(20) COLLATE utf8_bin NOT NULL,
  `sobrec` varchar(20) COLLATE utf8_bin NOT NULL,
  `dat_nasc` date NOT NULL,
  `emailc` varchar(60) COLLATE utf8_bin NOT NULL,
  `cod_doc` int(11) NOT NULL,
  `cod_endereco` int(11) NOT NULL,
  `cod_tel` int(11) NOT NULL,
  `senhac` varchar(50) COLLATE utf8_bin NOT NULL,
  `sexoc` varchar(1) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idc`),
  KEY `cod_doc` (`cod_doc`),
  KEY `cod_endereco` (`cod_endereco`),
  KEY `cod_tel` (`cod_tel`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idc`, `nomec`, `sobrec`, `dat_nasc`, `emailc`, `cod_doc`, `cod_endereco`, `cod_tel`, `senhac`, `sexoc`) VALUES
(1, 'Ronaldo', 'Seba', '1997-02-23', 'ronaldoseba65@gmail.com', 4, 2, 1, 'jugfoeu1@bv', 'M'),
(2, 'Alex', 'Souza', '1999-11-11', 'alex.souza@gmail.com', 20, 1, 4, 'hdueap19da', 'M'),
(3, 'Juan', 'Carvalhais', '1993-05-01', 'juanmarinha@gmail.com', 14, 4, 2, 'mdsoaidh8391', 'M'),
(4, 'Mariana', 'Noronha', '1995-06-30', 'mariananoronha1995@gmail.com', 8, 3, 3, 'ibfusdvofs', 'F'),
(5, 'Vitória', 'Correia', '1998-06-21', 'vitoriacorreia21@gmail.com', 9, 10, 7, 'vhbosuiro', 'F'),
(6, 'Luíza', 'Sanches', '1996-09-12', 'luizasanches96@gmail.com', 10, 7, 5, 'uadiduasgo', 'F'),
(7, 'Vanessa', 'Castro', '1993-12-25', 'vanessacastroooo@gmail.com', 6, 9, 9, 'dpsoafnisoi', 'F'),
(8, 'Tassio', 'Santos', '1994-01-19', 'tassiosantosmiranda78@gmail.com', 1, 6, 6, 'shdishoASODHOhsdHas', 'M'),
(9, 'Luan', 'Gomes', '2000-11-06', 'luan.gomes06@gmail.com', 2, 5, 8, 'dsioadnoiand', 'M'),
(10, 'Luana', 'Miranda', '1993-03-31', 'luanamiradinha@gmail.com', 3, 8, 10, 'bbdOAIOI@#N!', 'F');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

DROP TABLE IF EXISTS `documentos`;
CREATE TABLE IF NOT EXISTS `documentos` (
  `idd` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(14) COLLATE utf8_bin NOT NULL,
  `rg` varchar(9) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idd`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`idd`, `cpf`, `rg`) VALUES
(1, '130.603.190-73', '387890427'),
(2, '224.440.490-04', '128832125'),
(3, '750.777.580-18', '316911021'),
(4, '106.988.860-54', '120027203'),
(5, '084.163.940-08', '423531335'),
(6, '563.705.300-69', '442404116'),
(7, '336.699.190-90', '386276481'),
(8, '797.030.320-01', '330052056'),
(9, '296.640.300-40', '461832628'),
(10, '861.542.890-57', '386097744'),
(11, '119.077.690-13', '197322384'),
(12, '612.708.560-81', '198094371'),
(13, '870.416.410-58', '385247667'),
(14, '188.747.020-43', '437874977'),
(15, '150.263.160-18', '109190014'),
(16, '151.778.670-30', '507119198'),
(17, '634.418.680-13', '227511475'),
(18, '254.896.620-85', '385003444'),
(19, '222.156.500-28', '320738851'),
(20, '099.873.530-29', '461196943');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE IF NOT EXISTS `endereco` (
  `ide` int(11) NOT NULL AUTO_INCREMENT,
  `uf` char(2) COLLATE utf8_bin NOT NULL DEFAULT 'MT',
  `rua` varchar(30) COLLATE utf8_bin NOT NULL,
  `bairro` varchar(30) COLLATE utf8_bin NOT NULL,
  `numero` varchar(10) COLLATE utf8_bin NOT NULL,
  `cep` int(20) NOT NULL,
  `cod_cid` int(11) NOT NULL,
  PRIMARY KEY (`ide`),
  KEY `cod_cid` (`cod_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`ide`, `uf`, `rua`, `bairro`, `numero`, `cep`, `cod_cid`) VALUES
(2, 'MT', 'Rua das Laranjeiras', 'Cohab Santa Clara', '59', 78119075, 2),
(1, 'MT', 'Rua Dezoito', 'Jardim Novo Milênio', '13', 78093750, 1),
(3, 'MT', 'Rua Dos Jerivas', 'Jardim das Itaúbas', '415', 78556744, 3),
(4, 'MT', 'Avenida Sete de Setembro', 'Centro', '269', 78200970, 4),
(5, 'MT', 'Avenida Ministro João Alberto', 'Centro', '567', 78600972, 5),
(6, 'MT', 'Rua Vera Lucia', 'Centro', '808', 78250970, 6),
(7, 'MT', 'Rua Principal', 'Antônio Conselheiro', '1', 78396970, 7),
(8, 'MT', 'Rua A-108', 'Residencial Paraíso', '839', 78734040, 8),
(9, 'MT', 'Avenida Carlos Tayano', 'Centro', '20', 78305970, 9),
(10, 'MT', 'Rua Palmeira 185-W', 'Centro', '99', 78459970, 10),
(11, 'MT', 'Rua Dezenove', 'Jardim Velho Milênio', '9', 78033790, 1),
(12, 'MT', 'Rua das Maçãs', 'Cohab Santo Escuro', '12', 71113072, 2),
(13, 'MT', 'Rua Luz', 'Jardim das Itaúbas', '1', 78556744, 3),
(14, 'MT', 'Avenida Sete de Dezembro', 'Centro', '500', 78200900, 4),
(15, 'MT', 'Avenida Ministro José Alberto', 'Centro', '99', 78100970, 5),
(16, 'MT', 'Rua Verão', 'Centro', '800', 73250170, 6),
(17, 'MT', 'Rua Secundária', 'Antônio Conselheiro', '3', 72396910, 7),
(18, 'MT', 'Rua B-100', 'Residencial Paraíso', '500', 78034000, 8),
(19, 'MT', 'Avenida Carlos Bernardo', 'Centro', '1', 71305900, 9),
(20, 'MT', 'Rua Palmeira 155-E', 'Centro', '59', 70259900, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

DROP TABLE IF EXISTS `estoque`;
CREATE TABLE IF NOT EXISTS `estoque` (
  `idestoque` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade` int(11) NOT NULL,
  `cod_produto` int(11) NOT NULL,
  PRIMARY KEY (`idestoque`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`idestoque`, `quantidade`, `cod_produto`) VALUES
(1, 10, 1),
(2, 8, 2),
(3, 1, 3),
(4, 23, 4),
(5, 4, 5),
(6, 5, 6),
(7, 10, 7),
(8, 8, 8),
(9, 9, 9),
(10, 50, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `idf` int(11) NOT NULL AUTO_INCREMENT,
  `nomef` varchar(20) COLLATE utf8_bin NOT NULL,
  `sobref` varchar(20) COLLATE utf8_bin NOT NULL,
  `dat_nasc` date NOT NULL,
  `emailf` varchar(60) COLLATE utf8_bin NOT NULL,
  `cod_setor` int(11) NOT NULL,
  `cod_doc` int(11) NOT NULL,
  `cod_endereco` int(11) NOT NULL,
  `cod_tel` int(11) NOT NULL,
  `senhaf` varchar(50) COLLATE utf8_bin NOT NULL,
  `sexof` char(1) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idf`),
  KEY `cod_setor` (`cod_setor`),
  KEY `cod_doc` (`cod_doc`),
  KEY `cod_endereco` (`cod_endereco`),
  KEY `cod_tel` (`cod_tel`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`idf`, `nomef`, `sobref`, `dat_nasc`, `emailf`, `cod_setor`, `cod_doc`, `cod_endereco`, `cod_tel`, `senhaf`, `sexof`) VALUES
(1, 'Vando', 'Junqueira', '1989-03-28', 'vando.junqueira@gmail.com', 2, 5, 11, 10, 'DOHaoasidd', 'M'),
(2, 'Gabriela', 'Souza', '1998-02-20', 'gabriela.peixes69@gmail.com', 4, 7, 13, 16, 'DHoaisdha12asd', 'F'),
(3, 'Welder', 'Coelho', '2000-02-12', 'weldercoelhohabit@gmail.com', 8, 11, 12, 13, 'DHNVIHFUA123aN', 'M'),
(4, 'Lucas', 'Gomes', '1997-04-29', 'lucas.gomes@gmail.com', 9, 13, 17, 12, 'nvLIHsAUHKHAOSI', 'M'),
(5, 'Claudineia', 'Antero', '1996-10-10', 'poxavidaclau@gmail.com', 1, 12, 11, 14, 'NLVDHAONSOhODa', 'F'),
(6, 'Gustavo', 'Zoratti', '1990-11-11', 'gustavo.zoratti33@gmail.com', 3, 15, 15, 17, 'DAUDHASUHDAN', 'M'),
(7, 'Steve', 'Rogers', '1880-06-25', 'capitãoamerica@hotmail.com', 5, 17, 14, 20, 'peggy123', 'M'),
(8, 'Tony', 'Stark', '1970-08-08', 'vingadormaisforte@gmail.com', 6, 18, 20, 19, 'tonyzin123', 'M'),
(9, 'Natasha', 'Romanoff', '1989-02-03', 'gostosadohulk@gmail.com', 7, 19, 18, 18, 'roma9', 'F'),
(10, 'Naruto', 'Uzumaki', '1989-08-10', 'narutopodeserduroasvezes@gmail.com', 9, 16, 16, 15, 'nanadaimehokage', 'M');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `nome_pro` varchar(50) COLLATE utf8_bin NOT NULL,
  `cod_barra` int(11) NOT NULL,
  `cat_prod` varchar(20) COLLATE utf8_bin NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idp`, `nome_pro`, `cod_barra`, `cat_prod`, `valor`) VALUES
(1, 'NVIDIA GeForce GTX 1050 Ti', 1792387, 'GPU', 700),
(2, 'AMD Ryzen 5 3600X ', 731289, 'Processador', 1200),
(3, 'Mouse Gamer HyperX Pulsefire Core ', 732912, 'Periféricos', 119),
(4, 'Teclado Gamer HyperX Alloy Core', 102937, 'Periféricos', 229),
(5, 'Monitor Gamer Samsung LED 24', 129383, 'Monitores', 549),
(6, 'Placa-Mãe Asus Prime B450M Gaming', 634721, 'Placa Mãe', 500),
(7, 'SSD WD Black SN750 Heatsink', 634673, 'Armazenamento', 1800),
(8, 'NVIDIA GeForce GTX 1660 6GB', 635272, 'GPU', 1200),
(9, 'NVIDIA GeForce GTX 1660', 457485, 'GPU', 1100),
(10, 'HD Seagate BarraCuda 2TB', 981273, 'Armazenamento', 359);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

DROP TABLE IF EXISTS `setor`;
CREATE TABLE IF NOT EXISTS `setor` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `setor` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`ids`, `setor`) VALUES
(1, 'Processadores'),
(2, 'Periféricos'),
(3, 'Computadores'),
(4, 'GPU'),
(5, 'Monitores'),
(6, 'Gamer'),
(7, 'Armazenamento'),
(8, 'Transporte'),
(9, 'Suporte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefones`
--

DROP TABLE IF EXISTS `telefones`;
CREATE TABLE IF NOT EXISTS `telefones` (
  `idt` int(11) NOT NULL AUTO_INCREMENT,
  `residencial` varchar(16) COLLATE utf8_bin NOT NULL,
  `celular` varchar(16) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idt`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `telefones`
--

INSERT INTO `telefones` (`idt`, `residencial`, `celular`) VALUES
(1, '(87) 23314-2840', '(87) 22974-2840'),
(2, '(79) 80063-4304', '(79) 83063-4304'),
(3, '(74) 82139-2280', '(74) 82139-2295'),
(4, '(43) 32743-5810', '(43) 32623-5851'),
(5, '(67) 37909-0777', '(67) 37912-0875'),
(6, '(73) 56160-9577', '(73) 56160-9583'),
(7, '(30) 80083-2800', '(30) 80983-2803'),
(8, '(86) 77197-0800', '(86) 77197-0878'),
(9, '(52) 33076-4000', '(52) 33076-4561'),
(10, '(81) 55872-8588', '(81) 55872-8527'),
(11, '(75) 52771-0000', '(75) 52771-0023'),
(12, '(85) 85842-0101', '(85) 85842-5651'),
(13, '(34) 84226-0404', '(34) 84226-7745'),
(14, '(61) 82815-0456', '(61) 82815-0656'),
(15, '(71) 52896-7070', '(71) 52896-6945'),
(16, '(17) 82636-3899', '(17) 82636-3804'),
(17, '(32) 57914-5050', '(32) 57914-7404'),
(18, '(80) 36187-1201', '(80) 36187-2149'),
(19, '(34) 89750-0101', '(34) 89750-6575'),
(20, '(31) 42530-9999', '(31) 42530-8765');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

DROP TABLE IF EXISTS `venda`;
CREATE TABLE IF NOT EXISTS `venda` (
  `idv` int(11) NOT NULL AUTO_INCREMENT,
  `cod_produto` int(11) NOT NULL,
  `cod_cli` int(11) NOT NULL,
  `quant_venda` int(11) NOT NULL,
  `valor_unit` double NOT NULL,
  `valor_total` double NOT NULL,
  `forma_pag` varchar(10) COLLATE utf8_bin NOT NULL,
  `navegador` varchar(20) COLLATE utf8_bin NOT NULL,
  `ip` varchar(39) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idv`),
  KEY `cod_produto` (`cod_produto`),
  KEY `cod_cli` (`cod_cli`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idv`, `cod_produto`, `cod_cli`, `quant_venda`, `valor_unit`, `valor_total`, `forma_pag`, `navegador`, `ip`) VALUES
(1, 1, 1, 1, 700, 700, 'Boleto', 'Google Chrome', '12738912'),
(2, 1, 1, 1, 700, 700, 'Boleto', 'Google Chrome', '12738912'),
(3, 4, 5, 2, 229, 458, 'Cartão', 'Mozilla Firefox', '837294212'),
(4, 8, 9, 1, 1200, 1200, 'Cartão', 'Microsoft Edge', '5347897239'),
(5, 10, 10, 3, 359, 1077, 'Boleto', 'Google Chrome', '472398479381'),
(6, 4, 4, 1, 229, 229, 'Cartão', 'Google Chrome', '12938211023');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
