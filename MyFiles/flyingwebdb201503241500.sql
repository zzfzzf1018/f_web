/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : flytest01

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-03-24 15:04:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fly_article
-- ----------------------------
DROP TABLE IF EXISTS `fly_article`;
CREATE TABLE `fly_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `article_content` text,
  `create_time` datetime NOT NULL,
  `last_update_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `article_type_id` int(11) NOT NULL,
  `article_label` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `article_little_title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_article
-- ----------------------------

-- ----------------------------
-- Table structure for fly_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `fly_article_comment`;
CREATE TABLE `fly_article_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `comment_content` varchar(4000) CHARACTER SET utf8 DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for fly_article_type
-- ----------------------------
DROP TABLE IF EXISTS `fly_article_type`;
CREATE TABLE `fly_article_type` (
  `article_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_type_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `article_parent_type_id` int(11) NOT NULL,
  `article_type_depth` int(11) NOT NULL,
  `article_type_remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`article_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_article_type
-- ----------------------------

-- ----------------------------
-- Table structure for fly_blog
-- ----------------------------
DROP TABLE IF EXISTS `fly_blog`;
CREATE TABLE `fly_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `blog_title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `blog_sub_title` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_blog
-- ----------------------------

-- ----------------------------
-- Table structure for fly_log
-- ----------------------------
DROP TABLE IF EXISTS `fly_log`;
CREATE TABLE `fly_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `from_url` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `to_url` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `visit_time` datetime NOT NULL,
  `to_userid` int(11) NOT NULL,
  `from_userid` int(11) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_log
-- ----------------------------

-- ----------------------------
-- Table structure for fly_message
-- ----------------------------
DROP TABLE IF EXISTS `fly_message`;
CREATE TABLE `fly_message` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `msg_content` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `msg_to_userid` int(11) NOT NULL,
  `msg_from_userid` int(11) NOT NULL,
  `msg_from_nickname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `send_time` datetime NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_message
-- ----------------------------

-- ----------------------------
-- Table structure for fly_role
-- ----------------------------
DROP TABLE IF EXISTS `fly_role`;
CREATE TABLE `fly_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `role_remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_role
-- ----------------------------

-- ----------------------------
-- Table structure for fly_user
-- ----------------------------
DROP TABLE IF EXISTS `fly_user`;
CREATE TABLE `fly_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pwd` varchar(100) CHARACTER SET utf8 NOT NULL,
  `create_time` datetime NOT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `last_update_time` datetime NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `portrait_img_url` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_user
-- ----------------------------

-- ----------------------------
-- Table structure for __migrationhistory
-- ----------------------------
DROP TABLE IF EXISTS `__migrationhistory`;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ContextKey` varchar(300) CHARACTER SET utf8 NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of __migrationhistory
-- ----------------------------
INSERT INTO `__migrationhistory` VALUES ('201503240700370_InitialCreate', 'Flying.Entity.BlogContext', 0x1F8B0800000000000400CD5CDB72DB36107DEF4CFF81C3E754B49D66DA66E4641225EE646AC79928C9AB0722219913F0121274AD6FEB433FA9BF5080579000480082284F5E2C5CCE828BB3CB25169BFFFEF977F9FA3142CE03CCF230892FDDF3C599EBC0D84F8230DE5DBA05DEFEF2BBFBFAD5CF3F2DDF07D1A3F3AD19F79C8E2333E3FCD2BDC7387DE979B97F0F23902FA2D0CF923CD9E2859F441E0812EFE2ECEC0FEFFCDC8304C225588EB3FC5CC4388C60F983FC5C25B10F535C0074930410E5753BE95997A8CE4710C13C053EBC74AFD09EAC6DF19E00E0BDEBBC4121208B5843B4751D10C70906982CF1E5D71CAE7196C4BB754A1A00FAB24F2119B7052887F5D25F76C3559FE2EC823E85D74D6CA0FC22C749A40978FEBC568B379C6EA45CB7551B515CA51FFAD4A5F22EDD37190E7D04574914C118BBCE50E4CB15CAE8F0818617FD79CF9C5EEFB396128439F4DF336755205C64F0328605CE007AE67C2A3628F4FF82FB2FC977185FC60542EC4AC95A495FAF81347DCA92146678FF196EEBF5FBD502EEC2C075BCFE7C6F08D04E17CCAD9EF1438C9F5FB8CE47B218B041B02506A38F354E32F8278C6106300C3E018C6146F6F543006BEA794A32C958041BB184924479AE73031EAF61BCC3F7C4E4CE88295D858F30685AEAA57C8D4362876412CE0AA82ACD4F625C6EAF54DEAF6756041639CCA6D5398E41E47D8FC95F23AB7DA1BFD6A5D7715FC522B44DE1743600AA0518D9003B772E1B68644ED9C085154A36D2A66D80FC69C3E63248B472475F648DAC77A4E14BF95BD31410C8F15D9106D600A97D2AECB502887D0B1D210A9172F0AA1B303207A271CF6B73ED28C45881EB26FE5ED7A5D1166DB746BB4EEFDA5A0698FA37450A1DC1C951C1731A4B0AB232C0B0693325584062F17B8B7819895DB3EFA7B289B728D9A91B031D7D3A2BD810E946EC6F27CEC5FA52E004DBED84B6A5A429AF6AC5B04A4979B199295EB111429BC720CAF673AD633ED7A7B41E53E399DB7666339D6D96447745361604BDB0220827B3887908F310DB898FE98A2DD85FA5616D2065E3BB81790E761AC15C3DE1744618E56646D8CC9BCB08A9BC79CE66A8A4E96FD20B3B5F23E563D9E1368532E4F708D8710E7D7881398C033BAEE21EE4248405AD02DE26098220B665E29F139D33283AFA74C69D2586A74FEDC4B9CCBB146887679A7429259FF693E72B3158754AD1D1A7A354E35C7419A5E694EC118ACA3B099FD2BF030B3C9AEDBBC2D8F6C741883D85E301A68577467A9FC4A3F1C0B905213F7E8C46011624583F4C9EEB9D9D2619F12D24C40FA3DD113E28C6FDE78A84682024EE813937A26DF051942D254EB376A7792DAAFF6415E61A6261FA35779D6E2955F67A314CD07A4A802348AA10E543C861AAC3E40928AA2C114675F83631F95A3CF75A616AFDB9239ADE7E3A4D40D0884A34BF8ACB2626D377A76872F5061691AFA55977C9C1AB6E3934B7213CC97588E50D48536207CCF588BAC55957772356BFACF56F0E441586E7E7820B04ED6A5B49E42D4AB43AE825A2C94AAFC22CC7C4C9800DA096B80A226E186B5412CD3692C476330C283ACD37F3E8DFD5DCB18B0C43A04E9957E4F9E888F25161BB2CEE060507505E5701086423B70F56092AA278EA46830A5AFDED2A02ACBBF431DBAF54116ADBA98EDBC4682C9C38DE1B43E9DE3E2C4ED7CA232DBDC15E0E59E371B419449F4336EA70D50249CDD9A94E4BF64200AB58F925031534012D075DFA98425A729D1A746783DB1ED5D90E753C3EDE6241F95E3D03E236A86DD4C4E16D886936D8E926EF28DC6B711A5705B74EDB8B50EB2E03CC5E6E5E08DD1BF1D45C4A15A21DEC56CA50CED8B588679F8A264CBA5D8A6C4AED61665D246038C6F009EA5CBBF411EA7E43F4E6184A0ADF0C783284AF3E24CC995E7E70E8535C3C4DA6E336DBCEEA5592BB9FC4E139CC346B62091C1CDBAE89C6A4C23944A66FEE78D0F4F57D22465F1F46E86B233E0B6749E317019BF5C92CE6B20995BBB4358BD4B5AA2335796916A769534761D3CE2C12DBAEB726811D30CDBA9A12A0F53A9E8C29B4A735E6E6D09CEAE89B8474A64CB94D469AD5AB38BB3D852270A24CB31E96F063A8D7A1B936311D075D7A98525A729D06B8E2E30041B73A36932B6631996675AC2E5BCC4275AD4FC618AB734F734B2CCF47F5CD503C4DA6CD3677C42A5392859EC4E159C3346B628922EB5EC793D9E7EA88DA7C9FCBA36CFD7D164F3B6E64D8E5688738BA7B5C265D5990B2E174474CB6ECA04EA3B2287593866EAA2C694F3B55933A064D82B200F4F7533870D33F6B966A89CB65F614C6F5CEEC2FB874D470482BBD4D4B0DD24FCB3A15345DB2CBE586AA21AE4354F61006342F74B35FFF400BDABF28FF5CA1B08C659A1137200EB730C7D55D13F7C5E2B741E9EFD329C3F5F23C4082541A5FA623CC249DA21A36A4AA9EBC1FA37B854454001B3F80CCBF07197F87A5433FA0DE55085F55BCEAE1F76F1795FA39F0CE8470692F2616A65DCB6A4025BB45A547A192B08E54A8D00BFDAD96948D56F73E3459C9DF9AA26FA1EAF7A70CFA61F5DF279C696B4076A5C712FCA05AD484EF5CADA811E147F6BE5FE666B2446161A8CC23192F5454076AE6F68CCA3E0FF000925C8671EDE5717DC17E506E69996FE2EACA4368C7E6732CA1F5AF191F99657C8E64DEA2C6A3D089AB63B415A1F0658B96082AAE52B4F5363C3CF0B1F512D42A5034A0A59D6AC1A390F2589C1CD6034A18A98DDB2FFFB385CA57FB598A76B8FA28139A0B2AA3A661B4EBFE0C786DA700EF28BCE66AEE6C115B506227738846D8561823A9A73B08CACA57268FCF15CF59B2BC6129DD264990D53A3A037BB155D376148BE1CAD81436D8B44AEDC8E1239F1098B340EC28BB33AC09B3B5394CC997CAA6CC1A96A9D9C121D55D967C58AF984BACC6735DCCAE764BF27AD1053CF2B9CE915E0FB23A2DB3C84FAF2C8B2F34916441C567EDD375575572826CC12621CF552B1BEDEFBA7342AD02ADB1FAAC09513A055C53F55B534F85F78A555ED2222F99848D620998AC024C86AB02DBD68071D06D8F0C3ED2281F93568FC9C033D5DA326969990CB938A4F08CCFE82D3DF6BFEA5DBE8379B8EB20E87FDC1B439FA6CA3AD066CC87789B347E833C14BBA266C8C0ADDC400C88E30394B85BE063D2ED935D284B3FBF01549021EFA30D0C3EC4B7054E0BFC26CF61B441BDD2EDA5372EBFACAEEBAF79799BD25FB98D4720CB0CA9EFBE8DDF16210ADA755F09025B09047570758C4256B5C63456D9ED5BA48F5CA65D0654ABEF1D4C49344F3CD61718A58880E5B7F11A3C4093B511EE5DC31DF0F74D5E560E32BD117DB52FDF8560978128AF31BAF9E427E170103DBEFA1FDC10A457B15A0000, '6.1.3-40302');