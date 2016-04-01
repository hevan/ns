-- MySQL dump 10.13  Distrib 5.7.11, for Win32 (AMD64)
--
-- Host: localhost    Database: nsyundb
-- ------------------------------------------------------
-- Server version	5.7.11-log
--
-- Table structure for table `authority`
--

DROP TABLE IF EXISTS `authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authority` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority`
--

LOCK TABLES `authority` WRITE;
/*!40000 ALTER TABLE `authority` DISABLE KEYS */;
INSERT INTO `authority` VALUES ('ROLE_ADMIN'),('ROLE_USER');
/*!40000 ALTER TABLE `authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) NOT NULL,
  `token` blob,
  `authentication_id` varchar(256) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `oauth2_request` blob,
  PRIMARY KEY (`id`),
  KEY `client_id_index` (`client_id`(255))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('d3f48718-3432-4cb2-9751-ef73f1a444f9','琝韁0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken矠6$鶿?\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.LinkedHashMap4繬\\l利\0Z\0accessOrderxr\0java.util.HashMap\诹\?`\?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0jtit\0$d3f48718-3432-4cb2-9751-ef73f1a444f9x\0sr\0java.util.Datehj?KYt\0\0xpw\0\0S\蔦謝ixsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\逩c漒猩?\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\?\ncT\証\0L\0valueq\0~\0xpt焑yJhbGciOiJSUzI1NiJ9.eyJhdWQiOlsicmVzb3VyY2UiXSwidXNlcl9uYW1lIjoiYWRtaW4iLCJzY29wZSI6WyJyZWFkIl0sImF0aSI6ImQzZjQ4NzE4LTM0MzItNGNiMi05NzUxLWVmNzNmMWE0NDRmOSIsImV4cCI6MTQ1OTM2MDk2NiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIiwiUk9MRV9BRE1JTiJdLCJqdGkiOiI0NzU1YjBiMy1lMTI2LTQwY2EtYmFhYy1jY2YxMGUyMDJhZWQiLCJjbGllbnRfaWQiOiJjbGllbnROYW1lIn0.MSL5ZSBEuCUvFKPq2fNHdyiD1NHERXWGHA16bkpWgGnZcYTNbc-WCSBBh2e6l-ed8IGCE1fuEJUG33Wi73Mf32aB8_NCqYW3rPBFJ_oiY3rb0CRLyRRc-MHEhDzr56Sm4b78VPctFmHhttpmSa56iNIDk7r8ANSFj3VrJmXTDiQJ7Itq_NkDwHQdXkQ5vtvqOk6FaUhysy8NigZyMwSzwyHD1c9EfyZN3vokfGTVcVLn7Z0sxO5gSr0MFJoiA_JId0af6-HtWN__yVFom9NFOGUo6miKMse_LhAmOrxawm7GCWvSj6M0WzOt3bnFio5235NxgIClehTydnYwlNu-rQsq\0~\0w\0\0S缺\'cxsr\0%java.util.Collections$UnmodifiableSet€捬彌€U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0€\薧?\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\豯\譠昞?\0\0xr\0java.util.HashSet篋厱柛?\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxt\0bearertceyJhbGciOiJSUzI1NiJ9.eyJhdWQiOlsicmVzb3VyY2UiXSwidXNlcl9uYW1lIjoiYWRtaW4iLCJzY29wZSI6WyJyZWFkIl0sImV4cCI6MTQ1OTM5Njk2NiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIiwiUk9MRV9BRE1JTiJdLCJqdGkiOiJkM2Y0ODcxOC0zNDMyLTRjYjItOTc1MS1lZjczZjFhNDQ0ZjkiLCJjbGllbnRfaWQiOiJjbGllbnROYW1lIn0.K9AfqHFD-bQ_1K5Iku5EFpmoS0Z1nrV7WtlloxQZMWuWYUr7AzGWsVzde3pz2o7L7YqJu4RzA66UJtBnP6S6SoxXlie2VgApXiBDrBAVzANU9g18wFMXthoDQ9OoQv4504x9DbXQzNX7MTt4QnYCNnATv1G_pTdNAzMQl1Yjvh4UOde5aqvJw5HuC4qvPkhrym6WDZWF91Hvh-miadajA9j5vQNRP0odD3fz8OZBJJxeMjP45jAtHjd7MDrjr81_cdOM0XOiOTK0VobsLTZ78LSlu7c2aLIMMMrxfJT3HXwo5Rq6I1jFJLRL9DdmZn9SWXAZbXR4PGlLibKE6WQ7-A','603dd4002b391c43aa3c13a399850c51','admin','clientName','琝韁0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication紷bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken营(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList?%1礬鞄\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0€\薧?\0L\0cq\0~\0xpsr\0java.util.ArrayListx乗?橽莂?\0I\0sizexp\0\0\0w\0\0\0sr\0com.ns.base.domain.Authority\?她ZD\'\0L\0namet\0Ljava/lang/String;xpt\0	ROLE_USERsq\0~\0\rt\0\nROLE_ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>i?\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\nclientNamesr\0%java.util.Collections$UnmodifiableMap癀t?B\0L\0mq\0~\0xpsr\0java.util.HashMap\诹\?`\?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0readt\0	client_idt\0\nclientNamet\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet€捬彌€U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\豯\譠昞?\0\0xr\0java.util.HashSet篋厱柛?\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0!xsq\0~\0)w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0?\0L\0roleq\0~\0xpt\0ROLE_CLIENTsq\0~\0,t\0ROLE_TRUSTEDxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0(w\0\0\0?@\0\0\0\0\0t\0resourcexsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0?\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4繬\\l利\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0q\0~\0q\0~\0 q\0~\0!t\0\rclient_secrett\0clientPasswordq\0~\0\"q\0~\0#x\0psr\0com.ns.base.dto.UserCredentials\譢?O?\踈r\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordHashq\0~\0L\0saltq\0~\0>L\0usernameq\0~\0xpsr\0/org.hibernate.collection.internal.PersistentSet哱潺◎\頫喁\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection凧~w畭\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Bxp\0\0sr\0java.lang.Long;媆鋹虖#\?\0J\0valuexr\0java.lang.Number啲?擻鄫\0\0xp\0\0\0\0\0\0\0sr\0com.ns.base.domain.Usera┌\豛?\0Z\0	activatedL\0\ractivationKeyq\0~\0L\0authoritiesq\0~\0L\0emailq\0~\0L\0idq\0~\0>L\0mobileq\0~\0L\0passwordq\0~\0L\0resetPasswordKeyq\0~\0L\0saltq\0~\0>L\0userAccountt\0 Lcom/ns/base/domain/UserAccount;L\0usernameq\0~\0xppq\0~\0Ct\0\radmin@mail.meq\0~\0Fpt\0123456psq\0~\0D\0\0\0\0\0\0\0dpt\0admint\0#com.ns.base.domain.User.authoritiespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0q\0~\0xq\0~\0Fq\0~\0Kq\0~\0Lq\0~\0M','4755b0b3-e126-40ca-baac-ccf10e202aed',14,'琝韁0ur\0[B?T\?\0\0xp\0\0h琝韁0sr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiest\0Ljava/util/Collection;L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>i?\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\nclientNamesr\0%java.util.Collections$UnmodifiableMap癀t?B\0L\0mq\0~\0xpsr\0java.util.HashMap\诹\?`\?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0readt\0	client_idt\0\nclientNamet\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet€捬彌€U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0€\薧?\0L\0cq\0~\0xpsr\0java.util.LinkedHashSet\豯\譠昞?\0\0xr\0java.util.HashSet篋厱柛?\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0xsq\0~\0w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0?\0L\0roleq\0~\0xpt\0ROLE_CLIENTsq\0~\0t\0ROLE_TRUSTEDxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0w\0\0\0?@\0\0\0\0\0t\0resourcexsq\0~\0w\0\0\0?@\0\0\0\0\0\0x');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_approvals`
--

DROP TABLE IF EXISTS `oauth_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NULL DEFAULT NULL,
  `lastModifiedAt` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `client_id` varchar(255) DEFAULT NULL,
  `expires_at` tinyblob,
  `last_modified_at` tinyblob,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_approvals`
--

LOCK TABLES `oauth_approvals` WRITE;
/*!40000 ALTER TABLE `oauth_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT '1',
  `refresh_token_validity` int(11) DEFAULT '1',
  `additional_information` text,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `archived` tinyint(1) DEFAULT '0',
  `trusted` tinyint(1) DEFAULT '0',
  `autoapprove` varchar(256) DEFAULT 'false',
  `resources_ids` varchar(255) DEFAULT NULL,
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `client_id_UNIQUE` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('clientName','resource','clientPassword','read,write,trust','refresh_token,password,authorization_code,implicit,client_credentials',NULL,'ROLE_CLIENT,ROLE_TRUSTED',40000,4000,NULL,'2015-12-17 08:00:00',1,1,'APPROVED','resource','');
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(256) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UN_INDEX_TOKEN_ID` (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UN_INDEX_TOKEN_ID_REF` (`token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES ('4755b0b3-e126-40ca-baac-ccf10e202aed','琝韁0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\逩c漒猩?\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\?\ncT\証\0L\0valuet\0Ljava/lang/String;xpt焑yJhbGciOiJSUzI1NiJ9.eyJhdWQiOlsicmVzb3VyY2UiXSwidXNlcl9uYW1lIjoiYWRtaW4iLCJzY29wZSI6WyJyZWFkIl0sImF0aSI6ImQzZjQ4NzE4LTM0MzItNGNiMi05NzUxLWVmNzNmMWE0NDRmOSIsImV4cCI6MTQ1OTM2MDk2NiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIiwiUk9MRV9BRE1JTiJdLCJqdGkiOiI0NzU1YjBiMy1lMTI2LTQwY2EtYmFhYy1jY2YxMGUyMDJhZWQiLCJjbGllbnRfaWQiOiJjbGllbnROYW1lIn0.MSL5ZSBEuCUvFKPq2fNHdyiD1NHERXWGHA16bkpWgGnZcYTNbc-WCSBBh2e6l-ed8IGCE1fuEJUG33Wi73Mf32aB8_NCqYW3rPBFJ_oiY3rb0CRLyRRc-MHEhDzr56Sm4b78VPctFmHhttpmSa56iNIDk7r8ANSFj3VrJmXTDiQJ7Itq_NkDwHQdXkQ5vtvqOk6FaUhysy8NigZyMwSzwyHD1c9EfyZN3vokfGTVcVLn7Z0sxO5gSr0MFJoiA_JId0af6-HtWN__yVFom9NFOGUo6miKMse_LhAmOrxawm7GCWvSj6M0WzOt3bnFio5235NxgIClehTydnYwlNu-rQsr\0java.util.Datehj?KYt\0\0xpw\0\0S缺\'cx','琝韁0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication紷bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken营(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList?%1礬鞄\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0€\薧?\0L\0cq\0~\0xpsr\0java.util.ArrayListx乗?橽莂?\0I\0sizexp\0\0\0w\0\0\0sr\0com.ns.base.domain.Authority\?她ZD\'\0L\0namet\0Ljava/lang/String;xpt\0	ROLE_USERsq\0~\0\rt\0\nROLE_ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>i?\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\nclientNamesr\0%java.util.Collections$UnmodifiableMap癀t?B\0L\0mq\0~\0xpsr\0java.util.HashMap\诹\?`\?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0readt\0	client_idt\0\nclientNamet\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet€捬彌€U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\豯\譠昞?\0\0xr\0java.util.HashSet篋厱柛?\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0!xsq\0~\0)w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0?\0L\0roleq\0~\0xpt\0ROLE_CLIENTsq\0~\0,t\0ROLE_TRUSTEDxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0(w\0\0\0?@\0\0\0\0\0t\0resourcexsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0?\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4繬\\l利\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0q\0~\0q\0~\0 q\0~\0!t\0\rclient_secrett\0clientPasswordq\0~\0\"q\0~\0#x\0psr\0com.ns.base.dto.UserCredentials\譢?O?\踈r\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordHashq\0~\0L\0saltq\0~\0>L\0usernameq\0~\0xpsr\0/org.hibernate.collection.internal.PersistentSet哱潺◎\頫喁\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection凧~w畭\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Bxp\0\0sr\0java.lang.Long;媆鋹虖#\?\0J\0valuexr\0java.lang.Number啲?擻鄫\0\0xp\0\0\0\0\0\0\0sr\0com.ns.base.domain.Usera┌\豛?\0Z\0	activatedL\0\ractivationKeyq\0~\0L\0authoritiesq\0~\0L\0emailq\0~\0L\0idq\0~\0>L\0mobileq\0~\0L\0passwordq\0~\0L\0resetPasswordKeyq\0~\0L\0saltq\0~\0>L\0userAccountt\0 Lcom/ns/base/domain/UserAccount;L\0usernameq\0~\0xppq\0~\0Ct\0\radmin@mail.meq\0~\0Fpt\0123456psq\0~\0D\0\0\0\0\0\0\0dpt\0admint\0#com.ns.base.domain.User.authoritiespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0q\0~\0xq\0~\0Fq\0~\0Kq\0~\0Lq\0~\0M',7);
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(19,2) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `sell_count` int(11) DEFAULT NULL,
  `sell_price` decimal(19,2) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5gjhq2fmknk50h8859nf0bcmx` (`order_id`),
  CONSTRAINT `FK_5gjhq2fmknk50h8859nf0bcmx` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `order_no` varchar(12) DEFAULT NULL,
  `pay_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture_resource`
--

DROP TABLE IF EXISTS `picture_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `resource_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture_resource`
--

LOCK TABLES `picture_resource` WRITE;
/*!40000 ALTER TABLE `picture_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `picture_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `corp_id` bigint(20) DEFAULT NULL,
  `corp_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `other_info` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `product_no` varchar(255) DEFAULT NULL,
  `sell_price` decimal(19,2) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '0',
  `activationkey` varchar(50) DEFAULT NULL,
  `resetpasswordkey` varchar(50) DEFAULT NULL,
  `salt` bigint(20) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@mail.me','123456',1,NULL,NULL,100,NULL),(2,'user','user@mail.me','123456',1,NULL,NULL,100,NULL),(3,'rajith','rajith@abc.com','123456',1,NULL,NULL,100,NULL),(4,'bob','bob@bob.com','123456',1,NULL,NULL,100,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authority`
--

DROP TABLE IF EXISTS `user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_authority` (
  `id` int(11) NOT NULL,
  `authority` varchar(50) NOT NULL,
  KEY `authority` (`authority`),
  KEY `user_authority_idx_1` (`id`,`authority`),
  CONSTRAINT `user_authority_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_authority_ibfk_2` FOREIGN KEY (`authority`) REFERENCES `authority` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authority`
--

LOCK TABLES `user_authority` WRITE;
/*!40000 ALTER TABLE `user_authority` DISABLE KEYS */;
INSERT INTO `user_authority` VALUES (1,'ROLE_ADMIN'),(1,'ROLE_USER'),(2,'ROLE_USER'),(3,'ROLE_USER'),(4,'ROLE_ADMIN');
/*!40000 ALTER TABLE `user_authority` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-01 11:16:43
