CREATE DATABASE  IF NOT EXISTS `dbmonkeystests` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbmonkeystests`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: dbmonkeystests
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `celular` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `dataNasc` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `genero` tinyint(1) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `nomeCompleto` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `turma_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g6otv1ccqwf8a15re4tc1sr9q` (`cpf`),
  UNIQUE KEY `UK_o02ktdmvvw11l6g24qsw4mio4` (`email`),
  UNIQUE KEY `UK_2whmwuogxhe12curvx31c95wb` (`login`),
  KEY `FKc2jbyom2ws00xwire0hms5bny` (`turma_id`),
  CONSTRAINT `FKc2jbyom2ws00xwire0hms5bny` FOREIGN KEY (`turma_id`) REFERENCES `turma` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'11 914512038','12547863201','1994-01-01 00:00:00','allantnunes@email.com',0,'allantnunes','Allan Tavares','123','','11 45212369',1);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pdiv40vig96cnu6cx6e2xajq7` (`descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (5,'Biologia'),(2,'Geografia'),(1,'História'),(4,'Informática Básica'),(3,'Português');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cargo` tinyint(1) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `dataNasc` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `genero` tinyint(1) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `nomeCompleto` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_iq7jks9kmtnmm74tjfp3b80ha` (`cpf`),
  UNIQUE KEY `UK_hujfe9giwd0dwuktb8toq7op7` (`email`),
  UNIQUE KEY `UK_niyc18ow9xt8oaroq7hy5sjp8` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,0,'11 914512038','12547863201','1991-01-01 00:00:00','chile@email.com',0,'chile','Jose Roberto Chile','123','','11 45212369'),(2,1,'11 914512038','54435345654','1988-01-01 00:00:00','diretor@email.com',0,'adm','Diretor Silva','123','','11 45212369');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_aluno`
--

DROP TABLE IF EXISTS `grupo_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_aluno` (
  `Grupo_id` bigint(20) NOT NULL,
  `alunos_id` bigint(20) NOT NULL,
  KEY `FK5g5d30pkolo48panqq2qxwrg4` (`alunos_id`),
  KEY `FKr3scsiuw072ba1c05gp5y089u` (`Grupo_id`),
  CONSTRAINT `FK5g5d30pkolo48panqq2qxwrg4` FOREIGN KEY (`alunos_id`) REFERENCES `aluno` (`id`),
  CONSTRAINT `FKr3scsiuw072ba1c05gp5y089u` FOREIGN KEY (`Grupo_id`) REFERENCES `grupo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_aluno`
--

LOCK TABLES `grupo_aluno` WRITE;
/*!40000 ALTER TABLE `grupo_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provaaluno`
--

DROP TABLE IF EXISTS `provaaluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provaaluno` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `anotacao` varchar(255) DEFAULT NULL,
  `nota` double NOT NULL,
  `respostasObjetivas` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `aluno_id` bigint(20) DEFAULT NULL,
  `prova_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn57cxc86iylxe365076543d3h` (`aluno_id`),
  KEY `FKhwnr1bx0mc29l41m844upg14o` (`prova_id`),
  CONSTRAINT `FKhwnr1bx0mc29l41m844upg14o` FOREIGN KEY (`prova_id`) REFERENCES `provamodelo` (`id`),
  CONSTRAINT `FKn57cxc86iylxe365076543d3h` FOREIGN KEY (`aluno_id`) REFERENCES `aluno` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provaaluno`
--

LOCK TABLES `provaaluno` WRITE;
/*!40000 ALTER TABLE `provaaluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `provaaluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provaaluno_respostadissertativaprovaaluno`
--

DROP TABLE IF EXISTS `provaaluno_respostadissertativaprovaaluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provaaluno_respostadissertativaprovaaluno` (
  `ProvaAluno_id` bigint(20) NOT NULL,
  `respostasDissertativasProvaAluno_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_remytvt6wt21w2isthf4w7jiu` (`respostasDissertativasProvaAluno_id`),
  KEY `FKsmh8cq7j3tmeq6pimcqisdwwp` (`ProvaAluno_id`),
  CONSTRAINT `FK6v9tu4itya5oqk59bbsmpn4yt` FOREIGN KEY (`respostasDissertativasProvaAluno_id`) REFERENCES `respostadissertativaprovaaluno` (`id`),
  CONSTRAINT `FKsmh8cq7j3tmeq6pimcqisdwwp` FOREIGN KEY (`ProvaAluno_id`) REFERENCES `provaaluno` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provaaluno_respostadissertativaprovaaluno`
--

LOCK TABLES `provaaluno_respostadissertativaprovaaluno` WRITE;
/*!40000 ALTER TABLE `provaaluno_respostadissertativaprovaaluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `provaaluno_respostadissertativaprovaaluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provamodelo`
--

DROP TABLE IF EXISTS `provamodelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provamodelo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `autenticacao` bit(1) NOT NULL,
  `consulta` bit(1) NOT NULL,
  `dataCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataRealizacao` datetime DEFAULT NULL,
  `observacao` longtext,
  `quantidadeQuestao` int(11) NOT NULL,
  `tempoMinTotal` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `valorProva` int(11) NOT NULL,
  `professor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb8ug8w8rgm2bc1nad86jbc01x` (`professor_id`),
  CONSTRAINT `FKb8ug8w8rgm2bc1nad86jbc01x` FOREIGN KEY (`professor_id`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provamodelo`
--

LOCK TABLES `provamodelo` WRITE;
/*!40000 ALTER TABLE `provamodelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `provamodelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provamodelo_questao`
--

DROP TABLE IF EXISTS `provamodelo_questao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provamodelo_questao` (
  `ProvaModelo_id` bigint(20) NOT NULL,
  `questoes_id` bigint(20) NOT NULL,
  KEY `FKj2xfe6x64djgu7356b7t74rip` (`questoes_id`),
  KEY `FKe51ufm6hu7dbsqn0fe0ijpn45` (`ProvaModelo_id`),
  CONSTRAINT `FKe51ufm6hu7dbsqn0fe0ijpn45` FOREIGN KEY (`ProvaModelo_id`) REFERENCES `provamodelo` (`id`),
  CONSTRAINT `FKj2xfe6x64djgu7356b7t74rip` FOREIGN KEY (`questoes_id`) REFERENCES `questao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provamodelo_questao`
--

LOCK TABLES `provamodelo_questao` WRITE;
/*!40000 ALTER TABLE `provamodelo_questao` DISABLE KEYS */;
/*!40000 ALTER TABLE `provamodelo_questao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questao`
--

DROP TABLE IF EXISTS `questao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataUso` datetime DEFAULT NULL,
  `dificuldade` tinyint(1) DEFAULT NULL,
  `enunciado` longtext,
  `imagem` tinyblob,
  `palavraChave` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `tipoQuestao` tinyint(1) DEFAULT NULL,
  `vidaUtil` int(11) NOT NULL,
  `disciplina_id` bigint(20) DEFAULT NULL,
  `professor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhmhisi22dsgtiveh6ocem7qvi` (`disciplina_id`),
  KEY `FKm352ohj2oav2iakqmtpafkv67` (`professor_id`),
  CONSTRAINT `FKhmhisi22dsgtiveh6ocem7qvi` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplina` (`id`),
  CONSTRAINT `FKm352ohj2oav2iakqmtpafkv67` FOREIGN KEY (`professor_id`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questao`
--

LOCK TABLES `questao` WRITE;
/*!40000 ALTER TABLE `questao` DISABLE KEYS */;
INSERT INTO `questao` VALUES (1,'2016-12-09 23:41:46',NULL,1,'O mais importante órgão metropolitano da administração colonial espanhola era a(o):',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(2,'2016-12-09 23:47:31',NULL,2,'As bases da dominação espanhola na América puderam se organizar rapidamente:',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(3,'2016-12-09 23:48:02',NULL,0,'Nos séculos XVI, XVII e XVIII, a América Espanhola experimentou um intenso confronto cultural que deu origem a uma sociedade marcada pela mistura de traços europeus e indígenas. Tal sociedade configurou-se de modo bastante estratificado e em conformidade com a linhagem, a riqueza, a cor da pele e a exploração das populações nativas. Considerando o seu conhecimento sobre o tema, é correto afirmar:',NULL,'Colonia Espanhola',5,NULL,0,4,1,1),(4,'2016-12-09 23:49:10',NULL,0,'Durante a colonização, subjugados os nativos, os europeus montaram estruturas de dominação e exploração nas Américas Hispânica, Portuguesa e Inglesa, que em muitos aspectos apresentavam diferenças entre si. Sobre o tema, é correto afirmar:',NULL,'Colonia Espanhola',5,NULL,0,4,1,1),(5,'2016-12-09 23:49:43',NULL,2,'A colonização espanhola na América estruturou-se basicamente em função dos núcleos de mineração da prata e do ouro, tendo sido possível organizar ali a produção com certa rapidez porque:',NULL,'Colonia Espanhola',5,NULL,0,4,1,1),(6,'2016-12-09 23:51:01',NULL,1,'A administração espanhola na América era bastante rígida; daí a criação de órgãos como a Casa de Contratação, cuja função era:',NULL,'Colonia Espanhola',5,NULL,0,4,1,1),(7,'2016-12-09 23:52:49',NULL,0,'Em relação as suas colônias situada na América do Norte a Inglaterra aplicou progressivamente uma série de medidas de caráter mercantilista, destacando: (indicar elemento estranho no grupo)',NULL,'Colonia Espanhola',5,NULL,0,4,1,1),(8,'2016-12-09 23:56:22',NULL,2,'A Lei de Spencer é uma lei que disserta sobre a relação superfície/ volume de uma\r\ncélula, comparando-a com um sólido geométrico chamado cubo. Sabendo as fórmulas\r\npara o cálculo da área e do volume do cubo, uma das premissas para a divisão celular é\r\nque:',NULL,'Biologia',5,NULL,1,4,5,1),(9,'2016-12-09 23:57:47',NULL,1,'É possível dizer que os primeiros cento e cinquenta anos da presença espanhola nas Américas foram marcados por grandes êxitos econômicos para a Coroa e para a minoria espanhola que participou diretamente da conquista. Um dos resultados do domínio espanhol foi:',NULL,'Colonia Espanhola',5,NULL,0,4,1,1),(10,'2016-12-09 23:59:12',NULL,0,'A Espanha, ao conquistar e colonizar vastas regiões do Continente Americano, implementou, nas colônias, algumas instituições. Entre essas instituições, incluíam-se',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(11,'2016-12-09 23:59:56',NULL,1,'Uma senhora, com seus 60 anos de idade, faz tratamento de reposição hormonal para\r\ncontrolar os efeitos da menopausa. Um desses efeitos é a redução drástica da\r\nliberação do hormônio estrogênio, o que promove uma queda nos níveis de cálcio\r\ndepositado nos ossos. Essa deposição acontece devido a ação de: ',NULL,'Hormonios',5,NULL,1,4,5,1),(12,'2016-12-10 00:00:20',NULL,1,'A primeira colônia americana fundada em 1607, foi:',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(13,'2016-12-10 00:01:30',NULL,2,'Durante a colonização, subjugados os nativos, os europeus montaram estruturas de dominação e exploração nas Américas Hispânica, Portuguesa e Inglesa, que em muitos aspectos apresentavam diferenças entre si. Sobre o tema, é correto afirmar:',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(15,'2016-12-10 00:15:10',NULL,1,'A colonização inglesa começou tardiamente, por causa dos problemas políticos internos, mas vários fatores impulsionaram a ocupação da América do Norte, entre os quais',NULL,'Colonia Espanhola',5,NULL,0,4,1,1),(16,'2016-12-10 00:16:12',NULL,2,'A colonização inglesa na América do norte:',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(17,'2016-12-10 00:16:30','2016-12-09 22:19:02',0,'Um famoso artista foi convidado a expor suas obras em um museu da cidade. Suas\r\nobras sempre envolviam a utilização de plantas vivas, sendo esse artista conhecido no\r\nmeio como Artista verde. O local onde suas plantas iriam ficar expostas era na nova\r\nala do museu, o Subsolo da Ciência, uma área muito arejada, mas que não tinha\r\nmuito contato com a luz para não estragar as obras de artes. Durante a vigência da\r\nexposição, o artista começa a notar que suas plantas estão morrendo. Isso está\r\nacontecendo porque: ',NULL,'Plantas',5,NULL,1,4,1,1),(18,'2016-12-10 00:17:33',NULL,1,'As grandes propriedades com escravos nas treze colônias Inglesas da América, localiza-se:',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(19,'2016-12-10 00:18:40',NULL,2,'A conquista colonial inglesa resultou no estabelecimento de três áreas com características diversas na América do Norte. Com relação às chamadas \"colônias do sul\" é correto afirmar:',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(20,'2016-12-10 00:21:21',NULL,0,'A bactéria Clostridium tetani , bactéria causadora do tétano, tem metabolismo\r\nanaeróbico, até chegar ao ponto do gás oxigênio ser tóxico para o seu organismo.\r\nSupondo que uma missão espacial para a Lua levasse uma série de microorganismos\r\npara testar sua capacidade de sobrevivência nesse satélite, onde a bactéria C. tetani\r\nestivesse dentre esse grupo de micróbios, qual seria a possibilidade de sobrevivência\r\nda mesma em relação à quantidade de O2 na Lua?',NULL,'Bactéteria',5,NULL,1,4,5,1),(21,'2016-12-10 00:22:13',NULL,2,'Comparando as colônias da América portuguesa e da América espanhola, pode-se afirmar que',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(22,'2016-12-10 00:23:18',NULL,0,'Um famoso artista foi convidado a expor suas obras em um museu da cidade. Suas\r\nobras sempre envolviam a utilização de plantas vivas, sendo esse artista conhecido no\r\nmeio como Artista verde. O local onde suas plantas iriam ficar expostas era na nova\r\nala do museu, o Subsolo da Ciência, uma área muito arejada, mas que não tinha\r\nmuito contato com a luz para não estragar as obras de artes. Durante a vigência da\r\nexposição, o artista começa a notar que suas plantas estão morrendo. Isso está\r\nacontecendo porque:',NULL,'Fotossintese',5,NULL,1,4,5,1),(23,'2016-12-10 00:23:32',NULL,0,'A escravidão, durante a colonização das Américas, permitiu maior concentração de capital nas metrópoles por meio da exploração do tráfico. Nas colônias, a mão-de-obra escrava era utilizada principalmente na',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(24,'2016-12-10 00:24:46',NULL,2,'Sobre o trabalho compulsório (seja servil, seja escravo) em toda a América, no período colonial, pode-se afirmar que',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(25,'2016-12-10 00:26:48',NULL,2,'Sobre a colonização inglesa nas colônias da América do Norte, é correto afirmar que:',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(26,'2016-12-10 00:31:26',NULL,1,'Sobre a relação entre índios e brancos na história da América, podemos dizer que:',NULL,'Colonia Espanhola',5,NULL,1,4,1,1),(27,'2016-12-10 00:37:21',NULL,0,'Windows é um:',NULL,'Sistema operacional',5,NULL,1,4,4,1);
/*!40000 ALTER TABLE `questao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respostadissertativa`
--

DROP TABLE IF EXISTS `respostadissertativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respostadissertativa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `respostaBase` varchar(255) DEFAULT NULL,
  `questao_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa2cew2aw9qgykboc0dy3sx0wm` (`questao_id`),
  CONSTRAINT `FKa2cew2aw9qgykboc0dy3sx0wm` FOREIGN KEY (`questao_id`) REFERENCES `questao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostadissertativa`
--

LOCK TABLES `respostadissertativa` WRITE;
/*!40000 ALTER TABLE `respostadissertativa` DISABLE KEYS */;
INSERT INTO `respostadissertativa` VALUES (1,'Os espanhóis oriundos da metrópole desfrutavam de uma série de vantagens em relação a seus descendentes nascidos na colônia.',3),(2,'A dominação inglesa, embora tenha elementos semelhantes aos da dominação portuguesa (a \"plantation\" de algodão no sul), possibilitou que famílias imigrassem em massa para a América em face dos problemas políticos e religiosos na metrópole.',4),(3,'A alta densidade indígena facilitava o fornecimento de mão de obra.',5),(4,'Fiscalizar a entrada e a saída de riquezas da América, combatendo o contrabando',6),(5,'Liberdade de comércio com as Antilhas.',7),(6,'a destruição de grande parte da população indígena preexistente.',9),(7,'To cadastrando questão sem estar logado.\r\nTa faltando interceptor viado',14),(8,'certo grau de liberdade que gozavam as colônias dentro do monopólio mercantilista, liberdade essa que começou a sofrer restrições com os Atos de Navegação.',15);
/*!40000 ALTER TABLE `respostadissertativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respostadissertativaprovaaluno`
--

DROP TABLE IF EXISTS `respostadissertativaprovaaluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respostadissertativaprovaaluno` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `consideracaoProf` longtext,
  `corrigida` bit(1) NOT NULL,
  `nota` double NOT NULL,
  `respostaAluno` longtext,
  `respostaDissertativa_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlj5ijoo7cdq3kli3uykwj3550` (`respostaDissertativa_id`),
  CONSTRAINT `FKlj5ijoo7cdq3kli3uykwj3550` FOREIGN KEY (`respostaDissertativa_id`) REFERENCES `respostadissertativa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostadissertativaprovaaluno`
--

LOCK TABLES `respostadissertativaprovaaluno` WRITE;
/*!40000 ALTER TABLE `respostadissertativaprovaaluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `respostadissertativaprovaaluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respostaobjetiva`
--

DROP TABLE IF EXISTS `respostaobjetiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respostaobjetiva` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resposta` varchar(255) DEFAULT NULL,
  `taCerta` bit(1) NOT NULL,
  `questao_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsoqlpsnbvei45msskntq7yudl` (`questao_id`),
  CONSTRAINT `FKsoqlpsnbvei45msskntq7yudl` FOREIGN KEY (`questao_id`) REFERENCES `questao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostaobjetiva`
--

LOCK TABLES `respostaobjetiva` WRITE;
/*!40000 ALTER TABLE `respostaobjetiva` DISABLE KEYS */;
INSERT INTO `respostaobjetiva` VALUES (1,'Conselho Ultramarino','',1),(2,'Conselho de Índias','\0',1),(3,'Casa das Índias','\0',1),(4,'Intendencia','\0',1),(5,'Pela alta densidade populacional indígena nas zonas da mineração. o que propiciava uma elevada oferta de mão-de-obra.','',2),(6,'Porque as zonas ricas em metais preciosos se encontravam próximas ao litoral.','\0',2),(7,'Pelos grandes investimentos feitos pela coroa espanhola na América.','\0',2),(8,'Ao aumentar a superfície celular, seu volume aumenta drasticamente,\r\nmodificando a razão área/ volume, resultando em um valor < 1, portanto uma\r\ncélula precisa se dividir para que seu núcleo possa coordenar todo o volume\r\ncelular. ','',8),(9,'Ao aumentar a superfície celular, o volume pode sofrer aumento ou\r\ndiminuição, que depende exclusivamente de fatores bioquímicos. ','\0',8),(10,'Ao aumentar a superfície celular, seu volume aumenta em proporção\r\nsemelhante, sempre mantendo a mesma razão matemática, de valor 1,\r\nportanto, uma célula não se divide se aumentar drasticamente de tamanho. ','\0',8),(11,'Ao aumentar a superfície celular, seu volume diminui drasticamente,\r\nmodificando a razão área/ volume para um valor >1, o que facilitaria muito\r\nmais a coordenação celular pelo núcleo. ','\0',8),(12,'Ao aumentar a superfície celular, o volume pode sofrer aumento ou\r\ndiminuição, dependendo dos fatores hormonais e genéticos envolvidos neste\r\nprocesso. ','\0',8),(13,'Universidades, que foram fundadas e mantidas por ordens religiosas nas mais importantes cidades coloniais.','',10),(14,'Escolas primárias, que foram implantadas pela Coroa com o objetivo de conter o avanço da Igreja sobre as instituições educativas.','\0',10),(15,'Órgãos da Inquisição, que foram criados nas colônias, visando a difundir o pensamento da Ilustração.','\0',10),(16,'Um hormônio chamado Calcitonina, liberado pela glândula tireóide.','',11),(17,'Um hormônio chamado Paratormônio, liberado pela glândula paratireóide.','\0',11),(18,'Um neurotransmissor chamado Dopamina, liberado pelo tronco encefálico.','\0',11),(19,'Um hormônio chamado Calcitonina, liberado pela paratireóide.','\0',11),(20,'Um hormônio chamado Paratormônio, liberado pela medula óssea.','\0',11),(21,'Colônia de Virginia','',12),(22,'Colônia de Plymouth','\0',12),(23,'Colônia de Georgia','\0',12),(24,'A dominação inglesa, embora tenha elementos semelhantes aos da dominação portuguesa (a plantation de algodão no sul), possibilitou que famílias imigrassem em massa para a América em face dos problemas políticos e religiosos na metrópole.','',13),(25,'A colonização portuguesa teve como base pequenas unidades de produção diversificadas.','\0',13),(26,'Nas Colônias Inglesas do Norte estabeleceu-se uma economia fundada em três pilares: a monocultura, a grande propriedade rural e a mão-de-obra escrava.','\0',13),(27,'Foi marcada pelo afluxo de imigrantes deslocados de sua pátria por causa de perseguições políticas religiosas.','',16),(28,'Resultou na criação de colônias de exploração na Nova Inglaterra.','\0',16),(29,'caracterizou-se pela utilização do trabalho indígena.','\0',16),(30,'Como a área não é bem iluminada, as plantas não podem fazer fotossíntese de\r\nforma eficaz.','',17),(31,'Como a área não é bem iluminada, as plantas não podem fazer a respiração\r\ncelular.','\0',17),(32,'Como a área é bem arejada, as plantas irão fazer muita respiração celular,\r\ngastando muita energia.','\0',17),(33,'Como a área é bem arejada, a planta não poderá fazer fotossíntese, devido o\r\nalto grau de oxigênio no local.','\0',17),(34,'Como a área é bem arejada, o nível de oxigênio será maior que o de gás\r\ncarbônico, dificultando a planta a captar esse último gás para fazer a\r\nfotossíntese.','\0',17),(35,'Ao sul','',18),(36,'Ao norte','\0',18),(37,'Ao centro','\0',18),(38,'Baseava-se numa economia escravista voltada principalmente para o mercado externo de produtos, como o tabaco e o algodão.','',19),(39,'Baseava-se, sobretudo, na economia familiar e desenvolveu uma ampla rede de relações comerciais com as colônias do Norte e com o Caribe.','\0',19),(40,'Baseava-se numa forma de servidão temporária que submetia os colonos pobres a um conjunto de obrigações em relação aos grandes proprietários de terras.','\0',19),(41,'Alta, pois a bactéria, por não entrar em contato com O2, que é prejudicial a\r\nmesma, tem chance de sobreviver.','',20),(42,'Nenhuma, pois os microorganismos, por serem muitos, vão competir pela\r\nbaixíssima quantidade de O2 lunar.','\0',20),(43,'Alta, pois a bactéria poderia encontrar algum lugar oxigenado para sua\r\nsobrevivência.','\0',20),(44,'Nenhuma, pois a bactéria precisa de oxigênio já que ela é anaeróbica.','\0',20),(45,'Nenhuma, pois a bactéria, como todo organismo vivo, não pode sobreviver\r\nsem O2.','\0',20),(46,'As atividades agrárias e mineradoras se constituíram na base das exportações das colônias das duas Américas.','',21),(47,'as manufaturas têxteis foram proibidas por ambas as Coroas, e perseguidas as tentativas de sua implantação.','\0',21),(48,'a atuação da Espanha, diferente da de Portugal, foi contrária às diretrizes mercantilistas para suas colônias.','\0',21),(49,'Como a área não é bem iluminada, as plantas não podem fazer fotossíntese de\r\nforma eficaz.','',22),(50,'Como a área não é bem iluminada, as plantas não podem fazer a respiração\r\ncelular.','\0',22),(51,'Como a área é bem arejada, as plantas irão fazer muita respiração celular,\r\ngastando muita energia.','\0',22),(52,'. Como a área é bem arejada, a planta não poderá fazer fotossíntese, devido o\r\nalto grau de oxigênio no local.','\0',22),(53,'Como a área é bem arejada, o nível de oxigênio será maior que o de gás\r\ncarbônico, dificultando a planta a captar esse último gás para fazer a\r\nfotossíntese.','\0',22),(54,'Agricultura, no Brasil e no Caribe.','',23),(55,'Busca de especiarias, no Peru e na Colômbia.','\0',23),(56,'Procura de pedras preciosas, no Brasil e nos Estados Unidos.','\0',23),(57,'Incluiu até mesmo os brancos.','',24),(58,'Inexistiu nas terras voltadas para o Pacífico.','\0',24),(59,'Impôs-se sem maiores resistências.','\0',24),(60,'As colônias de povoamento foram colonizadas por europeus que fugiam das perseguições religiosas em busca de uma nova pátria','',25),(61,'No conjunto das treze colônias, o modelo de colonização baseava-se na produção tropical voltado para a exportação','\0',25),(62,'Tanto as colônias do sul, quanto as do norte, tinham a mesma estrutura econômica, política e social','\0',25),(63,'Todos os interesses dos brancos e dos índios estavam voltados à acumulação de capitais, como mostram o envio de ouro para as metrópoles e a construção das pirâmides astecas.','',26),(64,'O encontro entre portugueses e indígenas no Brasil foi um processo harmônico, porque os índios se localizavam no interior e a colonização ocorreu no litoral do território.','\0',26),(65,'O conflito entre ambos caracterizou a expansão para o oeste dos Estados Unidos devido exclusivamente à disputa pelo ouro e pelo petróleo do Texas e da Califórnia.','\0',26),(66,'Sistema Operacional','',27),(67,'Gerenciador de arquivos e pastas do Windows','\0',27),(68,'Navegador','\0',27);
/*!40000 ALTER TABLE `respostaobjetiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simulado`
--

DROP TABLE IF EXISTS `simulado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simulado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantidadeQuestao` int(11) NOT NULL,
  `tempoMinTotal` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `professor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr4t3mehnq5s1pb2sng56ntkxn` (`professor_id`),
  CONSTRAINT `FKr4t3mehnq5s1pb2sng56ntkxn` FOREIGN KEY (`professor_id`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simulado`
--

LOCK TABLES `simulado` WRITE;
/*!40000 ALTER TABLE `simulado` DISABLE KEYS */;
/*!40000 ALTER TABLE `simulado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simulado_questao`
--

DROP TABLE IF EXISTS `simulado_questao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simulado_questao` (
  `Simulado_id` bigint(20) NOT NULL,
  `questoes_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_jbib4yolg5dw801v0j3vyv7wi` (`questoes_id`),
  KEY `FKra216otr7oh7ro55vb8ci2fiw` (`Simulado_id`),
  CONSTRAINT `FK9ryodpxva5h6wtelr17hu3gaq` FOREIGN KEY (`questoes_id`) REFERENCES `questao` (`id`),
  CONSTRAINT `FKra216otr7oh7ro55vb8ci2fiw` FOREIGN KEY (`Simulado_id`) REFERENCES `simulado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simulado_questao`
--

LOCK TABLES `simulado_questao` WRITE;
/*!40000 ALTER TABLE `simulado_questao` DISABLE KEYS */;
/*!40000 ALTER TABLE `simulado_questao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `periodo` tinyint(1) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'3º F',1,'');
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-10  9:26:13


-- LIMPAR QUESTÕES REPROVADAS A CADA 1 DIA	 --
CREATE EVENT IF NOT EXISTS limparBanco ON SCHEDULE EVERY 1 DAY
	DO DELETE FROM questao WHERE questao.status = 1
		AND timestampdiff(DAY, questao.dataUso, current_timestamp()) >= 1;
     
-- APÓS CONGELAR AS QUESTÕES, ELAS SERÃO DESCONGELADAS APÓS 3 MESES
CREATE EVENT IF NOT EXISTS setDisponivel ON SCHEDULE EVERY 1 DAY
	DO UPDATE questao SET questao.status = 5, questao.vidaUtil = questao.vidaUtil - 1
		WHERE timestampdiff(month, questao.dataUso, current_timestamp()) >= 3
			AND questao.status = 3;
			
DELIMITER //        
	CREATE TRIGGER congelarQuestao BEFORE UPDATE ON questao
		FOR EACH ROW
			BEGIN
				IF NEW.vidaUtil = 0 THEN
					SET NEW.status = 2;
				END IF;
			END//
DELIMITER ;

SET GLOBAL event_scheduler = ON;
