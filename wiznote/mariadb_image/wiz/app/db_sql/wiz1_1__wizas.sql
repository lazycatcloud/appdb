create database wizasent DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
create database wizksent DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
create database wizkv DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
create database wiz_share DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
create database wiz_message DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
create database wizmail DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;

use wizasent;

CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(64) NOT NULL,
  `reason` varchar(64) DEFAULT NULL,
  `type` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_biz` (
  `BIZ_GUID` char(38) NOT NULL,
  `OWNER_GUID` char(38) NOT NULL,
  `BIZ_NAME` varchar(512) DEFAULT NULL,
  `BIZ_STATUS` int(11) NOT NULL,
  `DT_CREATED` datetime DEFAULT NULL,
  `DT_MODIFIED` datetime DEFAULT NULL,
  `BIZ_NOTE` varchar(1024) DEFAULT NULL,
  `INDUSTRY` varchar(64) DEFAULT NULL COMMENT '代理商编号',
  `BIZ_TEL` char(64) DEFAULT NULL,
  `BIZ_LEVEL` int(11) DEFAULT NULL COMMENT 'biz 级别',
  `DUE_DATE` datetime NOT NULL COMMENT '付费服务到期时间',
  `EXTEND_STATUS` int(11) DEFAULT '0',
  `EXTEND_NOTE` varchar(4096) DEFAULT NULL,
  `INVOICE_INFO` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`BIZ_GUID`),
  KEY `IDX_OWNER_GUID` (`OWNER_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_biz_user_role` (
  `BIZ_GUID` char(38) NOT NULL,
  `USER_GUID` char(38) NOT NULL,
  `USER_ALIAS` varchar(32) DEFAULT NULL,
  `USER_GROUP` int(11) NOT NULL COMMENT 'owner  0\\r            admin  1\\r            super   10\\r            editor 100\\r            reader  1000',
  `ROLE_STATE` int(11) NOT NULL,
  `OPERATOR_GUID` char(38) NOT NULL,
  `USER_DEPARTMENT` varchar(64) DEFAULT NULL,
  `ROLE_NOTE` varchar(500) DEFAULT NULL,
  `DT_CREATED` datetime DEFAULT NULL,
  `DT_MODIFIED` datetime DEFAULT NULL,
  PRIMARY KEY (`BIZ_GUID`,`USER_GUID`),
  KEY `IDX_USER_GUID` (`USER_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_coupon` (
  `coupon_id` varchar(64) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `OWNER_GUID` char(38) DEFAULT NULL,
  `dt_create` datetime NOT NULL,
  `dt_use` datetime DEFAULT NULL,
  `dt_due` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_invite_code` (
  `invite_code` varchar(16) NOT NULL DEFAULT '',
  `owner_guid` char(38) NOT NULL DEFAULT '',
  `dt_create` datetime DEFAULT NULL,
  PRIMARY KEY (`invite_code`),
  UNIQUE KEY `owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_invite_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `inviter_guid` varchar(38) NOT NULL DEFAULT '' COMMENT '邀请人',
  `invited_guid` varchar(38) NOT NULL DEFAULT '' COMMENT '被邀请人',
  `invited_id` varchar(64) NOT NULL DEFAULT '' COMMENT '冗余数据，提高性能',
  `dt_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inviter` (`inviter_guid`),
  KEY `invited` (`invited_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_kb` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `KB_GUID` char(38) NOT NULL,
  `KB_ID` varchar(100) NOT NULL,
  `KB_TYPE` char(20) NOT NULL,
  `KB_SHARE` int(11) DEFAULT '0',
  `SERVER_GUID` char(38) DEFAULT NULL,
  `KB_SEO` varchar(100) DEFAULT NULL COMMENT '废弃',
  `KB_NAME` varchar(255) DEFAULT NULL,
  `OWNER_GUID` char(38) DEFAULT NULL,
  `KB_ICON` varchar(16) DEFAULT NULL COMMENT '知识库图标',
  `SERVER3_GUID` char(38) DEFAULT NULL,
  `DT_CREATED` datetime DEFAULT NULL,
  `DT_MODIFIED` datetime DEFAULT NULL,
  `KB_NOTE` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `index_kb_id` (`KB_ID`),
  UNIQUE KEY `idx_kb_guid` (`KB_GUID`),
  KEY `index_owner_type` (`OWNER_GUID`,`KB_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_kb_user_role` (
  `KB_GUID` char(38) NOT NULL,
  `USER_GUID` char(38) NOT NULL,
  `USER_GROUP` int(11) DEFAULT NULL COMMENT 'onew  0\r\n            manager  100\r\n            reader  200',
  `DT_CREATED` datetime DEFAULT NULL,
  `ROLE_STATE` int(11) DEFAULT '0',
  `ROLE_NOTE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`KB_GUID`,`USER_GUID`),
  KEY `USER_GUID` (`USER_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_kb_user_todo` (
  `KB_GUID` char(38) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `TODO_STATE` int(11) DEFAULT NULL,
  `DT_REQUEST` datetime DEFAULT NULL,
  `DT_RESPONSE` datetime DEFAULT NULL,
  `TODO_NOTE` varchar(500) DEFAULT NULL,
  `USER_GROUP` int(11) DEFAULT '0',
  PRIMARY KEY (`KB_GUID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_ks_route` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `route_key` varchar(64) NOT NULL COMMENT '规则的key，可能是email后缀或者bizGuid',
  `server_guid` char(38) NOT NULL COMMENT '服务器guid',
  `category` varchar(32) NOT NULL COMMENT '规则分类,目前有 email,biz,default',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，1:启用, 0: 不启用',
  `dt_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `note` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `input` (`route_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_log_pay` (
  `LOG_SN` int(11) NOT NULL AUTO_INCREMENT,
  `USER_GUID` char(38) DEFAULT NULL,
  `DT_LOG` datetime DEFAULT NULL,
  `LOG_MSG` varchar(256) DEFAULT NULL,
  `PAY_ID` char(50) DEFAULT NULL,
  `PAY_TYPE` char(20) DEFAULT NULL,
  `PRODUCT_TYPE` char(20) DEFAULT NULL,
  `TIME_UNIT` char(20) DEFAULT NULL,
  `PAY_STATE` int(11) DEFAULT NULL,
  `DT_NOTIFY` datetime DEFAULT NULL,
  `DT_FINISH` datetime DEFAULT NULL,
  `PAY_NOTE` varchar(255) DEFAULT NULL,
  `ALI_TRADE_NO` char(50) DEFAULT NULL,
  `PAY_COUNT` int(11) DEFAULT NULL,
  `PAY_TOTAL_FEE` double(11,2) DEFAULT NULL,
  `DISCOUNT` double(11,2) DEFAULT NULL,
  `CHARGE_STATE` int(11) DEFAULT NULL,
  `BUYER_EMAIL` varchar(200) DEFAULT NULL,
  `USED_USER_GUID` char(38) DEFAULT NULL,
  `COUPON` varchar(64) DEFAULT NULL,
  `PROMO_CODE` varchar(64) DEFAULT NULL,
  `DT_START` datetime DEFAULT NULL,
  `DT_END` datetime DEFAULT NULL,
  PRIMARY KEY (`LOG_SN`),
  UNIQUE KEY `PAY_ID` (`PAY_ID`),
  KEY `user_guid` (`USER_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_log_point` (
  `LOG_SN` int(11) NOT NULL AUTO_INCREMENT,
  `USER_GUID` char(36) CHARACTER SET latin1 NOT NULL,
  `LOG_CODE` varchar(64) CHARACTER SET latin1 NOT NULL,
  `DT_LOG` datetime DEFAULT NULL,
  `LOG_MSG` varchar(256) DEFAULT NULL,
  `LOG_LONG` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`LOG_SN`),
  KEY `idx_user_code` (`USER_GUID`,`LOG_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_log_user` (
  `LOG_SN` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USER_GUID` char(36) CHARACTER SET latin1 NOT NULL,
  `LOG_CODE` varchar(16) CHARACTER SET latin1 NOT NULL,
  `LOG_MSG` varchar(255) DEFAULT NULL,
  `DT_LOG` datetime DEFAULT NULL,
  `LOG_LONG` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`LOG_SN`),
  KEY `idx_user_code` (`USER_GUID`,`LOG_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_pay_card` (
  `PAY_CARD_ID` char(32) NOT NULL,
  `USER_GUID` char(38) DEFAULT NULL,
  `PRODUCT_TYPE` char(20) DEFAULT NULL,
  `USED_USER_GUID` char(38) DEFAULT NULL,
  `PAY_STATE` int(11) DEFAULT NULL COMMENT '1->成功\r\n            -1->失败',
  `DT_ONLINE` datetime DEFAULT NULL,
  `DT_USED` datetime DEFAULT NULL,
  `OPERATOR_NAME` varchar(100) DEFAULT NULL,
  `PAY_NOTE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`PAY_CARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_promo_code` (
  `code_id` varchar(64) NOT NULL,
  `owner_guid` char(38) NOT NULL,
  `code_level` int(11) NOT NULL,
  `dt_create` datetime NOT NULL,
  `dt_modify` datetime NOT NULL,
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_server` (
  `SERVER_GUID` char(38) NOT NULL,
  `SERVER_NAME` varchar(100) DEFAULT NULL,
  `INTERNAL_SERVER_URL` varchar(255) DEFAULT NULL,
  `SERVER_URL` varchar(255) DEFAULT NULL,
  `ACCESS_ID` varchar(255) DEFAULT NULL,
  `ACCESS_KEY` varchar(255) DEFAULT NULL,
  `SERVER_TYPE` int(11) DEFAULT NULL,
  `SERVER_IP` varchar(20) DEFAULT NULL,
  `SERVER_STATE` int(11) DEFAULT NULL,
  `SERVER_GROUP` varchar(20) DEFAULT NULL,
  `SERVER_NOTE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`SERVER_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_temp_id` (
  `TEMP_ID` char(38) NOT NULL,
  `TEMP_TYPE` char(20) NOT NULL,
  `DT_CREATED` datetime DEFAULT NULL,
  `DT_EXPIRE` datetime DEFAULT NULL,
  `TEMP_NOTE` varchar(500) DEFAULT NULL,
  `TEMP_VALUE_STR1` char(255) DEFAULT NULL,
  `TEMP_VALUE_STR2` char(255) DEFAULT NULL,
  `TEMP_VALUE_STR3` char(255) DEFAULT NULL,
  `TEMP_VALUE_LONG1` bigint(20) DEFAULT NULL,
  `TEMP_VALUE_LONG2` bigint(20) DEFAULT NULL,
  `TEMP_VALUE_LONG3` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TEMP_ID`),
  KEY `index_type_str1` (`TEMP_TYPE`,`TEMP_VALUE_STR1`),
  KEY `idx_dt_expire` (`DT_EXPIRE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_user` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USER_GUID` char(38) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE` char(50) DEFAULT NULL,
  `DISPLAYNAME` varchar(100) NOT NULL,
  `PASSWORD` char(32) NOT NULL,
  `USER_LANGUAGE` char(10) DEFAULT NULL,
  `USER_TYPE` char(10) DEFAULT NULL COMMENT '40M\r\n            100M\r\n            1G',
  `USER_NOTE` varchar(500) DEFAULT NULL,
  `USER_META` varchar(2048) DEFAULT NULL,
  `DT_CREATED` datetime DEFAULT NULL,
  `USER_STATE` int(11) DEFAULT NULL,
  `GMT_OFFSET` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_user_guid` (`USER_GUID`),
  UNIQUE KEY `AK_Identifier_email` (`EMAIL`),
  UNIQUE KEY `AK_Identifier_mobile` (`MOBILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_user_cert` (
  `USER_GUID` char(38) NOT NULL,
  `CERT_E` varchar(100) DEFAULT NULL,
  `CERT_N` varchar(1024) DEFAULT NULL,
  `CERT_D` varchar(1024) DEFAULT NULL,
  `CERT_HINT` varchar(200) DEFAULT NULL,
  `CERT_VERSION` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`USER_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_user_meta` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USER_GUID` char(36) CHARACTER SET latin1 NOT NULL,
  `META_NAME` varchar(32) CHARACTER SET latin1 NOT NULL,
  `META_VALUE_STR` varchar(100) DEFAULT NULL,
  `META_VALUE_LONG` bigint(20) DEFAULT NULL,
  `META_NOTE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_user_meta` (`USER_GUID`,`META_NAME`),
  KEY `META_VALUE_STR` (`META_VALUE_STR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
