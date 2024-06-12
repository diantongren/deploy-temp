-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: junyue-prod-saas
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_CALENDARS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ENTRY_ID` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint NOT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_LOCKS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LOCK_NAME` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;

--
-- Table structure for table `r_admin_role`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r_admin_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员与角色绑定表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_admin_role`
--

/*!40000 ALTER TABLE `r_admin_role` DISABLE KEYS */;
INSERT INTO `r_admin_role` VALUES (1,1,1);
/*!40000 ALTER TABLE `r_admin_role` ENABLE KEYS */;

--
-- Table structure for table `r_dept_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r_dept_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ding_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `r_dept_user_ding_user_id_dept_id_uindex` (`ding_user_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_dept_user`
--

/*!40000 ALTER TABLE `r_dept_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_dept_user` ENABLE KEYS */;

--
-- Table structure for table `r_role_permission`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r_role_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `permission_id` bigint NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色与权限绑定表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_role_permission`
--

/*!40000 ALTER TABLE `r_role_permission` DISABLE KEYS */;
INSERT INTO `r_role_permission` VALUES (1,1,9),(2,1,1),(3,1,4),(4,1,3),(5,1,5),(6,1,7),(7,1,8),(8,1,2),(9,1,6);
/*!40000 ALTER TABLE `r_role_permission` ENABLE KEYS */;

--
-- Table structure for table `t_admin`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `ban` tinyint unsigned DEFAULT NULL COMMENT '0 不禁止 1 禁止',
  `create_at` bigint DEFAULT NULL COMMENT '创建时间',
  `update_at` bigint DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT NULL COMMENT '0 未删除 1 已删除',
  `tenant_id` bigint DEFAULT NULL COMMENT '租户id',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账户名',
  `pwd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '盐',
  `initial` tinyint(1) NOT NULL DEFAULT '0' COMMENT '初始账号',
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin`
--

/*!40000 ALTER TABLE `t_admin` DISABLE KEYS */;
INSERT INTO `t_admin` VALUES (1,'','admin','',0,1693359349693,1693359349693,0,0,'admin','$2a$10$ItAYf8qB77saLeSYLkFfTexzTcrENHiQWkqBALqwKNvUsR7g7NKHW','$2a$10$ItAYf8qB77saLeSYLkFfTe',0);
/*!40000 ALTER TABLE `t_admin` ENABLE KEYS */;

--
-- Table structure for table `t_admin_login_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_admin_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` bigint DEFAULT NULL,
  `tenant_id` bigint DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin_login_log`
--

/*!40000 ALTER TABLE `t_admin_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_admin_login_log` ENABLE KEYS */;

--
-- Table structure for table `t_admin_session`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_admin_session` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'user_agent',
  `expire_at` bigint DEFAULT NULL,
  `create_at` bigint DEFAULT NULL,
  `tenant_id` bigint DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin_session`
--

/*!40000 ALTER TABLE `t_admin_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_admin_session` ENABLE KEYS */;

--
-- Table structure for table `t_announcement`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_announcement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告内容',
  `pinned` tinyint(1) NOT NULL COMMENT '置顶',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_announcement`
--

/*!40000 ALTER TABLE `t_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_announcement` ENABLE KEYS */;

--
-- Table structure for table `t_base_settings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_base_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键词, PAY.ALI PAY.MP',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '配置内容',
  `created` bigint DEFAULT NULL,
  `updated` bigint DEFAULT NULL,
  `deleted` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_base_settings`
--

/*!40000 ALTER TABLE `t_base_settings` DISABLE KEYS */;
INSERT INTO `t_base_settings` VALUES (1,'screen.command','{\n  \"contents\": [\n    {\n      \"type\": 3,\n      \"content\": \"房间号\",\n      \"width\": 0,\n      \"length\": 0,\n      \"x\": 60,\n      \"y\": 20,\n      \"fontHeight\": 32,\n      \"fontWidth\": 32,\n      \"fontWeight\": 55,\n      \"center\": true\n    },\n    {\n      \"type\": 4,\n      \"content\": \"001\",\n      \"width\": 0,\n      \"length\": 0,\n      \"x\": 128,\n      \"y\": 50,\n      \"fontHeight\": 48,\n      \"fontWidth\": 48,\n      \"fontWeight\": 55,\n      \"center\": true\n    },\n    {\n      \"type\": 5,\n      \"content\": \" \",\n      \"width\": 0,\n      \"length\": 0,\n      \"x\": 100,\n      \"y\": 110,\n      \"fontHeight\": 32,\n      \"fontWidth\": 32,\n      \"fontWeight\": 40,\n      \"center\": true\n    },\n    {\n      \"type\": 1,\n      \"content\": \"空闲\",\n      \"width\": 0,\n      \"length\": 0,\n      \"x\": 72,\n      \"y\": 115,\n      \"fontHeight\": 48,\n      \"fontWidth\": 48,\n      \"fontWeight\": 55\n    },\n    {\n      \"type\": 2,\n      \"content\": \" \",\n      \"width\": 0,\n      \"length\": 0,\n      \"x\": 72,\n      \"y\": 145,\n      \"fontHeight\": 32,\n      \"fontWidth\": 32,\n      \"fontWeight\": 40,\n      \"center\": true\n    },\n    {\n      \"type\": 9,\n      \"content\": \" \",\n      \"width\": 0,\n      \"length\": 0,\n      \"x\": 0,\n      \"y\": 0,\n      \"fontHeight\": 32,\n      \"fontWidth\": 32,\n      \"fontWeight\": 55\n    },\n    {\n      \"type\": 11,\n      \"content\": \"00:00-00:00\",\n      \"width\": 0,\n      \"length\": 0,\n      \"x\": 50,\n      \"y\": 190,\n      \"fontHeight\": 24,\n      \"fontWidth\": 24,\n      \"fontWeight\": 30,\n      \"center\": true\n    },\n    {\n      \"type\": 8,\n      \"content\": \"正常\",\n      \"width\": 0,\n      \"length\": 0,\n      \"x\": 200,\n      \"y\": 10,\n      \"fontHeight\": 16,\n      \"fontWidth\": 16,\n      \"fontWeight\": 21\n    },\n    {\n      \"type\": 12,\n      \"content\": \"http://192.168.31.175:8083/pages/reserve/reserve?seatId=0000&&time=1695612857155\",\n      \"width\": 0,\n      \"length\": 0,\n      \"x\": 10,\n      \"y\": 245,\n      \"fontHeight\": 32,\n      \"fontWidth\": 32,\n      \"fontWeight\": 48\n    },\n    {\n      \"type\": 10,\n      \"length\": 0,\n      \"width\": 0,\n      \"content\": \"扫码预约\",\n      \"x\": 118,\n      \"y\": 245,\n      \"fontHeight\": 24,\n      \"fontWidth\": 24,\n      \"fontWeight\": 27\n    },\n    {\n      \"type\": 13,\n      \"length\": 0,\n      \"width\": 0,\n      \"content\": \"文明阅览，请勿占座。离馆请带走个人物品。\",\n      \"x\": 118,\n      \"y\": 276,\n      \"fontHeight\": 16,\n      \"fontWidth\": 16,\n      \"fontWeight\": 21\n    }\n  ]\n}\n',1695263913449,1695263913449,0);
/*!40000 ALTER TABLE `t_base_settings` ENABLE KEYS */;

--
-- Table structure for table `t_dept`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_dept` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `dept_id` bigint NOT NULL COMMENT '（钉钉）部门id',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '部门名称',
  `parent_id` bigint NOT NULL COMMENT '（钉钉）父部门id',
  `dingtalk` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否为钉钉同步部门',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_dept_tenant_id_dept_id_delete_at_uindex` (`tenant_id`,`dept_id`,`delete_at`),
  KEY `t_dept_dept_id_index` (`dept_id`),
  KEY `t_dept_parent_id_index` (`parent_id`),
  KEY `t_dept_tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dept`
--

/*!40000 ALTER TABLE `t_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_dept` ENABLE KEYS */;

--
-- Table structure for table `t_dept_sync_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_dept_sync_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dept_id` bigint NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `message` text COLLATE utf8mb4_unicode_ci COMMENT '错误信息',
  `start_at` bigint DEFAULT NULL COMMENT '开始时间',
  `finish_at` bigint DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='钉钉同步记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dept_sync_log`
--

/*!40000 ALTER TABLE `t_dept_sync_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_dept_sync_log` ENABLE KEYS */;

--
-- Table structure for table `t_device`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_device` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `mac` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设备mac地址',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '设备状态',
  `create_at` bigint NOT NULL DEFAULT '0',
  `update_at` bigint NOT NULL DEFAULT '0',
  `hub_id` bigint NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备标识',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  `venue_id` bigint DEFAULT '0',
  `group_id` bigint DEFAULT '0',
  `scene` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_device_mac_delete_at_uindex` (`mac`,`delete_at`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设备';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device`
--

/*!40000 ALTER TABLE `t_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device` ENABLE KEYS */;

--
-- Table structure for table `t_device_alarm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_device_alarm` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `device_id` bigint DEFAULT NULL,
  `device_mac` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设备mac',
  `alarm_power` int NOT NULL COMMENT '告警时的功率',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设备告警';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device_alarm`
--

/*!40000 ALTER TABLE `t_device_alarm` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device_alarm` ENABLE KEYS */;

--
-- Table structure for table `t_device_electricity_daily_usage`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_device_electricity_daily_usage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `device_id` bigint NOT NULL COMMENT '设备id',
  `usage` int NOT NULL DEFAULT '0' COMMENT '每日电量消耗',
  `date` date NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设备每日电量统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device_electricity_daily_usage`
--

/*!40000 ALTER TABLE `t_device_electricity_daily_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device_electricity_daily_usage` ENABLE KEYS */;

--
-- Table structure for table `t_device_electricity_usage_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_device_electricity_usage_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `device_id` bigint NOT NULL COMMENT '设备id',
  `usage` int NOT NULL COMMENT '电量消耗',
  `date` date NOT NULL COMMENT '日期（当天）',
  `time` time NOT NULL COMMENT '时间点',
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设备电量记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device_electricity_usage_log`
--

/*!40000 ALTER TABLE `t_device_electricity_usage_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device_electricity_usage_log` ENABLE KEYS */;

--
-- Table structure for table `t_device_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_device_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分组名称',
  `desc` text COLLATE utf8mb4_unicode_ci COMMENT '分组描述',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  KEY `t_device_group_tenant_id_name_delete_at_index` (`tenant_id`,`name`,`delete_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设备分组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device_group`
--

/*!40000 ALTER TABLE `t_device_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device_group` ENABLE KEYS */;

--
-- Table structure for table `t_device_group_config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_device_group_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `group_id` bigint NOT NULL COMMENT '分组id',
  `open_hour` int NOT NULL COMMENT '开始时间',
  `close_hour` int NOT NULL COMMENT '关闭时间',
  `light_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '灯开关',
  `light_brightness` int NOT NULL COMMENT '灯亮度',
  `relay_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '继电器开关',
  `power_threshold` int NOT NULL COMMENT '功率阈值',
  `auto_cut_off` tinyint(1) NOT NULL COMMENT '自动断电',
  `alarm_clear` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '告警解除机制',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_device_group_config_group_id_delete_at_uindex` (`group_id`,`delete_at`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分组设备配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device_group_config`
--

/*!40000 ALTER TABLE `t_device_group_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device_group_config` ENABLE KEYS */;

--
-- Table structure for table `t_device_map`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_device_map` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `venue_id` bigint NOT NULL COMMENT '场馆id',
  `width` int NOT NULL COMMENT '宽',
  `height` int NOT NULL COMMENT '高',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设备地图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device_map`
--

/*!40000 ALTER TABLE `t_device_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device_map` ENABLE KEYS */;

--
-- Table structure for table `t_device_repair`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_device_repair` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '报修的用户id',
  `venue_id` bigint DEFAULT NULL,
  `resource_id` bigint DEFAULT NULL COMMENT '资源id',
  `device_mac` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `fault_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '故障类型',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `images` text COLLATE utf8mb4_unicode_ci COMMENT '上传图片',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设备保修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device_repair`
--

/*!40000 ALTER TABLE `t_device_repair` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device_repair` ENABLE KEYS */;

--
-- Table structure for table `t_device_status`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_device_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `device_mac` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `light_state` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `light_brightness` int DEFAULT NULL,
  `relay_state` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device_status`
--

/*!40000 ALTER TABLE `t_device_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device_status` ENABLE KEYS */;

--
-- Table structure for table `t_hub`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_hub` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `mac` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网关mac地址',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '状态',
  `create_at` bigint NOT NULL DEFAULT '0',
  `update_at` bigint NOT NULL DEFAULT '0',
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '产品标识',
  `last_login_time` bigint DEFAULT NULL COMMENT '上一次心跳时间',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  `org_id` bigint DEFAULT '0',
  `venue_id` bigint DEFAULT '0',
  `scene` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设备网关';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hub`
--

/*!40000 ALTER TABLE `t_hub` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hub` ENABLE KEYS */;

--
-- Table structure for table `t_message_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_message_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint DEFAULT '0',
  `product_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `device_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息主题',
  `payload` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息内容',
  `from` int DEFAULT NULL COMMENT '1 网关，2 设备',
  `type` int DEFAULT NULL COMMENT '1 下发，2 上报',
  `desc` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `create_at` bigint NOT NULL,
  `key` bigint DEFAULT '-1',
  `reply` int DEFAULT '0' COMMENT '0 未回复，1 网关回复，2 设备回复',
  `group` int DEFAULT '0' COMMENT '指令集',
  `resend` int DEFAULT '0' COMMENT '重发次数',
  `screen` tinyint(1) DEFAULT '0' COMMENT '是否是屏幕指令',
  `real_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `t_message_log_create_at_index` (`create_at`),
  KEY `t_message_log_device_name_index` (`device_name`),
  KEY `t_message_log_group_index` (`group`),
  KEY `t_message_log_key_index` (`key`),
  KEY `t_message_log_reply_index` (`reply`),
  KEY `t_message_log_resend_index` (`resend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消息记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message_log`
--

/*!40000 ALTER TABLE `t_message_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_message_log` ENABLE KEYS */;

--
-- Table structure for table `t_message_log_new`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_message_log_new` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `product_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seq_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_at` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message_log_new`
--

/*!40000 ALTER TABLE `t_message_log_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_message_log_new` ENABLE KEYS */;

--
-- Table structure for table `t_mqtt_acl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_mqtt_acl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `allow` int DEFAULT NULL COMMENT '0: deny, 1: allow',
  `ipaddr` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IpAddress',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Username',
  `clientid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ClientId',
  `access` int NOT NULL COMMENT '1: subscribe, 2: publish, 3: pubsub',
  `topic` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Topic Filter',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mqtt_acl`
--

/*!40000 ALTER TABLE `t_mqtt_acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mqtt_acl` ENABLE KEYS */;

--
-- Table structure for table `t_mqtt_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_mqtt_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salt` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superuser` tinyint(1) DEFAULT '0',
  `hub_id` bigint NOT NULL DEFAULT '0' COMMENT '所属hub id',
  `create_at` bigint DEFAULT '0',
  `update_at` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mqtt_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mqtt_user`
--

/*!40000 ALTER TABLE `t_mqtt_user` DISABLE KEYS */;
INSERT INTO `t_mqtt_user` VALUES (1,'test','$2a$10$HMp0m75px5pf8cOikq/Ca.pw1GLVZonEHCJTKp0Apl9ouqV4rXLm6','$2a$10$HMp0m75px5pf8cOikq/Ca.',0,0,1671778785000,0),(3,'test1','$2a$10$HMp0m75px5pf8cOikq/Ca.pw1GLVZonEHCJTKp0Apl9ouqV4rXLm6','$2a$10$HMp0m75px5pf8cOikq/Ca.',0,0,1671778785000,0),(4,'portal','$2a$10$HMp0m75px5pf8cOikq/Ca.pw1GLVZonEHCJTKp0Apl9ouqV4rXLm6','$2a$10$HMp0m75px5pf8cOikq/Ca.',1,0,1671778785000,0),(8,'hub1229','$2a$10$9mcK7MKam7jyAAUMd8BMbeVY1hLRRw5yuS/CcSw/e6DjG1015DVDW','$2a$10$9mcK7MKam7jyAAUMd8BMbe',0,6,1672302871325,1672302871325),(9,'hub0114','$2a$10$th3F.nKNczlPy5ikFOhEmOuuGKNL0jFUOOF9ggiG6wEf1K3ab9Mte','$2a$10$th3F.nKNczlPy5ikFOhEmO',0,7,1672809814066,1672809814066),(10,'joyecloud','$2a$10$S.9O55nRbkvRnjf7LtfU4e/SUo9k/BILV89.lPeu/pqmhxNcU/qqy','$2a$10$S.9O55nRbkvRnjf7LtfU4e',1,0,1678870072000,1678870072000);
/*!40000 ALTER TABLE `t_mqtt_user` ENABLE KEYS */;

--
-- Table structure for table `t_organization`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_organization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parent_id` bigint NOT NULL COMMENT '上级组织',
  `level` int NOT NULL COMMENT '层级',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路径',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='组织';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_organization`
--

/*!40000 ALTER TABLE `t_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_organization` ENABLE KEYS */;

--
-- Table structure for table `t_permission`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '权限名称',
  `permission` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限',
  `resource_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'menu' COMMENT 'menu/button',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '请求路径 uri',
  `parent_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '父权限 id',
  `parent_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/' COMMENT '父节点的路径',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '权限描述',
  `create_at` bigint NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` bigint NOT NULL DEFAULT '0' COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 未删除 1已删除',
  `tenant` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为租户平台',
  `reservation` tinyint(1) NOT NULL DEFAULT '0',
  `dingtalk` tinyint(1) NOT NULL DEFAULT '0',
  `general` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ms_id` (`permission`) USING BTREE,
  KEY `idx_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员系统菜单与接口权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_permission`
--

/*!40000 ALTER TABLE `t_permission` DISABLE KEYS */;
INSERT INTO `t_permission` VALUES (1,'空间管理','tenant','menu','/tenant',0,'/','空间管理',1699585367461,1699585367461,0,1,0,0,0),(2,'管理员管理','admin','menu','/admin',0,'/','管理员管理',1699585382688,1699585382688,0,1,0,0,0),(3,'开发者选项','develop','menu','/develop',0,'/','开发者选项',1699585401162,1699585401162,0,1,0,0,0),(4,'权限管理','develop-permission','menu','/develop/permssion-list',3,'/develop','权限管理',1699585447829,1699585745480,0,1,0,0,0),(5,'定时器管理','develop-cron','menu','/develop/cron-list',3,'/develop','权限管理',1699585465062,1699585751996,0,1,0,0,0),(6,'管理员列表','admin-list','menu','/admin/admin-list',2,'/admin','管理员列表',1699585509932,1699585509932,0,1,0,0,0),(7,'管理员角色','admin-role','menu','/admin/admin-role',2,'/admin','管理员角色',1699585536728,1699585536728,0,1,0,0,0),(8,'管理员权限','admin-permssion','menu','/admin/admin-permssion',2,'/admin','管理员权限',1699585556710,1699585556710,0,1,0,0,0),(9,'空间列表','tenant-list','menu','/tenant/tenant-list',1,'/tenant','空间列表',1699585727770,1699585727770,0,1,0,0,0),(10,'组织管理','organization','menu','/organization',0,'/','组织管理',1699596769666,1699596769666,0,0,1,1,1),(11,'预约管理','reservation','menu','/reservation',0,'/','预约管理',1699596785479,1699596785479,0,0,1,1,0),(13,'设备管理','device','menu','/device',0,'/','设备管理',1699596819097,1699596819097,0,0,1,1,1),(14,'管理员管理','admin','menu','/admin',0,'/','管理员管理',1699596835016,1699596835016,0,0,1,1,1),(15,'管理员列表','admin-list','menu','/admin/admin-list',14,'/admin','管理员列表',1699596860172,1699596860172,0,0,1,1,1),(16,'管理员角色','admin-role','menu','/admin/admin-role',14,'/admin','管理员角色',1699596875139,1699596875139,0,0,1,1,1),(17,'管理员权限','admin-permission','menu','/admin/admin-permission',14,'/admin','管理员权限',1699596896565,1699596896565,0,0,1,1,1),(18,'设备分组','group-list','menu','/device/group-list',13,'/device','设备分组',1699596916890,1699596916890,0,0,1,1,1),(19,'设备列表','device-list','menu','/device/device-list',13,'/device','设备列表',1699596933164,1699596933164,0,0,1,1,1),(20,'设备告警','alarm-list','menu','/device/alarm-list',13,'/device','设备告警',1699596985827,1699596985827,0,0,1,1,1),(21,'报修列表','repair-list','menu','/device/repair-list',13,'/device','设备报修',1699597014382,1699597070782,0,0,1,1,1),(22,'日志管理','device-log','menu','/device/device-log',13,'/device','日志管理',1699597038361,1699597063811,0,0,1,1,1),(23,'预约记录','reservation-list','menu','/reservation/reservation-list',11,'/reservation','预约记录',1699597127886,1699597127886,0,0,1,1,0),(24,'违规记录','violation-log-list','menu','/reservation/violation-log-list',11,'/reservation','违规记录',1699597161430,1699597161430,0,0,1,1,0),(25,'预约黑名单','blacklist','menu','/reservation/blacklist',11,'/reservation','预约黑名单',1699597202580,1699597202580,0,0,1,1,0),(26,'公告管理','announcement-list','menu','/reservation/announcement-list',11,'/reservation','公告管理',1699597219482,1699597219482,0,0,1,1,0),(27,'组织列表','organization-tree','menu','/organization/organization-tree',10,'/organization','组织列表',1699597276091,1699597276091,0,0,1,1,1),(28,'场馆列表','venue-tree','menu','/organization/venue-tree',10,'/organization','场馆列表',1699597315325,1699597315325,0,0,1,1,0),(29,'会议室列表','meeting-room','menu','/organization/meeting-room',10,'/organization','会议室列表',1699597431562,1699597431562,0,0,1,1,0),(30,'用户列表','user-list','menu','/organization/user-list',10,'/organization','用户列表',1699597454990,1699597454990,0,0,1,0,0),(31,'网关列表','hub-list','menu','/device/hub-list',13,'/device','网关列表',1699596933164,1699596933164,0,0,1,1,1),(32,'电量统计','electricity-usage','menu','/device/electricity-usage',13,'/device','电量统计',1700729216608,1700729216608,0,0,1,1,1),(33,'部门列表','dept-list','menu','/organization/dept-list',10,'/organization','部门列表',1700729244569,1700729244569,0,0,0,1,0);
/*!40000 ALTER TABLE `t_permission` ENABLE KEYS */;

--
-- Table structure for table `t_reservation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_reservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `user_id` bigint NOT NULL COMMENT '用户id',
  `reservation_no` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '预约编号',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `clear_meeting_id` bigint DEFAULT NULL COMMENT '外部id',
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reservation`
--

/*!40000 ALTER TABLE `t_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_reservation` ENABLE KEYS */;

--
-- Table structure for table `t_reservation_blacklist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_reservation_blacklist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `org_id` bigint NOT NULL COMMENT '组织id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `expire_at` bigint NOT NULL COMMENT '过期时间',
  `create_at` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_reservation_blacklist_tenant_id_user_id_uindex` (`tenant_id`,`user_id`),
  KEY `t_reservation_blacklist_tenant_id_user_id_expire_at_index` (`tenant_id`,`user_id`,`expire_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='预约黑名单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reservation_blacklist`
--

/*!40000 ALTER TABLE `t_reservation_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_reservation_blacklist` ENABLE KEYS */;

--
-- Table structure for table `t_reservation_break`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_reservation_break` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `org_id` bigint NOT NULL,
  `start_time` time NOT NULL COMMENT '开始时间',
  `end_time` time NOT NULL COMMENT '结束时间',
  `desc` text COLLATE utf8mb4_unicode_ci COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='休息时间段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reservation_break`
--

/*!40000 ALTER TABLE `t_reservation_break` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_reservation_break` ENABLE KEYS */;

--
-- Table structure for table `t_reservation_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_reservation_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `user_id` bigint NOT NULL COMMENT '用户id',
  `reservation_id` bigint NOT NULL COMMENT '预约id',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `resource_id` bigint NOT NULL COMMENT '实际资源id',
  `start_time` bigint NOT NULL COMMENT '预约开始时间',
  `end_time` bigint NOT NULL COMMENT '预约结束时间',
  `check_in_time` bigint DEFAULT NULL COMMENT '签到时间',
  `finish_time` bigint DEFAULT NULL,
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='预约项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reservation_item`
--

/*!40000 ALTER TABLE `t_reservation_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_reservation_item` ENABLE KEYS */;

--
-- Table structure for table `t_reservation_rule`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_reservation_rule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `org_id` bigint NOT NULL COMMENT '组织id',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='预约规则';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reservation_rule`
--

/*!40000 ALTER TABLE `t_reservation_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_reservation_rule` ENABLE KEYS */;

--
-- Table structure for table `t_resource`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `venue_id` bigint NOT NULL DEFAULT '0' COMMENT '场馆id',
  `map_id` bigint NOT NULL COMMENT '地图id',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `serial_no` int NOT NULL COMMENT '实际编号',
  `reservation_available` tinyint(1) NOT NULL COMMENT '是否可预约',
  `row` int NOT NULL COMMENT '行',
  `col` int NOT NULL COMMENT '列',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `device_mac` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备mac',
  `product_key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `venue_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '场馆名称',
  `cover` text COLLATE utf8mb4_unicode_ci COMMENT '封面图',
  `capacity` int NOT NULL DEFAULT '1' COMMENT '容量',
  `clear_meeting_id` bigint DEFAULT NULL COMMENT '会议id',
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分组',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_resource_venue_id_serial_no_uindex` (`venue_id`,`serial_no`),
  UNIQUE KEY `t_resource_venue_id_name_uindex` (`venue_id`,`name`),
  KEY `tenant_id_index` (`tenant_id`),
  KEY `t_resource__index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='预约资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_resource`
--

/*!40000 ALTER TABLE `t_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_resource` ENABLE KEYS */;

--
-- Table structure for table `t_resource_reservation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_resource_reservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `resource_id` bigint NOT NULL COMMENT '实际资源id',
  `user_id` bigint NOT NULL COMMENT '预约用户',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NOT NULL COMMENT '结束时间',
  `check_in_time` bigint DEFAULT NULL COMMENT '签到时间',
  `finish_time` bigint DEFAULT NULL COMMENT '完成时间',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `reservation_id` bigint NOT NULL COMMENT '预约记录',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `clear_meeting_id` bigint DEFAULT NULL,
  `device_mac` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='资源预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_resource_reservation`
--

/*!40000 ALTER TABLE `t_resource_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_resource_reservation` ENABLE KEYS */;

--
-- Table structure for table `t_role`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` bigint NOT NULL DEFAULT '0' COMMENT '创建时间',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 未删除 1 已删除',
  `tenant_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'超级管理员','超级管理员',1699587235242,0,0);
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;

--
-- Table structure for table `t_screen_init_setting`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_screen_init_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '初始化参数',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='屏幕初始化设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_screen_init_setting`
--

/*!40000 ALTER TABLE `t_screen_init_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_screen_init_setting` ENABLE KEYS */;

--
-- Table structure for table `t_task_quartz`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_task_quartz` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务分组',
  `job_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务名',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务描述',
  `cron_expression` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cron表达式',
  `job_class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务执行时调用哪个类的方法 包名+类名',
  `job_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '任务状态',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '更新者',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_at` bigint DEFAULT NULL COMMENT '创建时间',
  `update_at` bigint DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='定时器信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_task_quartz`
--

/*!40000 ALTER TABLE `t_task_quartz` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_task_quartz` ENABLE KEYS */;

--
-- Table structure for table `t_tenant`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_tenant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '简介',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `logo` mediumtext COLLATE utf8mb4_unicode_ci,
  `contact_person` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系人',
  `contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `contact_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系邮箱',
  `reservation` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用预约',
  `dingtalk` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否对接钉钉',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'v1',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_tenant_app_key_uindex` (`app_key`),
  KEY `t_tenant_sign_deleted_index` (`delete_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='租户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tenant`
--

/*!40000 ALTER TABLE `t_tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tenant` ENABLE KEYS */;

--
-- Table structure for table `t_tenant_session`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_tenant_session` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` bigint NOT NULL,
  `expire_at` bigint NOT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`),
  KEY `t_tenant_session_tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='租户token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tenant_session`
--

/*!40000 ALTER TABLE `t_tenant_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tenant_session` ENABLE KEYS */;

--
-- Table structure for table `t_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `org_id` bigint NOT NULL COMMENT '组织id',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学号工号',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `gender` int NOT NULL COMMENT '性别',
  `salt` tinytext COLLATE utf8mb4_unicode_ci,
  `password` tinytext COLLATE utf8mb4_unicode_ci,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户角色',
  `avatar` text COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  `clear_meeting_id` bigint DEFAULT NULL,
  `dahua_id` bigint DEFAULT NULL,
  `dingtalk` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为钉钉同步用户',
  `dept_id` bigint DEFAULT NULL,
  `ding_user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ding_union_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `face_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_user_unique_index` (`tenant_id`,`phone`,`dingtalk`,`ding_user_id`,`delete_at`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

--
-- Table structure for table `t_user_announcement_read`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_announcement_read` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `user_id` bigint NOT NULL COMMENT '用户id',
  `announcement_id` bigint NOT NULL COMMENT '公告id',
  `read_at` bigint NOT NULL COMMENT '查看时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_user_id_ann_id_unique_index` (`tenant_id`,`user_id`,`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户公告记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_announcement_read`
--

/*!40000 ALTER TABLE `t_user_announcement_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_announcement_read` ENABLE KEYS */;

--
-- Table structure for table `t_user_collect`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_collect` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `target_id` bigint NOT NULL COMMENT '收藏目标id',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_collect`
--

/*!40000 ALTER TABLE `t_user_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_collect` ENABLE KEYS */;

--
-- Table structure for table `t_user_face`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_face` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `face_url` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人脸图片链接',
  `clear_meeting_id` bigint DEFAULT NULL,
  `dahua_id` bigint DEFAULT NULL,
  `version` int NOT NULL DEFAULT '0',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户人脸';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_face`
--

/*!40000 ALTER TABLE `t_user_face` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_face` ENABLE KEYS */;

--
-- Table structure for table `t_user_reservation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_reservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `resource_id` bigint NOT NULL COMMENT '预约资源id',
  `device_mac` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备mac',
  `product_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资源类型',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '预约状态',
  `start_time` bigint NOT NULL COMMENT '预约开始时间',
  `end_time` bigint NOT NULL COMMENT '预约结束时间',
  `check_in_time` bigint DEFAULT NULL COMMENT '签到时间（实际开始时间）',
  `finish_time` bigint DEFAULT NULL COMMENT '结束/取消时间',
  `clear_meeting_id` bigint DEFAULT NULL,
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  PRIMARY KEY (`id`),
  KEY `t_user_reservation_index_1` (`tenant_id`,`user_id`,`start_time`,`end_time`),
  KEY `t_user_reservation_index_2` (`tenant_id`,`resource_id`,`start_time`,`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_reservation`
--

/*!40000 ALTER TABLE `t_user_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_reservation` ENABLE KEYS */;

--
-- Table structure for table `t_user_reservation_delay`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_reservation_delay` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `resource_id` bigint NOT NULL,
  `start_time` bigint NOT NULL,
  `expire_at` bigint NOT NULL COMMENT '过期时间',
  `reservation_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_user_reservation_delay_tenant_id_resource_id_expire_at_index` (`tenant_id`,`resource_id`,`expire_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='预约延迟';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_reservation_delay`
--

/*!40000 ALTER TABLE `t_user_reservation_delay` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_reservation_delay` ENABLE KEYS */;

--
-- Table structure for table `t_user_role`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_role` (
  `user_id` bigint NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色',
  `update_at` bigint NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  KEY `t_user_role_role_index` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role`
--

/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;

--
-- Table structure for table `t_user_session`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_session` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `platform` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` bigint NOT NULL,
  `expire_at` bigint NOT NULL COMMENT 'token过期时间',
  PRIMARY KEY (`id`),
  KEY `t_user_session_token_index` (`token`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_session`
--

/*!40000 ALTER TABLE `t_user_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_session` ENABLE KEYS */;

--
-- Table structure for table `t_user_violation_point`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_violation_point` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `point` int NOT NULL DEFAULT '0',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_user_violation_point_tenant_id_user_id_uindex` (`tenant_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_violation_point`
--

/*!40000 ALTER TABLE `t_user_violation_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_violation_point` ENABLE KEYS */;

--
-- Table structure for table `t_venue`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_venue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '场馆名称',
  `org_id` bigint NOT NULL COMMENT '组织id',
  `parent_id` bigint NOT NULL COMMENT '上级场馆id',
  `level` int NOT NULL COMMENT '层级',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路径',
  `open_time` time DEFAULT NULL COMMENT '开馆时间',
  `close_time` time DEFAULT NULL COMMENT '闭馆时间',
  `reserve_start_time` time DEFAULT NULL COMMENT '预约开始时间',
  `reserve_end_time` time DEFAULT NULL COMMENT '预约结束时间',
  `create_at` bigint NOT NULL,
  `update_at` bigint NOT NULL,
  `delete_at` bigint NOT NULL DEFAULT '0',
  `deleted` tinyint(1) GENERATED ALWAYS AS ((`delete_at` > 0)) VIRTUAL,
  `cover` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `tenant_id_index` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='场馆';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_venue`
--

/*!40000 ALTER TABLE `t_venue` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_venue` ENABLE KEYS */;

--
-- Table structure for table `t_violation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_violation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `org_id` bigint NOT NULL COMMENT '组织id',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '违规类型',
  `point` int NOT NULL COMMENT '分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='违规类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_violation`
--

/*!40000 ALTER TABLE `t_violation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_violation` ENABLE KEYS */;

--
-- Table structure for table `t_violation_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_violation_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NOT NULL,
  `user_id` bigint NOT NULL COMMENT '用户id',
  `violation_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '违规类型',
  `desc` text COLLATE utf8mb4_unicode_ci COMMENT '说明',
  `point` int NOT NULL COMMENT '违规分数',
  `create_at` bigint NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `submit_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户违规记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_violation_log`
--

/*!40000 ALTER TABLE `t_violation_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_violation_log` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 11:20:14
