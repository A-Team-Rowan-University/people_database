-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: mario
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Current Database: `mario`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `mario`;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `person_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(355) DEFAULT NULL,
  `banner_id` char(9) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (0,'John','McAvoy','mcavoyj5@students.rowan.edu','123456789'),(1,'Tim','Hollabaugh','hollabaut1@students.rowan.edu ','238238328'),(100,'paria','exercitat','r sit amet, consectetur adipiscing elit, sed do eiusmod tempor i','758077798'),(410,'labor','niam,','citation ullamco labori','987324513'),(411,'it in v','por inci','scing elit, sed d','938127431'),(412,'empor i','r si','uat. Duis aute irure dolor in reprehenderit i','294582844'),(413,'ing el','t mollit an','is nostrud exercitation u','127431983'),(414,'. Excepteu','t nulla p','uis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons','812789262'),(415,'or sit ','uptate ve','strud exercitation ullamco labori','759872639'),(416,'pteur','ip ex ea com',' amet, consecte','385743934'),(417,'pidat','n volupt','usmod tempor','145275807'),(418,'unt u',' rep','rure dolor in reprehenderit in voluptate velit','127431983'),(419,' proident,','labore et','ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, q','457234958'),(420,'it anim ','d minim v',' u','720219840'),(421,'datat','se cillu','tempor incididunt ut labore et dolore magna aliqua. ','249237498'),(422,' aute i','psum ','it, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ve','489175987'),(423,'ex ea comm','u fugiat','fficia deserunt mollit anim id est laborum.Lorem ipsu','798732451'),(424,'cat cupida',' eu f',' i','234958731'),(425,'lor sit am','scin','gi','731204891'),(426,'elit, ',' proident, s','rit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint','328512938'),(427,'. Exce','nt, sunt','lit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ve','983097172'),(428,'rum.Lorem','sunt in ','uip ex ea commodo consequat. Duis aute irure dolor in reprehenderit ','587234923'),(429,'nim ad ','e irure ','nsectetur adipiscing elit, sed do eiusm','328512938'),(430,'ent, sunt ','sunt in culp','occaec','458925729'),(431,'mmodo cons',' deserunt ','rehenderit in voluptate velit esse cillum ','349238419'),(432,'exercitati',' dolore e','ation ullamco laboris nisi ut aliquip ex ea commod','257298572'),(433,'iqua.','t dolore m','d exercitation ullamco laboris nisi ut aliquip ex ea commodo consequ','198309717'),(434,'magna al','i ut ','t labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ','349238419'),(435,'u fug','unt ','r. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt','807779873'),(436,'strud exe','cepte','officia deserunt mollit anim id est laborum.Lorem ipsu','404983984'),(437,'orem ipsum','uip ex','unt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing e','983714149'),(438,' incididun','o eiusmod te','lit, sed do eiusmod tem','393495249'),(439,', conse',' tempor ','st laborum.Lorem ipsum dolor sit amet, consecte','923749896'),(440,' volu','adipisci','ulpa qui officia deserunt mollit anim id est laborum.Lorem ','792385698'),(441,'eprehend',' sunt','cididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit','987263938'),(442,'erunt m','etur adipis','veniam, quis nostrud exercitation ullamc','198309717'),(443,'o labori','lit, s','rem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor','349238419'),(444,'re magn','modo con','o eiusmod tempor incididun','048917598'),(445,'nt in','si ut ali','it anim id est laborum.Lorem ipsum dolor sit amet, co','127431983'),(446,'quis ','uip ex ','aecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est ','598726393'),(447,'odo conse','t. Duis aute',' esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occ','613946148'),(448,'m veniam','nisi ut','ex ea com','349238419'),(449,'niam, qui','t an','t ut labore et dolore magna aliq','580777987'),(450,'esse c','ncididunt u','uptate velit esse cillum dolore eu fugiat ','759872639'),(451,'sequat. Du',' eu fugiat',' e','572985721'),(452,'nsecte','idunt ut l','. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui off','457234958'),(453,'mod te','lit anim id ',' nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in v','385743934'),(454,'elit e','giat nulla ','oris nisi ut aliquip ex ea commodo consequat. Duis aute iru','792385698'),(455,'ore ma','unt ut la','scing elit, sed do eiusmo','779873245'),(456,'mmodo cons','sectetur a','fficia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing ','956139461'),(457,'idata','ehenderit','em ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ','492374989'),(458,'. Duis a','lpa qui ','o ei','569837141'),(459,'t mollit','im ad ',' culpa qui officia deserunt m','498398437'),(460,'piscing el','cia deserunt','reprehenderit in voluptate','872349238'),(461,'ercitatio',' laboris ni','o laboris nisi ut aliquip e','139461481'),(462,'tion ullam','sint occ','ing elit, sed do eiusmod tempor i','419328512'),(463,'a aliqua. ','re et dolor','um.Lorem ipsum dolor sit amet, consectetur adipisc','743934952'),(464,'i ut ali','trud ex','voluptate velit esse cillum dolo','097172021'),(465,'cillum','sse c','uis nostrud exercitation ullamco laboris nisi ut a','958462514'),(466,'enderit i','n repr','deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing el','987324513'),(467,' officia','ercita',' dolor in reprehende','234923841'),(468,'iquip ex ','ollit anim i','or in reprehenderit in voluptate velit esse cillum dolore eu fug','278926295'),(469,'giat nulla','iqua','cididunt ut labore et dolore magna al','431983097'),(470,'is aute ','labori','orum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incidid','384193285'),(471,'e et d',' veniam, qui','lum dolore eu fugiat nulla pariatur. Excepteur si','726393812'),(472,' consectet','iam, quis n','unt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru','938457234'),(473,' deseru','eprehende','ur. Excepteur sin','293857439'),(474,' ut labor','it in volup','it amet, c','923841932'),(475,'aboris nis','a qui offi','g elit, sed do eiusmod te','983714149'),(476,'sit amet','in reprehe','ptate velit esse c','175987263'),(477,'ididunt u','it esse ci','t anim id est labo','293829385'),(478,'iscing el',' laboris n','et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud','839843798'),(479,'onsequa','t. Duis aut',' tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis no','934952492'),(480,'nsect','labo','a aliqua. Ut enim ad minim veniam, quis nostrud','923841932'),(481,'liqui','n ulla','p ex ea commodo consequat. Duis aute ','381274319'),(482,'tur adi','icia dese','n ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor','984049839'),(483,'ullamco l','niam','oris nisi ut aliquip ex ea ','917598726'),(484,'t, consec','equat. ','cepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id','437987395'),(485,'nim v','o eiusmod t',' eiusmod tempor incididunt ut labore et dolore ','458284458'),(486,'ris ni','adipisci','orem ipsum dolor sit amet','234958731'),(487,'t nulla pa','olor in repr','iatur. Excepteur sint oc','284458925'),(488,'rud exe',', sunt','etur adipiscing elit, sed do eiusmod tempor incididunt ut la','527580777'),(489,'met, cons','ex ea','in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor s','349238419'),(490,' elit, s',' consect',' incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ','983097172'),(491,'onsequat. ','dolor si','aboris nisi ut aliquip ex ea ','574393495'),(492,'ore eu ',' consectetur','d tempor incididunt ut labore et dolore magn','319830971'),(493,'proide','t aliqui','ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore e','580777987'),(494,'met, con','lla pa',' sint occaecat cupidatat ','956139461'),(495,'e eu fug','uat. ','Ut enim ad minim veniam, quis nostrud exe','451313294'),(496,'si ut al','t mollit ani','dipiscing elit, sed do eiusmod tempor incididunt ut labore et','759872639'),(497,'roide','ute i','r in reprehen','382938574'),(498,'runt molli','runt molli','ent, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum ','513132945'),(499,'xercita','ur. Excep','nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irur','717202198'),(500,'o eiu','e dol','lit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden','743198309'),(501,' dolo','ris n','la pariatur. Excep','896395613'),(502,'pariatur. ','n culpa',' consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolor','561394614'),(503,' aliq','lum d','lit, sed do eiusmod tempor incididunt','262958462'),(504,'lore e','enim a',' dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteu','589257298'),(505,'idunt','ur sint occ',' consectetur adipiscing elit, sed do eiusmod t','851293829'),(506,' nostrud ','offi','t occaecat cup','148127892'),(507,'e irure do','nisi ut al','ip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess','731204891'),(508,' dolore eu','cing eli','idunt ut labore e','313294582');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-05 11:49:14
