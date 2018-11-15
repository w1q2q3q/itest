/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : itest

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-11-15 19:59:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addyl
-- ----------------------------
DROP TABLE IF EXISTS `addyl`;
CREATE TABLE `addyl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `describev` varchar(255) DEFAULT NULL,
  `methodv` varchar(255) DEFAULT NULL,
  `Url` varchar(255) DEFAULT NULL,
  `herder` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `jsonvalue` varchar(255) DEFAULT NULL,
  `assertadd` int(11) DEFAULT NULL,
  `zhuangtai` int(11) DEFAULT NULL,
  `Data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for addylassert
-- ----------------------------
DROP TABLE IF EXISTS `addylassert`;
CREATE TABLE `addylassert` (
  `id` int(11) NOT NULL,
  `responseid` int(11) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `compare` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_njutxrwaj7xdeu3wbqedvoose` (`team_id`),
  CONSTRAINT `FK_njutxrwaj7xdeu3wbqedvoose` FOREIGN KEY (`team_id`) REFERENCES `addyl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for addylherde
-- ----------------------------
DROP TABLE IF EXISTS `addylherde`;
CREATE TABLE `addylherde` (
  `id` int(11) NOT NULL,
  `name` varchar(2550) DEFAULT NULL,
  `value` varchar(2550) DEFAULT NULL,
  `describev` varchar(2550) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_th2lbmeh2uvt6gusejlubs8mx` (`team_id`),
  CONSTRAINT `FK_th2lbmeh2uvt6gusejlubs8mx` FOREIGN KEY (`team_id`) REFERENCES `addyl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for addylvalue
-- ----------------------------
DROP TABLE IF EXISTS `addylvalue`;
CREATE TABLE `addylvalue` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `describev` varchar(255) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ikdyybnmy9ctplm03yva7k6ve` (`team_id`),
  CONSTRAINT `FK_ikdyybnmy9ctplm03yva7k6ve` FOREIGN KEY (`team_id`) REFERENCES `addyl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cass
-- ----------------------------
DROP TABLE IF EXISTS `cass`;
CREATE TABLE `cass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `cassid` int(11) DEFAULT NULL,
  `zhuid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `describev` varchar(255) DEFAULT NULL,
  `zhaungtai` int(11) DEFAULT NULL,
  `aeer` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `xiangyintext` longtext,
  `assertc` text,
  `beforeheader` longtext,
  `afterheader` longtext,
  `ylid` int(11) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for herde_list
-- ----------------------------
DROP TABLE IF EXISTS `herde_list`;
CREATE TABLE `herde_list` (
  `id` varchar(255) NOT NULL,
  `herdername` varchar(255) DEFAULT NULL,
  `herdervalue` varchar(255) DEFAULT NULL,
  `herderdescribe` varchar(255) DEFAULT NULL,
  `team_id` varchar(255) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mwx0pkkajnhrjs383eefieeon` (`team_id`),
  CONSTRAINT `FK_mwx0pkkajnhrjs383eefieeon` FOREIGN KEY (`team_id`) REFERENCES `jiekou_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jiekou_list
-- ----------------------------
DROP TABLE IF EXISTS `jiekou_list`;
CREATE TABLE `jiekou_list` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `describe1` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `select1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jobentity
-- ----------------------------
DROP TABLE IF EXISTS `jobentity`;
CREATE TABLE `jobentity` (
  `jobId` int(11) NOT NULL AUTO_INCREMENT,
  `jobGroup` varchar(255) DEFAULT NULL,
  `jobName` varchar(255) DEFAULT NULL,
  `triggerName` varchar(255) DEFAULT NULL,
  `triggerGroupName` varchar(255) DEFAULT NULL,
  `cronExpr` varchar(255) DEFAULT NULL,
  `previousFireTime` date DEFAULT NULL,
  `nextFireTime` date DEFAULT NULL,
  `jobStatus` varchar(255) DEFAULT NULL,
  `runTimes` bigint(20) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `startTime` date DEFAULT NULL,
  `endTime` date DEFAULT NULL,
  `jobClass` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `zhu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jobId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for person_list
-- ----------------------------
DROP TABLE IF EXISTS `person_list`;
CREATE TABLE `person_list` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tast
-- ----------------------------
DROP TABLE IF EXISTS `tast`;
CREATE TABLE `tast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cassid` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `zhu` varchar(255) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for testtask
-- ----------------------------
DROP TABLE IF EXISTS `testtask`;
CREATE TABLE `testtask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `describev` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `zhu` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for value_list
-- ----------------------------
DROP TABLE IF EXISTS `value_list`;
CREATE TABLE `value_list` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `describe1` varchar(255) DEFAULT NULL,
  `team_id` varchar(255) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1jv3u02g5b2vb6ycxn0ewy2cm` (`team_id`),
  CONSTRAINT `FK_1jv3u02g5b2vb6ycxn0ewy2cm` FOREIGN KEY (`team_id`) REFERENCES `jiekou_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhu
-- ----------------------------
DROP TABLE IF EXISTS `zhu`;
CREATE TABLE `zhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zname` varchar(255) DEFAULT NULL,
  `zdescribev` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
