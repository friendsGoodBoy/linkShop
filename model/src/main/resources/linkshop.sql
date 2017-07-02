/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.51b-community-nt-log : Database - linkup
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `t_log` */

CREATE TABLE `t_log` (
  `id` varchar(36) NOT NULL,
  `actionkey` varchar(100) default NULL,
  `opertime` varchar(20) default NULL,
  `ip` varchar(50) default NULL,
  `userid` varchar(36) default NULL,
  `username` varchar(100) default NULL,
  `params` text,
  `result` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_log` */

insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('71d9d5bce5d5406eb069e3a41e6dfbb9','/menu/saveOrUpdate','2017-06-22 23:12:17','127.0.0.1','1','admin','{\"name\":[\"内容管理\"],\"description\":[\"内容管理\"],\"icon\":[\"fa-book\"],\"pageurl\":[\"\"],\"type\":[\"true\"],\"status\":[\"true\"],\"treelevel\":[\"0\"],\"isleaf\":[\"false\"],\"loaded\":[\"true\"],\"expanded\":[\"false\"],\"oper\":[\"edit\"],\"id\":[\"92a050d65ccd4b99af856f5fa1ab74fb\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('cdfbe70b8d5d4c31a808e1d500e77c2f','/menu/saveOrUpdate','2017-06-22 23:12:29','127.0.0.1','1','admin','{\"name\":[\"内容管理\"],\"description\":[\"内容管理\"],\"icon\":[\"fa-book\"],\"pageurl\":[\"\"],\"type\":[\"true\"],\"status\":[\"true\"],\"treelevel\":[\"0\"],\"isleaf\":[\"false\"],\"loaded\":[\"true\"],\"expanded\":[\"true\"],\"oper\":[\"edit\"],\"id\":[\"92a050d65ccd4b99af856f5fa1ab74fb\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('241b45b4ff834a3db7ca74adf2c5df2c','/menu/saveOrUpdate','2017-06-29 16:31:56','127.0.0.1','1','admin','{\"name\":[\"内容管理\"],\"description\":[\"内容管理\"],\"icon\":[\"fa-book\"],\"pageurl\":[\"\"],\"type\":[\"true\"],\"status\":[\"true\"],\"treelevel\":[\"0\"],\"isleaf\":[\"false\"],\"loaded\":[\"true\"],\"expanded\":[\"false\"],\"oper\":[\"edit\"],\"id\":[\"92a050d65ccd4b99af856f5fa1ab74fb\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('43aa9ed9d8bd44b9bc7bd206d9da7453','/menu/saveOrUpdate','2017-06-29 16:49:04','127.0.0.1','1','admin','{\"name\":[\"机构管理\"],\"description\":[\"机构管理\"],\"pageurl\":[\"org\"],\"type\":[\"true\"],\"status\":[\"true\"],\"oper\":[\"add\"],\"id\":[\"_empty\"],\"pid\":[\"a9adf68922464523b44a58b4db4f5fc5\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('b96d0ff08f374737ac7c4a45124e6fb7','/menu/saveOrUpdate','2017-06-29 16:49:23','127.0.0.1','1','admin','{\"name\":[\"机构管理\"],\"description\":[\"机构管理\"],\"icon\":[\"fa-home\"],\"pageurl\":[\"org\"],\"type\":[\"false\"],\"status\":[\"true\"],\"treelevel\":[\"2\"],\"isleaf\":[\"true\"],\"loaded\":[\"true\"],\"expanded\":[\"false\"],\"oper\":[\"edit\"],\"id\":[\"845f420d66d44dc790b8fcc5f8e30dd8\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('d506a759fc01433199c6b0298fb23465','/menu/saveOrUpdate','2017-06-30 11:38:43','127.0.0.1','1','admin','{\"name\":[\"日志管理\"],\"description\":[\"日志管理\"],\"icon\":[\"fa-book\"],\"pageurl\":[\"\"],\"type\":[\"true\"],\"status\":[\"true\"],\"treelevel\":[\"1\"],\"isleaf\":[\"true\"],\"loaded\":[\"true\"],\"expanded\":[\"true\"],\"level\":[\"\"],\"isLeaf\":[\"false\"],\"oper\":[\"edit\"],\"id\":[\"a5c5448a984648d58c99f8580f95dc84\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('749976e7182841a786354aba4d12ea93','/menu/saveOrUpdate','2017-06-30 18:14:23','127.0.0.1','1','admin','{\"name\":[\"内容管理\"],\"description\":[\"内容管理\"],\"icon\":[\"fa-book\"],\"pageurl\":[\"\"],\"type\":[\"true\"],\"status\":[\"true\"],\"loaded\":[\"true\"],\"expanded\":[\"true\"],\"treelevel\":[\"\"],\"isleaf\":[\"true\"],\"oper\":[\"edit\"],\"id\":[\"92a050d65ccd4b99af856f5fa1ab74fb\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('769792ca17cf44b78bbb89a6b676af2d','/menu/saveOrUpdate','2017-06-30 18:14:27','127.0.0.1','1','admin','{\"name\":[\"内容管理\"],\"description\":[\"内容管理\"],\"icon\":[\"fa-book\"],\"pageurl\":[\"\"],\"type\":[\"true\"],\"status\":[\"true\"],\"loaded\":[\"true\"],\"expanded\":[\"false\"],\"treelevel\":[\"\"],\"isleaf\":[\"true\"],\"oper\":[\"edit\"],\"id\":[\"92a050d65ccd4b99af856f5fa1ab74fb\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('fcc181af409c43838178adb74be55db8','/menu/saveOrUpdate','2017-06-30 18:14:31','127.0.0.1','1','admin','{\"name\":[\"系统管理\"],\"description\":[\"系统管理\"],\"icon\":[\"fa-home\"],\"pageurl\":[\"\"],\"type\":[\"true\"],\"status\":[\"true\"],\"loaded\":[\"true\"],\"expanded\":[\"false\"],\"treelevel\":[\"\"],\"isleaf\":[\"true\"],\"oper\":[\"edit\"],\"id\":[\"8f5251f7dd404d23947eec259e1cb2e1\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('670b36814f1f47b99d3855bb470eeb14','/menu/saveOrUpdate','2017-06-30 21:49:32','127.0.0.1','1','admin','{\"name\":[\"登录日志\"],\"description\":[\"登录日志\"],\"pageurl\":[\"loginLog\"],\"type\":[\"false\"],\"status\":[\"true\"],\"parent\":[\"a5c5448a984648d58c99f8580f95dc84\"],\"oper\":[\"add\"],\"id\":[\"_empty\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('c18631515a86418095bab69011ae386a','/menu/saveOrUpdate','2017-06-30 23:48:02','127.0.0.1','1','admin','{\"name\":[\"操作日志\"],\"description\":[\"操作日志\"],\"pageurl\":[\"loginLog\"],\"type\":[\"true\"],\"status\":[\"true\"],\"parent\":[\"a5c5448a984648d58c99f8580f95dc84\"],\"oper\":[\"add\"],\"id\":[\"_empty\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('37e54f76d9f04cceb970070302971355','/menu/saveOrUpdate','2017-06-30 23:48:38','127.0.0.1','1','admin','{\"oper\":[\"del\"],\"id\":[\"b4d751a07daf41eba9fb40863228118a\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('f395fb24d2f44e08be7498a333f22a05','/menu/saveOrUpdate','2017-06-30 23:50:50','127.0.0.1','1','admin','{\"name\":[\"操作日志\"],\"description\":[\"操作日志\"],\"pageurl\":[\"loginLog\"],\"type\":[\"false\"],\"status\":[\"true\"],\"parent\":[\"616d88f2d3184f5fb65213a557207c8c\"],\"oper\":[\"add\"],\"id\":[\"_empty\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('a2fd79e3552d455688a667cd8168a508','/menu/saveOrUpdate','2017-06-30 23:56:11','127.0.0.1','1','admin','{\"oper\":[\"del\"],\"id\":[\"796515110e5645cdaa82fae2906079cb\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('4a26e682b9954c7f81567dfbd2a6857f','/menu/saveOrUpdate','2017-06-30 23:56:48','127.0.0.1','1','admin','{\"name\":[\"操作日志\"],\"description\":[\"操作日志\"],\"pageurl\":[\"loginLog\"],\"type\":[\"false\"],\"status\":[\"true\"],\"oper\":[\"add\"],\"id\":[\"_empty\"],\"parent\":[\"a5c5448a984648d58c99f8580f95dc84\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('7c7e23b96d1943f4be2b347a7d1ba446','/menu/saveOrUpdate','2017-06-30 23:58:22','127.0.0.1','1','admin','{\"name\":[\"登录日志\"],\"description\":[\"登录日志\"],\"icon\":[\"fa-book\"],\"pageurl\":[\"loginLog\"],\"type\":[\"false\"],\"status\":[\"true\"],\"loaded\":[\"true\"],\"level\":[\"2\"],\"isLeaf\":[\"\"],\"expanded\":[\"false\"],\"oper\":[\"edit\"],\"id\":[\"e93ba26e8f4b431faea71a7c4dd0bc66\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('c1caacfedd234956b402ceb5db4cf3c4','/user/saveOrUpdate','2017-07-01 11:21:53','127.0.0.1','1','admin','{\"username\":[\"ml\"],\"email\":[\"ml@sina.com\"],\"phone\":[\"18709481744\"],\"oper\":[\"add\"],\"id\":[\"_empty\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('7acebb1d09814fc0bc94e77509d3be7f','/user/saveOrUpdate','2017-07-01 11:22:10','127.0.0.1','1','admin','{\"username\":[\"zq\"],\"email\":[\"zq@sina.com\"],\"phone\":[\"18709481755\"],\"oper\":[\"add\"],\"id\":[\"_empty\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('c10a816cc7cc42d6999575184d72435c','/menu/saveAssignMenu','2017-07-01 17:14:30','127.0.0.1','1','admin','{\"listMenuId\":[\"92a050d65ccd4b99af856f5fa1ab74fb\",\"8ff3512c8b024aa5ad479fda78a97a27\",\"d4889471fbed416e9d31491bc5508267\",\"8f5251f7dd404d23947eec259e1cb2e1\",\"1d98ec26be124b9fb4b0413b90a2e7ce\",\"a9adf68922464523b44a58b4db4f5fc5\",\"edd5bbd3257e4ae0b6992fb40c27db3b\",\"3fc407c514634781b12f7c51c03cb1bc\",\"117ada70d8274490b7eb458e2e2d12b1\",\"845f420d66d44dc790b8fcc5f8e30dd8\",\"a5c5448a984648d58c99f8580f95dc84\",\"616d88f2d3184f5fb65213a557207c8c\",\"e93ba26e8f4b431faea71a7c4dd0bc66\",\"7266ff9acc20411fa57cc314b5a63a4e\",\"39329060bf3e41e992b945a0706287c9\",\"d0a58a54ce65446b873ee2f1e18dc7f3\",\"ff11337fa66f42a29641826d6121c30c\"],\"roleId\":[\"422450f2718d4a82adb21532688e8b7c\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"角色菜单分配成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('097067e473354bffaedfbf93e57fa8a2','/permission/saveOrUpdate','2017-07-01 17:40:59','127.0.0.1','1','admin','{\"name\":[\"登陆日志\"],\"value\":[\"loginLog\"],\"url\":[\"/log/loginLog\"],\"intro\":[\"登陆日志\"],\"oper\":[\"add\"],\"id\":[\"_empty\"],\"parent\":[\"63669584c4bf48818447df1f05974159\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('d00472c8accf4355a62afc64c26ff30f','/permission/saveAssignPermission','2017-07-01 17:51:47','127.0.0.1','1','admin','{\"listModelId\":[\"0b1c232a49e246238d305584ff3a07f3\",\"ade96a1d5408429e8c0278892de6ae49\",\"ff458a3215de465cbbbf3c5ee8c3cb68\",\"4fd5ad8754c2401598d842c42d405d20\",\"86d1fc7c8d96487b8fbc23e338f989bc\",\"d34df1c7c98445afb655a70ce58f5d21\",\"536c3f08ebfc47549299aaf4b08348bd\",\"7559cdbe26974f5dab79bbbeb252d488\",\"c9a6db7753b84b8b8d820670f18f32d1\",\"e7cb77a3935b462a812aa1a5ce431747\",\"8a443ac5d35248babaa07d54a0b3fb89\",\"72f027441ed44a81b7eaa2d74a063f8d\",\"52afc7a509cd4dd8af644e510f09378c\",\"38268cad495241a2915938ca217a8c7e\",\"5ce9f13d9b1848289baae69bb58e5b47\",\"ae2052338fa14b00bf906ed71acba61f\",\"44e285d8c6e5407b8d22cea3f79e6f48\",\"2543f0ac93d84785bf25e39f3618cf3d\",\"f7814d28f4f8443b89929d23f3e37434\",\"50176f41f84c463e95af365ba4dd4a07\",\"db3b129a44b148c88a3bf8f585d720a1\",\"63669584c4bf48818447df1f05974159\",\"34b1e3273611428fb7973f87084c01b3\",\"84c7faa779cd4ced86937bfc7f8d02ea\",\"69a73c0d7437430cbbefafa7b4f67a63\",\"b7b39effcf9b4e409cca9afc41e12a19\"],\"roleId\":[\"422450f2718d4a82adb21532688e8b7c\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"权限分配成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('38ce3ae3cb2b47b4a8b42431092d82e3','/permission/saveAssignPermission','2017-07-01 17:53:21','127.0.0.1','1','admin','{\"listModelId\":[\"0b1c232a49e246238d305584ff3a07f3\",\"ade96a1d5408429e8c0278892de6ae49\",\"ff458a3215de465cbbbf3c5ee8c3cb68\",\"4fd5ad8754c2401598d842c42d405d20\",\"86d1fc7c8d96487b8fbc23e338f989bc\",\"d34df1c7c98445afb655a70ce58f5d21\",\"536c3f08ebfc47549299aaf4b08348bd\",\"7559cdbe26974f5dab79bbbeb252d488\",\"c9a6db7753b84b8b8d820670f18f32d1\",\"e7cb77a3935b462a812aa1a5ce431747\",\"8a443ac5d35248babaa07d54a0b3fb89\",\"72f027441ed44a81b7eaa2d74a063f8d\",\"52afc7a509cd4dd8af644e510f09378c\",\"38268cad495241a2915938ca217a8c7e\",\"5ce9f13d9b1848289baae69bb58e5b47\",\"ae2052338fa14b00bf906ed71acba61f\",\"44e285d8c6e5407b8d22cea3f79e6f48\",\"2543f0ac93d84785bf25e39f3618cf3d\",\"f7814d28f4f8443b89929d23f3e37434\",\"50176f41f84c463e95af365ba4dd4a07\",\"db3b129a44b148c88a3bf8f585d720a1\",\"63669584c4bf48818447df1f05974159\",\"34b1e3273611428fb7973f87084c01b3\",\"69a73c0d7437430cbbefafa7b4f67a63\",\"b7b39effcf9b4e409cca9afc41e12a19\"],\"roleId\":[\"422450f2718d4a82adb21532688e8b7c\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"权限分配成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('bfff7cd439694ebba64ae0b52d56a3f4','/permission/saveOrUpdate','2017-07-02 19:31:46','127.0.0.1','1','admin','{\"name\":[\"分配权限\"],\"value\":[\"assignpermission\"],\"url\":[\"/permission/assignPermission\"],\"intro\":[\"查询分配权限\"],\"loaded\":[\"true\"],\"level\":[\"3\"],\"isLeaf\":[\"\"],\"expanded\":[\"false\"],\"icon\":[\"\"],\"oper\":[\"edit\"],\"id\":[\"5ce9f13d9b1848289baae69bb58e5b47\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('da212c7261544187a0ed71221e396646','/permission/saveOrUpdate','2017-07-02 19:33:07','127.0.0.1','1','admin','{\"name\":[\"更新分配权限\"],\"value\":[\"saveassignpermission\"],\"url\":[\"/permission/saveAssignPermission\"],\"intro\":[\"更新角色分配的权限\"],\"oper\":[\"edit\"],\"id\":[\"ae2052338fa14b00bf906ed71acba61f\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('7c3e99745e9a4187b680a345b0c44342','/permission/saveOrUpdate','2017-07-02 19:33:53','127.0.0.1','1','admin','{\"name\":[\"分配菜单\"],\"value\":[\"menuassignmenu\"],\"url\":[\"/menu/assignMenu\"],\"intro\":[\"查询要分配的菜单\"],\"loaded\":[\"true\"],\"level\":[\"3\"],\"isLeaf\":[\"\"],\"expanded\":[\"false\"],\"icon\":[\"\"],\"oper\":[\"edit\"],\"id\":[\"52afc7a509cd4dd8af644e510f09378c\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('af7fa219ce584594b23899fdb771db68','/permission/saveOrUpdate','2017-07-02 19:34:07','127.0.0.1','1','admin','{\"name\":[\"更新分配菜单\"],\"value\":[\"saveassignmenu\"],\"url\":[\"/menu/saveAssignMenu\"],\"intro\":[\"更新角色分配的菜单\"],\"loaded\":[\"true\"],\"level\":[\"3\"],\"isLeaf\":[\"\"],\"expanded\":[\"false\"],\"icon\":[\"\"],\"oper\":[\"edit\"],\"id\":[\"38268cad495241a2915938ca217a8c7e\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"操作成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');
insert  into `t_log`(`id`,`actionkey`,`opertime`,`ip`,`userid`,`username`,`params`,`result`) values ('8f9ec0c7c02d42d89b8da5a303ac9a02','/permission/saveAssignPermission','2017-07-02 19:36:30','127.0.0.1','1','admin','{\"listModelId\":[\"0b1c232a49e246238d305584ff3a07f3\",\"ade96a1d5408429e8c0278892de6ae49\",\"ff458a3215de465cbbbf3c5ee8c3cb68\",\"4fd5ad8754c2401598d842c42d405d20\",\"86d1fc7c8d96487b8fbc23e338f989bc\",\"d34df1c7c98445afb655a70ce58f5d21\",\"536c3f08ebfc47549299aaf4b08348bd\",\"7559cdbe26974f5dab79bbbeb252d488\",\"c9a6db7753b84b8b8d820670f18f32d1\",\"e7cb77a3935b462a812aa1a5ce431747\",\"8a443ac5d35248babaa07d54a0b3fb89\",\"72f027441ed44a81b7eaa2d74a063f8d\",\"52afc7a509cd4dd8af644e510f09378c\",\"38268cad495241a2915938ca217a8c7e\",\"5ce9f13d9b1848289baae69bb58e5b47\",\"ae2052338fa14b00bf906ed71acba61f\",\"44e285d8c6e5407b8d22cea3f79e6f48\",\"2543f0ac93d84785bf25e39f3618cf3d\",\"f7814d28f4f8443b89929d23f3e37434\",\"50176f41f84c463e95af365ba4dd4a07\",\"db3b129a44b148c88a3bf8f585d720a1\",\"63669584c4bf48818447df1f05974159\",\"34b1e3273611428fb7973f87084c01b3\",\"84c7faa779cd4ced86937bfc7f8d02ea\",\"69a73c0d7437430cbbefafa7b4f67a63\",\"b7b39effcf9b4e409cca9afc41e12a19\"],\"roleId\":[\"422450f2718d4a82adb21532688e8b7c\"]}','{\"view\":null,\"forIE\":false,\"devMode\":true,\"encoding\":\"UTF-8\",\"jsonText\":\"{\\\"msg\\\":\\\"权限分配成功！\\\",\\\"status\\\":\\\"0000\\\"}\",\"attrs\":null}');

/*Table structure for table `t_menu` */

CREATE TABLE `t_menu` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) default NULL,
  `parent` varchar(32) default NULL,
  `description` varchar(255) default NULL,
  `pageurl` varchar(255) default NULL,
  `type` varchar(10) default NULL,
  `status` varchar(10) default NULL,
  `loaded` varchar(10) default NULL,
  `icon` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_menu` */

insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('edd5bbd3257e4ae0b6992fb40c27db3b','用户管理','a9adf68922464523b44a58b4db4f5fc5','用户管理','user','false','true','false','fa-user');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('1d98ec26be124b9fb4b0413b90a2e7ce','菜单管理','8f5251f7dd404d23947eec259e1cb2e1','菜单管理','menu','false','true','true','fa-book');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('a9adf68922464523b44a58b4db4f5fc5','授权管理','8f5251f7dd404d23947eec259e1cb2e1','授权管理','','true','true','true','fa-key');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('3fc407c514634781b12f7c51c03cb1bc','角色管理','a9adf68922464523b44a58b4db4f5fc5','角色管理','role','false','true','true','fa-user');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('a5c5448a984648d58c99f8580f95dc84','日志管理','8f5251f7dd404d23947eec259e1cb2e1','日志管理',NULL,'true','true','true','fa-book');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('7266ff9acc20411fa57cc314b5a63a4e','系统设置','8f5251f7dd404d23947eec259e1cb2e1','系统设置','config','false','true','true','fa-cog');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('616d88f2d3184f5fb65213a557207c8c','操作日志','a5c5448a984648d58c99f8580f95dc84','操作日志','log','false','true','true','fa-book');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('8ff3512c8b024aa5ad479fda78a97a27','文章分类','92a050d65ccd4b99af856f5fa1ab74fb','文章分类','channel','false','true','true','fa-book');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('92a050d65ccd4b99af856f5fa1ab74fb','内容管理','','内容管理',NULL,'true','true','true','fa-book');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('d4889471fbed416e9d31491bc5508267','导航管理','92a050d65ccd4b99af856f5fa1ab74fb','导航管理','nav','false','true','true','fa-home');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('39329060bf3e41e992b945a0706287c9','监控管理','8f5251f7dd404d23947eec259e1cb2e1','系统管理','','true','true','true','fa-book');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('d0a58a54ce65446b873ee2f1e18dc7f3','数据源监控','39329060bf3e41e992b945a0706287c9','数据源监控','druid/index.html','true','true','true','fa-home');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('117ada70d8274490b7eb458e2e2d12b1','权限管理','a9adf68922464523b44a58b4db4f5fc5','权限管理','permission','false','true','true','fa-key');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('8f5251f7dd404d23947eec259e1cb2e1','系统管理','','系统管理',NULL,'true','true','true','fa-home');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('ff11337fa66f42a29641826d6121c30c','系统监控','39329060bf3e41e992b945a0706287c9','系统监控','monitoring?','false','true','true','fa-book');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('845f420d66d44dc790b8fcc5f8e30dd8','机构管理','a9adf68922464523b44a58b4db4f5fc5','机构管理','org','false','true','true','fa-home');
insert  into `t_menu`(`id`,`name`,`parent`,`description`,`pageurl`,`type`,`status`,`loaded`,`icon`) values ('e93ba26e8f4b431faea71a7c4dd0bc66','登录日志','a5c5448a984648d58c99f8580f95dc84','登录日志','loginLog','false','true','true','fa-book');

/*Table structure for table `t_org` */

CREATE TABLE `t_org` (
  `id` int(32) NOT NULL auto_increment COMMENT '主键',
  `name` varchar(100) default NULL,
  `comcode` varchar(10) default NULL,
  `type` varchar(10) default NULL,
  `sortno` int(11) default NULL,
  `desciption` varchar(255) default NULL,
  `status` varchar(4) default NULL,
  `pid` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_org` */

/*Table structure for table `t_permission` */

CREATE TABLE `t_permission` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) default NULL,
  `value` varchar(50) default NULL,
  `url` varchar(255) default NULL,
  `intro` varchar(255) default NULL,
  `parent` varchar(32) default '0',
  `created_at` varchar(20) default NULL,
  `updated_at` varchar(20) default NULL,
  `deleted_at` varchar(20) default NULL,
  `loaded` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_permission` */

insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('0b1c232a49e246238d305584ff3a07f3','系统管理','system','/','系统管理','','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('ade96a1d5408429e8c0278892de6ae49','系统设置','config','/config','系统设置','0b1c232a49e246238d305584ff3a07f3','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('ff458a3215de465cbbbf3c5ee8c3cb68','菜单管理','menu','/menu','菜单管理','0b1c232a49e246238d305584ff3a07f3','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('d34df1c7c98445afb655a70ce58f5d21','授权管理','prmission','','授权管理','0b1c232a49e246238d305584ff3a07f3','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('4fd5ad8754c2401598d842c42d405d20','更新菜单','savemenu','/menu/saveorupdate','更新菜单','ff458a3215de465cbbbf3c5ee8c3cb68','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('536c3f08ebfc47549299aaf4b08348bd','权限管理','permission','/permission','权限管理','d34df1c7c98445afb655a70ce58f5d21','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('7559cdbe26974f5dab79bbbeb252d488','查询权限','permissiondatagrid','/permission/datagrid','查询权限','536c3f08ebfc47549299aaf4b08348bd','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('c9a6db7753b84b8b8d820670f18f32d1','更新权限','savepermission','/permission/saveorupdate','更新权限','536c3f08ebfc47549299aaf4b08348bd','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('e7cb77a3935b462a812aa1a5ce431747','角色管理','role','/role','角色管理','d34df1c7c98445afb655a70ce58f5d21','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('8a443ac5d35248babaa07d54a0b3fb89','查询角色','roledatagrid','/role/datagrid','查询角色','e7cb77a3935b462a812aa1a5ce431747','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('72f027441ed44a81b7eaa2d74a063f8d','更新角色','savarole','/role/saveorupdate','更新角色','e7cb77a3935b462a812aa1a5ce431747','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('44e285d8c6e5407b8d22cea3f79e6f48','用户管理','user','/user','用户管理','d34df1c7c98445afb655a70ce58f5d21','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('2543f0ac93d84785bf25e39f3618cf3d','查询用户','userdatagrid','/user/datagrid','查询用户','44e285d8c6e5407b8d22cea3f79e6f48','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('f7814d28f4f8443b89929d23f3e37434','更新用户','savauser','/user/saveorupdate','更新用户','44e285d8c6e5407b8d22cea3f79e6f48','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('52afc7a509cd4dd8af644e510f09378c','分配菜单','menuassignmenu','/menu/assignMenu','查询要分配的菜单','e7cb77a3935b462a812aa1a5ce431747','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('38268cad495241a2915938ca217a8c7e','更新分配菜单','saveassignmenu','/menu/saveAssignMenu','更新角色分配的菜单','e7cb77a3935b462a812aa1a5ce431747','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('50176f41f84c463e95af365ba4dd4a07','分配角色','roleassign_role','/role/assign_role','查询用户分配的角色','44e285d8c6e5407b8d22cea3f79e6f48','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('db3b129a44b148c88a3bf8f585d720a1','更新分配角色','rolesaveroleuser','/role/saveroleuser','更新用户分配的角色','44e285d8c6e5407b8d22cea3f79e6f48','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('5ce9f13d9b1848289baae69bb58e5b47','分配权限','assignpermission','/permission/assignPermission','查询分配权限','e7cb77a3935b462a812aa1a5ce431747','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('ae2052338fa14b00bf906ed71acba61f','更新分配权限','saveassignpermission','/permission/saveAssignPermission','更新角色分配的权限','e7cb77a3935b462a812aa1a5ce431747','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('86d1fc7c8d96487b8fbc23e338f989bc','查询菜单','menudatagrid','/menu/datagrid','查询菜单','ff458a3215de465cbbbf3c5ee8c3cb68','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('63669584c4bf48818447df1f05974159','日志管理','log','/log','日志管理','0b1c232a49e246238d305584ff3a07f3','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('34b1e3273611428fb7973f87084c01b3','查询日志','logdatagrid','/log/datagrid','查询日志','63669584c4bf48818447df1f05974159','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('69a73c0d7437430cbbefafa7b4f67a63','内容管理','content','','内容管理','','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('b7b39effcf9b4e409cca9afc41e12a19','导航管理','nav','/nav','导航管理','69a73c0d7437430cbbefafa7b4f67a63','','','','true');
insert  into `t_permission`(`id`,`name`,`value`,`url`,`intro`,`parent`,`created_at`,`updated_at`,`deleted_at`,`loaded`) values ('84c7faa779cd4ced86937bfc7f8d02ea','登陆日志','loginLog','/log/loginLog','登陆日志','63669584c4bf48818447df1f05974159',NULL,NULL,NULL,NULL);

/*Table structure for table `t_role` */

CREATE TABLE `t_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) default NULL,
  `value` varchar(50) default NULL,
  `intro` varchar(255) default NULL,
  `pid` varchar(36) default '0',
  `created_at` varchar(20) default NULL,
  `updated_at` varchar(20) default NULL,
  `deleted_at` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`name`,`value`,`intro`,`pid`,`created_at`,`updated_at`,`deleted_at`) values ('962fa5f2c8144590bdfdca189303084a','领导','','领导报表查看','','2017-06-05 14:52:34','','');
insert  into `t_role`(`id`,`name`,`value`,`intro`,`pid`,`created_at`,`updated_at`,`deleted_at`) values ('422450f2718d4a82adb21532688e8b7c','超级管理员','','拥有所有权限','','2017-06-05 14:50:05','','');
insert  into `t_role`(`id`,`name`,`value`,`intro`,`pid`,`created_at`,`updated_at`,`deleted_at`) values ('0dd3bc1176874cb2ac3ab054ba680f73','系统管理员','','拥有系统设置权限','','2017-06-05 14:50:39','','');
insert  into `t_role`(`id`,`name`,`value`,`intro`,`pid`,`created_at`,`updated_at`,`deleted_at`) values ('bc655e89c8254d9fa718da548f454bb1','业务管理员','','拥有业务处理权限','','2017-06-05 14:52:59','','');

/*Table structure for table `t_role_menu` */

CREATE TABLE `t_role_menu` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) default NULL,
  `menu_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_role_menu` */

insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('07622eb8592744dbb8671fdbdd397556','0dd3bc1176874cb2ac3ab054ba680f73','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('3d736f03b33e4cba83a7eff9794412b2','0dd3bc1176874cb2ac3ab054ba680f73','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('0baadd8c06b34929a6c7c1694a0564f2','0dd3bc1176874cb2ac3ab054ba680f73','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('08fe1f08c79f4c1a9ed9ff1004b60ef8','0dd3bc1176874cb2ac3ab054ba680f73','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('08696f5a90be4b53a721ccd6260a2d5f','0dd3bc1176874cb2ac3ab054ba680f73','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('8a5ccd70c3f54324b83950c66ae8a1f7','422450f2718d4a82adb21532688e8b7c','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('94e40272c29447ceaba62ac84529200b','422450f2718d4a82adb21532688e8b7c','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('e7f66937dcb54ef28c93572777975b3a','422450f2718d4a82adb21532688e8b7c','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('9cbbbdbcb58b49b4b614955b643b6468','422450f2718d4a82adb21532688e8b7c','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('0b5ed33b0c9f47c489f2586271152ce5','422450f2718d4a82adb21532688e8b7c','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('1f286756470e46c0bff577bb03607f0c','962fa5f2c8144590bdfdca189303084a','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('5e53410e4508409087d167578a68caa6','962fa5f2c8144590bdfdca189303084a','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('f33351ce04da4c29b7be13727adb7b86','962fa5f2c8144590bdfdca189303084a','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('bb934a8af79f4c79912b20475f8a7c05','422450f2718d4a82adb21532688e8b7c','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('1bf1f08c65b3479280e6604a41e4276a','422450f2718d4a82adb21532688e8b7c','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('ad327b7b952848c69712c0ff6a247bf8','422450f2718d4a82adb21532688e8b7c','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('02f14480196c4d43a50edb724a7d2d34','422450f2718d4a82adb21532688e8b7c','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('1939d02384684500b472152de3786330','422450f2718d4a82adb21532688e8b7c','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('751cab95815d4f23b3afcbf9eee93b08','422450f2718d4a82adb21532688e8b7c','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('0f3837010cc849babc6f6bde49ba95f2','422450f2718d4a82adb21532688e8b7c','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('48b3cf9102204ac29fa14bcf0b27af70','422450f2718d4a82adb21532688e8b7c','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('00b82a74fe384a4b8c20e962aef0ba73','422450f2718d4a82adb21532688e8b7c','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('bb76d6a7d46849ec94d496c38dcc75a7','422450f2718d4a82adb21532688e8b7c','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('318187a998074c6d9fa9755ece26e6ed','422450f2718d4a82adb21532688e8b7c','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('3cd9de2b8b204d8a8836b51ee6477174','422450f2718d4a82adb21532688e8b7c','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('066c63a4f0694fada8da08edc290f339','422450f2718d4a82adb21532688e8b7c','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('df9d3e0999b74382a597f341bf30e6ce','422450f2718d4a82adb21532688e8b7c','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('4c6d626d77e44e95919ec7dcb3b559d7','422450f2718d4a82adb21532688e8b7c','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('821a46523e8f498fbbc2533f2d4b6909','422450f2718d4a82adb21532688e8b7c','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('636f61add5c446c3ab06f6f5fa0446de','422450f2718d4a82adb21532688e8b7c','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('3961263eef604a91badb37c82413cfb8','422450f2718d4a82adb21532688e8b7c','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('c241bd5ee9ec4e329302805c6cd78265','422450f2718d4a82adb21532688e8b7c','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('7b91685241ce4df798b80f8b76159201','422450f2718d4a82adb21532688e8b7c','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('18a97d6f83fb4f5b88a383a87816edd4','422450f2718d4a82adb21532688e8b7c','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('908e8576b3a646b380101f365f9c6d35','422450f2718d4a82adb21532688e8b7c','92a050d65ccd4b99af856f5fa1ab74fb');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('13bb5603fa0749259d68db720aabe314','422450f2718d4a82adb21532688e8b7c','8ff3512c8b024aa5ad479fda78a97a27');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('fcec9fdb87684fe7a27171a39857d96f','422450f2718d4a82adb21532688e8b7c','d4889471fbed416e9d31491bc5508267');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('26b0f96357554de89bd4405139a9dc89','422450f2718d4a82adb21532688e8b7c','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('5080bc3d90ce4bed8f8f260963d05ab2','422450f2718d4a82adb21532688e8b7c','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('e75726019db942898e94f663e4568db6','422450f2718d4a82adb21532688e8b7c','39329060bf3e41e992b945a0706287c9');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('78147fcc845b430ba9f251df4a948332','422450f2718d4a82adb21532688e8b7c','d0a58a54ce65446b873ee2f1e18dc7f3');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('f424811ab9b24b59aba3ae2ab162985b','422450f2718d4a82adb21532688e8b7c','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('9fe060776b204470859ee757f8caa384','422450f2718d4a82adb21532688e8b7c','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('cc6200eadea24d59bd63e0ec2371549e','422450f2718d4a82adb21532688e8b7c','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('b52cd97d5dee4fba81890bad708234b2','422450f2718d4a82adb21532688e8b7c','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('7b378b6184e543079a01eb4f6718915e','422450f2718d4a82adb21532688e8b7c','117ada70d8274490b7eb458e2e2d12b1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('08ce47d34e094458b03f7c4c7efbb123','422450f2718d4a82adb21532688e8b7c','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('8f884781ab624054bd39a4358242afc3','422450f2718d4a82adb21532688e8b7c','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('3d24b252b30641f5be9d512daa72dad5','422450f2718d4a82adb21532688e8b7c','92a050d65ccd4b99af856f5fa1ab74fb');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('2c68b78c45f14d698d4abb58acc4f452','422450f2718d4a82adb21532688e8b7c','8ff3512c8b024aa5ad479fda78a97a27');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('46c9e2f3ef4248fda79209da8fed5e96','422450f2718d4a82adb21532688e8b7c','d4889471fbed416e9d31491bc5508267');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('81d0dea40eea4ab2a29a67a07c75407b','bc655e89c8254d9fa718da548f454bb1','92a050d65ccd4b99af856f5fa1ab74fb');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('a873128c9c854f0e9843488f8f27d189','bc655e89c8254d9fa718da548f454bb1','8ff3512c8b024aa5ad479fda78a97a27');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('404a0a5610e54ff0a671805257fea7a8','bc655e89c8254d9fa718da548f454bb1','d4889471fbed416e9d31491bc5508267');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('ece71932fd5c47759701a378dfb28243','962fa5f2c8144590bdfdca189303084a','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('b6d98173350b48a6a90f890287d6a235','962fa5f2c8144590bdfdca189303084a','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('e65cf78d18544818a8f6d78cad86ddce','962fa5f2c8144590bdfdca189303084a','117ada70d8274490b7eb458e2e2d12b1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('4b8c1e1f1550420cbfa4d6366d34401c','962fa5f2c8144590bdfdca189303084a','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('d61423d0ffed4651862731cd833fb942','962fa5f2c8144590bdfdca189303084a','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('5f0053cc91e0449987aff0a0a764eae0','0dd3bc1176874cb2ac3ab054ba680f73','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('f0fdfc3c8e0040a5811d4a82fda5cf4a','0dd3bc1176874cb2ac3ab054ba680f73','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('ea4c430b05894b36843e74062e52d280','0dd3bc1176874cb2ac3ab054ba680f73','39329060bf3e41e992b945a0706287c9');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('a82f47a8e3414bc48a3c17e5528a5bde','0dd3bc1176874cb2ac3ab054ba680f73','d0a58a54ce65446b873ee2f1e18dc7f3');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('b070316920964690b2bb26ef1f80336f','0dd3bc1176874cb2ac3ab054ba680f73','ff11337fa66f42a29641826d6121c30c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('f084e81fe41e428a9fd3dccc4f83f8ab','0dd3bc1176874cb2ac3ab054ba680f73','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('0baa5a6ca70a46f6aa5598d43e6e4d9b','0dd3bc1176874cb2ac3ab054ba680f73','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('f6f99a08e79a4e529469d047533aa352','0dd3bc1176874cb2ac3ab054ba680f73','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('9f167045cb974b7392813b7ca997aaf2','0dd3bc1176874cb2ac3ab054ba680f73','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('a6f4a55e93674eb88976cad05dbf593e','0dd3bc1176874cb2ac3ab054ba680f73','117ada70d8274490b7eb458e2e2d12b1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('b2e507ec16a945be916a370268f97c95','0dd3bc1176874cb2ac3ab054ba680f73','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('035e44c174054f7d865c891900f87d52','0dd3bc1176874cb2ac3ab054ba680f73','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('a6e06b022ef2412689dc47e03333e05c','bc655e89c8254d9fa718da548f454bb1','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('b360d91d6c7142eaab97709cea7b6c6f','bc655e89c8254d9fa718da548f454bb1','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('fd24debefa7644a580bdbf90b1e6afbe','962fa5f2c8144590bdfdca189303084a','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('c0ad2c8154bd4fd083626dea8fc241f6','962fa5f2c8144590bdfdca189303084a','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('5e787ad96eda4ee79cbf4def80fed70b','962fa5f2c8144590bdfdca189303084a','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('da33885cf1344c75883bb0f700dac159','962fa5f2c8144590bdfdca189303084a','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('2ecd9ec0b9b642b4953bdbd05d9cb794','422450f2718d4a82adb21532688e8b7c','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('8b83dc47ea5e449799dab84d969cc85a','422450f2718d4a82adb21532688e8b7c','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('da257f8c29fd4698b5e5d46ad2c26361','422450f2718d4a82adb21532688e8b7c','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('1bf3a217842d4f8cb773a36e314abb6b','422450f2718d4a82adb21532688e8b7c','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('8ed442d19eea4c61911db1c4929b6225','422450f2718d4a82adb21532688e8b7c','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('6cf1bac30cb04924947b581b8540f2ef','422450f2718d4a82adb21532688e8b7c','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('bd462ba1aa5740f8970bdbfdcfc71c0c','422450f2718d4a82adb21532688e8b7c','117ada70d8274490b7eb458e2e2d12b1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('2a71cc1e49e041bebbe1a7ed5e201630','422450f2718d4a82adb21532688e8b7c','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('11f295cf85124905a12fa4a5bb71cdfb','422450f2718d4a82adb21532688e8b7c','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('005a6ccd9eeb45dc8b0600a1da01b14f','422450f2718d4a82adb21532688e8b7c','92a050d65ccd4b99af856f5fa1ab74fb');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('3d5171c92480478b8875f2487da08b3c','422450f2718d4a82adb21532688e8b7c','8ff3512c8b024aa5ad479fda78a97a27');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('d861c49dfeca49e0bd0415d6ca301c2c','422450f2718d4a82adb21532688e8b7c','d4889471fbed416e9d31491bc5508267');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('72dd732ace7d4d578e4cb6a5ca3d1e64','422450f2718d4a82adb21532688e8b7c','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('24d92337c5ef4d528e7ae5dd33e2a48f','422450f2718d4a82adb21532688e8b7c','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('7e8045c47fc24d9b9ca82540c71dbe7b','422450f2718d4a82adb21532688e8b7c','39329060bf3e41e992b945a0706287c9');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('a5b2f475873548e5936c05437deed5ce','422450f2718d4a82adb21532688e8b7c','d0a58a54ce65446b873ee2f1e18dc7f3');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('10505d357eff48c4b9104de8b6d06e87','422450f2718d4a82adb21532688e8b7c','ff11337fa66f42a29641826d6121c30c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('65b94b5a2d3148cb97123da8ebd42af1','422450f2718d4a82adb21532688e8b7c','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('91a7ec44d16f4e2bb2f5bed638d84ada','422450f2718d4a82adb21532688e8b7c','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('daa9b950696f45769a04b8eab85f7841','422450f2718d4a82adb21532688e8b7c','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('c933f79f3e2c46f78a4d3c8e9140d59c','422450f2718d4a82adb21532688e8b7c','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('10abae41ed2349648be11bbb0d91adbc','422450f2718d4a82adb21532688e8b7c','117ada70d8274490b7eb458e2e2d12b1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('e37beeb53b5a46998c5e2476d9139bf3','422450f2718d4a82adb21532688e8b7c','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('bc0c45f80f034fb68663a03aba38b4ba','422450f2718d4a82adb21532688e8b7c','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('61c9853317ea4638ab1ff6b3b0f0d43d','422450f2718d4a82adb21532688e8b7c','92a050d65ccd4b99af856f5fa1ab74fb');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('90975927f2b94d42a0add0ebe4baee0d','422450f2718d4a82adb21532688e8b7c','8ff3512c8b024aa5ad479fda78a97a27');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('92308ff60b11494583f490ceeb330b43','422450f2718d4a82adb21532688e8b7c','d4889471fbed416e9d31491bc5508267');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('cf3bc5f7805945ebbd8641d06fb076a2','422450f2718d4a82adb21532688e8b7c','92a050d65ccd4b99af856f5fa1ab74fb');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('b0e3daaaa1e345139591cd9a9a893223','422450f2718d4a82adb21532688e8b7c','8ff3512c8b024aa5ad479fda78a97a27');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('c51840521d5c48dda1e5a3036d1ab60c','422450f2718d4a82adb21532688e8b7c','d4889471fbed416e9d31491bc5508267');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('69841356c5a942d09db95d3372edb08f','422450f2718d4a82adb21532688e8b7c','8f5251f7dd404d23947eec259e1cb2e1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('ab4a2398baed4fa4a6abf2e38d2d9f97','422450f2718d4a82adb21532688e8b7c','1d98ec26be124b9fb4b0413b90a2e7ce');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('e67512e34ef7418e877d74e92ef89d40','422450f2718d4a82adb21532688e8b7c','a9adf68922464523b44a58b4db4f5fc5');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('6599f68ab955451a82b3c7be662a3a22','422450f2718d4a82adb21532688e8b7c','edd5bbd3257e4ae0b6992fb40c27db3b');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('1be01be20f314dbcaf93ef0dce561c07','422450f2718d4a82adb21532688e8b7c','3fc407c514634781b12f7c51c03cb1bc');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('29dbf3a6093146e89876efe57e40bfb8','422450f2718d4a82adb21532688e8b7c','117ada70d8274490b7eb458e2e2d12b1');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('fa9b4df43e9944b59b6e82bc16c62162','422450f2718d4a82adb21532688e8b7c','845f420d66d44dc790b8fcc5f8e30dd8');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('f611a85c6fb74eb59d9b28094f935c47','422450f2718d4a82adb21532688e8b7c','a5c5448a984648d58c99f8580f95dc84');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('36333c69f1f6454785a5ee378ffb9c3f','422450f2718d4a82adb21532688e8b7c','616d88f2d3184f5fb65213a557207c8c');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('5905b25185bd4e21b31651133060d517','422450f2718d4a82adb21532688e8b7c','e93ba26e8f4b431faea71a7c4dd0bc66');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('8bf4e830af2a4653ac278966c7d62ae7','422450f2718d4a82adb21532688e8b7c','7266ff9acc20411fa57cc314b5a63a4e');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('9a67efe37bed4c03b422eedcfe5460f4','422450f2718d4a82adb21532688e8b7c','39329060bf3e41e992b945a0706287c9');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('d98f4adff892462e8c49cef120a86393','422450f2718d4a82adb21532688e8b7c','d0a58a54ce65446b873ee2f1e18dc7f3');
insert  into `t_role_menu`(`id`,`role_id`,`menu_id`) values ('47409d25d44d43d3b5e936b32cffe688','422450f2718d4a82adb21532688e8b7c','ff11337fa66f42a29641826d6121c30c');

/*Table structure for table `t_role_permission` */

CREATE TABLE `t_role_permission` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) default NULL,
  `permission_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_role_permission` */

insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('4cd7d853fabe4660aab4b344e8b870ea','bc655e89c8254d9fa718da548f454bb1','69a73c0d7437430cbbefafa7b4f67a63');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('5d31ead82f0d4869b2797b427adad686','bc655e89c8254d9fa718da548f454bb1','b7b39effcf9b4e409cca9afc41e12a19');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('908905c647994fdeafda478f3f7bf73d','962fa5f2c8144590bdfdca189303084a','0b1c232a49e246238d305584ff3a07f3');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('5581333363ed425483b04f90e0955393','962fa5f2c8144590bdfdca189303084a','d34df1c7c98445afb655a70ce58f5d21');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('e21f7ed3a26a4bf7a95129ac2adcd2ef','962fa5f2c8144590bdfdca189303084a','44e285d8c6e5407b8d22cea3f79e6f48');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('c04bd83b1fde473cab1a153ea4c3785a','962fa5f2c8144590bdfdca189303084a','2543f0ac93d84785bf25e39f3618cf3d');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('2a672300fc96482f9f87b5cb521e175b','962fa5f2c8144590bdfdca189303084a','50176f41f84c463e95af365ba4dd4a07');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('704351452d644c1a9bc52d6580ce4f5e','962fa5f2c8144590bdfdca189303084a','db3b129a44b148c88a3bf8f585d720a1');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('e8e10168a6e44aa3a4295cd6569ac8c0','962fa5f2c8144590bdfdca189303084a','f7814d28f4f8443b89929d23f3e37434');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('d0be925aaa1d43d48d1074aad3482cc3','962fa5f2c8144590bdfdca189303084a','536c3f08ebfc47549299aaf4b08348bd');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('ceb5c281a0c14ff18d9877eaed5915a4','962fa5f2c8144590bdfdca189303084a','7559cdbe26974f5dab79bbbeb252d488');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('4ccb1c69c4e14608a2c6b0d8b8f75ecf','962fa5f2c8144590bdfdca189303084a','c9a6db7753b84b8b8d820670f18f32d1');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('17a6115d89f147f7a16f50c83b1fda8d','962fa5f2c8144590bdfdca189303084a','e7cb77a3935b462a812aa1a5ce431747');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('1447250211484ff7bdd891b733888a22','962fa5f2c8144590bdfdca189303084a','38268cad495241a2915938ca217a8c7e');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('3e7f52cb32d14648848bb55268da7d24','962fa5f2c8144590bdfdca189303084a','52afc7a509cd4dd8af644e510f09378c');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('e70e32bcd60d4530ba670f816d6b288c','962fa5f2c8144590bdfdca189303084a','5ce9f13d9b1848289baae69bb58e5b47');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('a859655a76064832aa52d9d5945d17bd','962fa5f2c8144590bdfdca189303084a','72f027441ed44a81b7eaa2d74a063f8d');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('1655ed5041024a0388dd147b7fc9b0fa','962fa5f2c8144590bdfdca189303084a','8a443ac5d35248babaa07d54a0b3fb89');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('5c18f6bf4dab4f5b8d48dc345c5daa03','962fa5f2c8144590bdfdca189303084a','ae2052338fa14b00bf906ed71acba61f');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('80cfce1739454e668302837a60537f46','422450f2718d4a82adb21532688e8b7c','b7b39effcf9b4e409cca9afc41e12a19');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('bac1601dff5044919346a1f9bf39e5f8','422450f2718d4a82adb21532688e8b7c','69a73c0d7437430cbbefafa7b4f67a63');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('d6607964eb604cecacbd65b72289759d','422450f2718d4a82adb21532688e8b7c','84c7faa779cd4ced86937bfc7f8d02ea');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('05bb9bca6bf649dea2cf428bc6e96244','422450f2718d4a82adb21532688e8b7c','34b1e3273611428fb7973f87084c01b3');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('2c987d5e53794db48ee89b5228d6433f','422450f2718d4a82adb21532688e8b7c','63669584c4bf48818447df1f05974159');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('22513e147fac473888e6635ab06936da','422450f2718d4a82adb21532688e8b7c','db3b129a44b148c88a3bf8f585d720a1');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('575805660d914e8f979bddf920af0ac5','422450f2718d4a82adb21532688e8b7c','50176f41f84c463e95af365ba4dd4a07');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('66434038d55b4a9186dc0ed3c85024ef','422450f2718d4a82adb21532688e8b7c','f7814d28f4f8443b89929d23f3e37434');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('9b7c39bfdb934c7abee810c8a35235a8','422450f2718d4a82adb21532688e8b7c','2543f0ac93d84785bf25e39f3618cf3d');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('3dc6013143da46218e6e37c787f2ad86','422450f2718d4a82adb21532688e8b7c','44e285d8c6e5407b8d22cea3f79e6f48');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('7cc7ba4372dd45cab3483886cb887231','422450f2718d4a82adb21532688e8b7c','ae2052338fa14b00bf906ed71acba61f');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('77207f69bff84a24b05ef6381941c601','422450f2718d4a82adb21532688e8b7c','5ce9f13d9b1848289baae69bb58e5b47');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('a1d689a09b22468b92fbb55cbd3622a4','422450f2718d4a82adb21532688e8b7c','38268cad495241a2915938ca217a8c7e');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('9fcaf7111a9747388db204a20a77da1f','422450f2718d4a82adb21532688e8b7c','52afc7a509cd4dd8af644e510f09378c');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('b3a89772432d4942a9710bf52959c57d','422450f2718d4a82adb21532688e8b7c','72f027441ed44a81b7eaa2d74a063f8d');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('ddac2bc10dac4878bc0bd5b7cf2a29af','422450f2718d4a82adb21532688e8b7c','8a443ac5d35248babaa07d54a0b3fb89');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('249cf82fff474edca2b62a99db0cf140','422450f2718d4a82adb21532688e8b7c','e7cb77a3935b462a812aa1a5ce431747');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('b040efbfd6c44b80b7acf1ebda1d467b','422450f2718d4a82adb21532688e8b7c','c9a6db7753b84b8b8d820670f18f32d1');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('ab26176d005548e5912b9ff02efefac9','422450f2718d4a82adb21532688e8b7c','7559cdbe26974f5dab79bbbeb252d488');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('5f8a5ff5af54458f9d91ba8cded6db9c','422450f2718d4a82adb21532688e8b7c','536c3f08ebfc47549299aaf4b08348bd');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('850df74608a446e88df05f8ea391e3a5','422450f2718d4a82adb21532688e8b7c','d34df1c7c98445afb655a70ce58f5d21');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('80fd74d451f847e9af5a7f1c2ce532d1','422450f2718d4a82adb21532688e8b7c','86d1fc7c8d96487b8fbc23e338f989bc');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('e80626fb5de248fdbd7303a7adfbf648','422450f2718d4a82adb21532688e8b7c','4fd5ad8754c2401598d842c42d405d20');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('608c1699e1e24a669be9c0d192e3c5f8','422450f2718d4a82adb21532688e8b7c','ff458a3215de465cbbbf3c5ee8c3cb68');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('b9d0c0ef3f93420cb12293e3dbb76fab','422450f2718d4a82adb21532688e8b7c','ade96a1d5408429e8c0278892de6ae49');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('4477064d08b3437bb83da5b39d3ed964','0dd3bc1176874cb2ac3ab054ba680f73','0b1c232a49e246238d305584ff3a07f3');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('c8c143373dde4f31afa7241c458a2b4b','0dd3bc1176874cb2ac3ab054ba680f73','63669584c4bf48818447df1f05974159');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('8984196b90e6494e9f315cc5dc1255be','0dd3bc1176874cb2ac3ab054ba680f73','34b1e3273611428fb7973f87084c01b3');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('d9abce3f00ef4fb490973bb15c431fd6','0dd3bc1176874cb2ac3ab054ba680f73','ade96a1d5408429e8c0278892de6ae49');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('acea13dbe1304718ae78e126dfe35aae','0dd3bc1176874cb2ac3ab054ba680f73','d34df1c7c98445afb655a70ce58f5d21');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('acb2fc98b6374337832a1755710cc0cb','0dd3bc1176874cb2ac3ab054ba680f73','44e285d8c6e5407b8d22cea3f79e6f48');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('176cab1eb3244b6f8e8cbf5979b21415','0dd3bc1176874cb2ac3ab054ba680f73','2543f0ac93d84785bf25e39f3618cf3d');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('d11b2e5546684baaadbd510563401e3e','0dd3bc1176874cb2ac3ab054ba680f73','50176f41f84c463e95af365ba4dd4a07');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('3fac0143961344fb920d88601824ef82','0dd3bc1176874cb2ac3ab054ba680f73','db3b129a44b148c88a3bf8f585d720a1');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('fa8275ae222a4fdea414dda067d336f0','0dd3bc1176874cb2ac3ab054ba680f73','f7814d28f4f8443b89929d23f3e37434');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('13f9f7891b60433fb0a352c688437405','0dd3bc1176874cb2ac3ab054ba680f73','536c3f08ebfc47549299aaf4b08348bd');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('b0d82d964402410785ed870151259c57','0dd3bc1176874cb2ac3ab054ba680f73','7559cdbe26974f5dab79bbbeb252d488');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('dd6be817a0f34cf38dd73a62a0e9cefc','0dd3bc1176874cb2ac3ab054ba680f73','c9a6db7753b84b8b8d820670f18f32d1');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('4748ea82610049b8abfd701352eeadf6','0dd3bc1176874cb2ac3ab054ba680f73','e7cb77a3935b462a812aa1a5ce431747');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('456ee85cbe7847ffa666e4ea4cb6c107','0dd3bc1176874cb2ac3ab054ba680f73','38268cad495241a2915938ca217a8c7e');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('ff37e377121d4aaf8bc8aea5f48991e1','0dd3bc1176874cb2ac3ab054ba680f73','52afc7a509cd4dd8af644e510f09378c');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('51f0b95d5e3d49fea89ead2d9fc311aa','0dd3bc1176874cb2ac3ab054ba680f73','5ce9f13d9b1848289baae69bb58e5b47');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('1f78b463fff2416cb1741b336bda8e90','0dd3bc1176874cb2ac3ab054ba680f73','72f027441ed44a81b7eaa2d74a063f8d');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('93de8a9fee5d45d494167eb48ba39f0f','0dd3bc1176874cb2ac3ab054ba680f73','8a443ac5d35248babaa07d54a0b3fb89');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('d6b563383c6446979b3d278a51ab38c0','0dd3bc1176874cb2ac3ab054ba680f73','ae2052338fa14b00bf906ed71acba61f');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('bfa2617ba3c54a73bbd808b1b2759ee3','0dd3bc1176874cb2ac3ab054ba680f73','ff458a3215de465cbbbf3c5ee8c3cb68');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('0604f92720184aaebc74f7b36f6fa45c','0dd3bc1176874cb2ac3ab054ba680f73','4fd5ad8754c2401598d842c42d405d20');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('d1de97818a47414e80f1d247c7ed764b','0dd3bc1176874cb2ac3ab054ba680f73','86d1fc7c8d96487b8fbc23e338f989bc');
insert  into `t_role_permission`(`id`,`role_id`,`permission_id`) values ('e528838238284c7ea82c71b0d3b7396f','422450f2718d4a82adb21532688e8b7c','0b1c232a49e246238d305584ff3a07f3');

/*Table structure for table `t_user` */

CREATE TABLE `t_user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(50) default NULL,
  `providername` varchar(50) default NULL,
  `email` varchar(200) default NULL,
  `phone` varchar(50) default NULL,
  `password` varchar(200) default NULL,
  `hasher` varchar(200) default NULL,
  `salt` varchar(200) default NULL,
  `avatar_url` varchar(255) default NULL,
  `first_name` varchar(10) default NULL,
  `last_name` varchar(10) default NULL,
  `full_name` varchar(20) default NULL,
  `create_at` varchar(20) default NULL,
  `update_at` varchar(20) default NULL,
  `delete_at` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`providername`,`email`,`phone`,`password`,`hasher`,`salt`,`avatar_url`,`first_name`,`last_name`,`full_name`,`create_at`,`update_at`,`delete_at`) values ('c8878780aec44212931add3bafc3e0ae','taoxh','','taoxh@sina.com','15002673324','96e79218965eb72c92a549dd5a330112','','','','','','','2017-06-14 17:25:12','','');
insert  into `t_user`(`id`,`username`,`providername`,`email`,`phone`,`password`,`hasher`,`salt`,`avatar_url`,`first_name`,`last_name`,`full_name`,`create_at`,`update_at`,`delete_at`) values ('176ccd0b043b4b90a49757fc190d66c5','zzq','','linkzz@qq.com','15002673324','96e79218965eb72c92a549dd5a330112','','','','','','','2017-06-02 16:41:05','','');
insert  into `t_user`(`id`,`username`,`providername`,`email`,`phone`,`password`,`hasher`,`salt`,`avatar_url`,`first_name`,`last_name`,`full_name`,`create_at`,`update_at`,`delete_at`) values ('1','admin','linkzz','linkzz@foxmail.com','18709481745','21232f297a57a5a743894a0e4a801fc3','1','123','','张','增强','张增强','','2017-05-11 16:19:18','');
insert  into `t_user`(`id`,`username`,`providername`,`email`,`phone`,`password`,`hasher`,`salt`,`avatar_url`,`first_name`,`last_name`,`full_name`,`create_at`,`update_at`,`delete_at`) values ('568acc974f4845588697003974b759f8','hh','','hh@sina.com','15002673324','96e79218965eb72c92a549dd5a330112','','','','','','','2017-06-22 13:08:29','','');
insert  into `t_user`(`id`,`username`,`providername`,`email`,`phone`,`password`,`hasher`,`salt`,`avatar_url`,`first_name`,`last_name`,`full_name`,`create_at`,`update_at`,`delete_at`) values ('6ba9e0c058a94809b582103c4268ca23','linkzz','','linkzz@sina.com','18709481745','96e79218965eb72c92a549dd5a330112','','','','','','','2017-06-03 19:41:39','','');
insert  into `t_user`(`id`,`username`,`providername`,`email`,`phone`,`password`,`hasher`,`salt`,`avatar_url`,`first_name`,`last_name`,`full_name`,`create_at`,`update_at`,`delete_at`) values ('8826ec102f20425c9f236fc42f7b5436','ml',NULL,'ml@sina.com','18709481744','96e79218965eb72c92a549dd5a330112',NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-01 11:21:53',NULL,NULL);
insert  into `t_user`(`id`,`username`,`providername`,`email`,`phone`,`password`,`hasher`,`salt`,`avatar_url`,`first_name`,`last_name`,`full_name`,`create_at`,`update_at`,`delete_at`) values ('176bf4893e744fb7983a9ac04fcc9b5c','zq',NULL,'zq@sina.com','18709481755','96e79218965eb72c92a549dd5a330112',NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-01 11:22:10',NULL,NULL);

/*Table structure for table `t_user_org` */

CREATE TABLE `t_user_org` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) default NULL,
  `org_id` int(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_user_org` */

/*Table structure for table `t_user_role` */

CREATE TABLE `t_user_role` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) default NULL,
  `role_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`id`,`user_id`,`role_id`) values ('2a3bdd389c97416ea7666e49849ee7fa','6ba9e0c058a94809b582103c4268ca23','0dd3bc1176874cb2ac3ab054ba680f73');
insert  into `t_user_role`(`id`,`user_id`,`role_id`) values ('0439319756f64dd2a3e3a562daecf1be','1','422450f2718d4a82adb21532688e8b7c');
insert  into `t_user_role`(`id`,`user_id`,`role_id`) values ('c31016efb2ab4b069ae0a8591cb2d458','176ccd0b043b4b90a49757fc190d66c5','962fa5f2c8144590bdfdca189303084a');
insert  into `t_user_role`(`id`,`user_id`,`role_id`) values ('5592d95cfa104a169a171c11ce8b3397','568acc974f4845588697003974b759f8','962fa5f2c8144590bdfdca189303084a');
insert  into `t_user_role`(`id`,`user_id`,`role_id`) values ('9ba684dc0b724d85b16bbc71efaf889a','568acc974f4845588697003974b759f8','bc655e89c8254d9fa718da548f454bb1');
insert  into `t_user_role`(`id`,`user_id`,`role_id`) values ('1b723a9575aa47ae95d1fff9e86d5bc8','c8878780aec44212931add3bafc3e0ae','bc655e89c8254d9fa718da548f454bb1');

/* Function  structure for function  `queryChildren` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `queryChildren`() RETURNS varchar(4000) CHARSET utf8
BEGIN
    DECLARE sTemp VARCHAR(4000);
    DECLARE sTempChd VARCHAR(4000);

    SET sTemp = '$';
    #SET sTempChd = cast(tableid as char);
    SELECT group_concat(id) INTO sTempChd FROM t_menu t WHERE t.pid = '';

    WHILE sTempChd is not NULL DO
      SET sTemp = CONCAT(sTemp,',',sTempChd);
      SELECT group_concat(id) INTO sTempChd FROM t_menu where FIND_IN_SET(pid,sTempChd)>0;
    END WHILE;
    return sTemp;
  END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
