use wizasent;
-- as
-- 2016-03-15 wiz_user_data_record
ALTER TABLE `wiz_user_data_record` ADD `upgrade` TINYINT(1)  NULL  DEFAULT 1 AFTER `pc`;
ALTER TABLE `wiz_user_data_record` ADD `discount` TINYINT(1)  NULL  DEFAULT 1 AFTER `upgrade`;
ALTER TABLE `wiz_user_data_record` ADD `tips` TINYINT(1)  NULL  DEFAULT 1 AFTER `discount`;

-- 2016-02-15 用户拥有高级功能记录；
CREATE TABLE `wiz_user_advanced_record` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`user_id` INT(10) NOT NULL COMMENT '用户id',
	`advanced_name` VARCHAR(32) NOT NULL COMMENT '高级功能名称',
	`created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`client_type` VARCHAR(16) NULL DEFAULT NULL COMMENT '客户端类型',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `user_id_advanced_function_name` (`user_id`, `advanced_name`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 2016-04-22 添加群组离线访问标志
ALTER TABLE `wiz_kb` ADD `OFFLINE_READ` TINYINT(1)  NOT NULL  DEFAULT 1  AFTER `KB_NOTE`;

-- 2016-02-15 提醒功能增加wiz_remind_task表,wiz_remind_record表；
CREATE TABLE `wiz_remind_task` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`biz_guid` VARCHAR(36) NULL DEFAULT '' COMMENT '团队guid',
	`kb_guid` VARCHAR(36) NOT NULL COMMENT '群组guid',
	`document_guid` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '笔记guid',
	`creator_guid` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '创建者guid',
	`receiver_guid` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '接收者guid',
	`repeat_type` VARCHAR(12) NULL DEFAULT NULL COMMENT '周，月，年',
	`remind_month` SMALLINT(6) NULL DEFAULT NULL,
	`remind_day` SMALLINT(5) NULL DEFAULT NULL,
	`remind_time` VARCHAR(36) NULL DEFAULT NULL,
	`next_remind_time` DATETIME NULL DEFAULT NULL COMMENT '下次提醒时间',
	`dt_created` DATETIME NOT NULL COMMENT '创建提醒时间',
	`status` TINYINT(4) NOT NULL COMMENT '提醒任务状态',
	`document_owner_guid` VARCHAR(36) NULL DEFAULT NULL COMMENT '提醒笔记作者的guid',
	PRIMARY KEY (`id`),
	INDEX `next_remind_time` (`next_remind_time`),
	INDEX `status` (`status`),
	INDEX `creator_guid` (`creator_guid`),
	INDEX `receiver_guid` (`receiver_guid`),
	INDEX `document_owner_guid` (`document_owner_guid`)
)
ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE `wiz_remind_record` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`biz_guid` VARCHAR(36) NULL DEFAULT '',
	`task_id` BIGINT(20) NOT NULL,
	`kb_guid` VARCHAR(36) NOT NULL,
	`document_guid` VARCHAR(36) NOT NULL DEFAULT '',
	`creator_guid` VARCHAR(36) NOT NULL DEFAULT '',
	`receiver_guid` VARCHAR(36) NOT NULL DEFAULT '',
	`remind_time` DATETIME NOT NULL COMMENT '提醒时间',
	`finish_time` DATETIME NULL DEFAULT NULL COMMENT '完成时间',
	`status` TINYINT(4) NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `creator_guid` (`creator_guid`),
	INDEX `receiver_guid` (`receiver_guid`),
	INDEX `status` (`status`),
	INDEX `task_id` (`task_id`)
)
ENGINE=InnoDB CHARSET=utf8;

ALTER TABLE `wiz_user_data_record`
	ADD COLUMN `sms_remind` TINYINT(1) NULL DEFAULT '0' COMMENT '是否接收提醒短信' AFTER `tips`,
	ADD COLUMN `email_remind` TINYINT(1) NULL DEFAULT '0' COMMENT '是否接收提醒邮件' AFTER `sms_remind`,
	ADD COLUMN `client_remind` TINYINT(1) NULL DEFAULT '0' COMMENT '是否接收客户端提醒' AFTER `email_remind`;

-- 2015-04-3 wiz_invoice；
CREATE TABLE `wiz_invoice` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`biz_guid` CHAR(38) NOT NULL,
	`pay_id` CHAR(50) NOT NULL,
	`content` VARCHAR(32) NOT NULL COMMENT '发票内容',
	`type` VARCHAR(16) NOT NULL COMMENT '发票类型',
	`title` VARCHAR(32) NOT NULL COMMENT '发票抬头',
	`contacts` VARCHAR(16) NOT NULL COMMENT '联系人',
	`contact_tel` VARCHAR(16) NOT NULL COMMENT '联系电话',
	`post_address` VARCHAR(64) NOT NULL COMMENT '邮寄地址',
	`tax_payer_number` VARCHAR(32) NULL DEFAULT NULL COMMENT '纳税人识别号',
	`register_address` VARCHAR(64) NULL DEFAULT NULL COMMENT '注册地址',
	`register_tel` VARCHAR(16) NULL DEFAULT NULL COMMENT '注册电话',
	`bank_name` VARCHAR(32) NULL DEFAULT NULL COMMENT '开户行',
	`bank_number` VARCHAR(32) NULL DEFAULT NULL COMMENT '银行账号',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `pay_id` (`pay_id`),
	INDEX `biz_guid` (`biz_guid`)
)
ENGINE=InnoDB CHARSET=utf8;

ALTER TABLE `wiz_log_pay`
	ADD COLUMN `INVOICE_STATUS` TINYINT NULL DEFAULT '0' AFTER `DT_END`;

-- 2015-04-14
ALTER TABLE `wiz_log_pay`
	ADD COLUMN `RECEIPT_STATUS` TINYINT(4) NULL DEFAULT '0' AFTER `INVOICE_STATUS`;

-- 2015-04-29
ALTER TABLE `wiz_log_pay` ADD INDEX `idx_pay_state` (`PAY_STATE`);
ALTER TABLE `wiz_log_pay` ADD INDEX `idx_invoice_status` (`INVOICE_STATUS`);
ALTER TABLE `wiz_log_pay` ADD INDEX `idx_receipt_status` (`RECEIPT_STATUS`);

-- 2015-05-16
ALTER TABLE `wiz_remind_task` ADD `priority` TINYINT(1)  NOT NULL  DEFAULT '0'  AFTER `document_owner_guid`;

-- 2015-05-19
ALTER TABLE `wiz_user_data_record`
	CHANGE COLUMN `sms_remind` `sms_remind` TINYINT(1) NULL DEFAULT '1' COMMENT '是否接收提醒短信' AFTER `tips`,
	CHANGE COLUMN `email_remind` `email_remind` TINYINT(1) NULL DEFAULT '1' COMMENT '是否接收提醒邮件' AFTER `sms_remind`,
	CHANGE COLUMN `client_remind` `client_remind` TINYINT(1) NULL DEFAULT '1' COMMENT '是否接收客户端提醒' AFTER `email_remind`;

-- 2015-06-06
ALTER TABLE `wiz_remind_record`
	ADD COLUMN `document_title` VARCHAR(255) NULL AFTER `status`;
ALTER TABLE `wiz_remind_task`
	ADD COLUMN `document_title` VARCHAR(255) NULL AFTER `priority`;



ALTER TABLE `wiz_log_pay`
	ADD COLUMN `KB_GUID` CHAR(38) NULL COMMENT '分享付费的kb_guid' AFTER `RECEIPT_STATUS`;

-- 2016-07-09
ALTER TABLE `wiz_log_pay`
	ADD COLUMN `SHARE_SETTLEMENT_STATUS` TINYINT(4) NULL DEFAULT NULL COMMENT '分享付费结算状态' AFTER `KB_GUID`;

ALTER TABLE `wiz_log_pay`
	ADD INDEX `USED_USER_GUID` (`USED_USER_GUID`);

-- 2016-07-14	, 后续会在data.wiz.cn 按kb列出支付记录
ALTER TABLE `wiz_log_pay`
	ADD INDEX `KB_GUID` (`KB_GUID`);

-- 2016-07-21 ,  在data.wiz.cn 列出所有付费订阅的kb
ALTER TABLE  `wiz_kb` ADD INDEX  `kb_share` (  `KB_SHARE` );
ALTER TABLE  `wiz_log_pay` ADD INDEX  `product_type` (  `product_type` );


-- 2016-08-24 ,  biz 证书
CREATE TABLE `wiz_biz_cert` (
  `BIZ_GUID` char(38) NOT NULL,
  `CERT_E` varchar(100) DEFAULT NULL,
  `CERT_N` varchar(1024) DEFAULT NULL,
  `CERT_D` varchar(1024) DEFAULT NULL,
  `CERT_HINT` varchar(200) DEFAULT NULL,
  `CERT_VERSION` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`BIZ_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2016-09-24 , 分享推荐群组
CREATE TABLE `wiz_kb_share_recommend` (
	`id` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`kb_guid` char(38) NOT NULL COMMENT 'kb_guid',
	`sort_number` INT(10) NULL DEFAULT NULL COMMENT '排序',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `kb_guid` (`kb_guid`),
	INDEX `sort_number` (`sort_number`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2016-10-24 , 分享推荐文章
CREATE TABLE `wiz_document_share_recommend` (
	`id` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`kb_guid` char(38) NOT NULL COMMENT 'kb_guid',
	`document_guid` char(38) NOT NULL COMMENT 'document_guid',
	`sort_number` INT(10) NULL DEFAULT NULL COMMENT '排序',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `kb_dc` (`kb_guid`,`document_guid`),
	INDEX `sort_number` (`sort_number`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `wiz_kb_share_recommend` ADD COLUMN `special_type` varchar(20) NULL DEFAULT "common" AFTER `sort_number`;


-- 2016-12-2  kb 附属表
CREATE TABLE `wiz_kb_extra` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`kb_guid` char(38) NOT NULL COMMENT 'kb_guid',
	`kb_owner_guid` char(38) NULL DEFAULT NULL COMMENT 'kb_owner_guid',
	`kb_max_dt_created` varchar(30) NULL DEFAULT NULL COMMENT '群组创建笔记的最大时间',
	`share_kb_income`  double(11,2) NULL DEFAULT NULL COMMENT '分享收入',
	`share_pay_price`  double(11,2) NULL DEFAULT '1' COMMENT '设置订阅价格',
	`read_count` int(10) NULL DEFAULT '0' COMMENT '阅读数量',
	`kb_document_count` int(10) NULL DEFAULT '0' COMMENT '笔记数量',
	`subscriber_count` int(10) NULL DEFAULT '0' COMMENT '订阅数',
	`kb_owner_name` varchar(100) NULL DEFAULT NULL COMMENT '群组拥有者名字',
	`kb_note` varchar(1024) NULL DEFAULT NULL COMMENT 'kb_note',
	`kb_name` varchar(255) NULL DEFAULT NULL COMMENT 'kb_name',
	`share_category` varchar(20) NULL DEFAULT NULL COMMENT '分享类别',
	`sort_rule` varchar(20) NULL DEFAULT NULL COMMENT '排序规则',
	`read_rule` varchar(20) NULL DEFAULT NULL COMMENT '阅读规则',
	`check_share` TINYINT(1) NULL DEFAULT '0' COMMENT '是否通过审核',
	`first_kb` TINYINT(1) NULL DEFAULT '0' COMMENT '是否是首发kb',
	`recommend_kb` TINYINT(1) NULL DEFAULT '0' COMMENT '是否是推荐kb',
	`public_state` TINYINT(1) NULL DEFAULT '0' COMMENT '公开状态',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `kb_guid` (`kb_guid`),
	INDEX `share_category` (`share_category`),
	INDEX `public_state` (`public_state`),
	INDEX `recommend_kb` (`recommend_kb`),
	INDEX `first_kb` (`first_kb`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `wiz_kb_extra` ADD INDEX `kb_document_count` (`kb_document_count`);


-- 2017-02-28 增加用户同步方式设置
ALTER TABLE `wiz_user_data_record`
	ADD COLUMN `sync_type` TINYINT(1) NULL DEFAULT 100 COMMENT '同步方式' AFTER `client_remind`;

use wizksent;
-- ks
ALTER TABLE `wiz_deleted` ADD `DELETED_TAG` VARCHAR(38)  NULL  DEFAULT NULL  AFTER `DELETED_EXT`;



ALTER TABLE `wiz_document_param`
	ADD COLUMN `VERSION` bigint(20) NULL DEFAULT 0 AFTER `PARAM_VALUE`;

ALTER TABLE `wiz_kb_stat`
	ADD COLUMN `PARAM_VERSION` bigint(20) UNSIGNED NOT NULL DEFAULT 10000000 AFTER `TAG_VERSION`;

-- 2016/12/30
CREATE TABLE `wiz_document_index` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `obj_guid` binary(16) NOT NULL,
  `kb_guid` binary(16) NOT NULL,
  `action` TINYINT(1) NOT NULL COMMENT 'DeleteOrUpdate',
  `dt_create` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `type` TINYINT(1) NOT NULL COMMENT 'document,attachment',
 PRIMARY KEY (`ID`),
  UNIQUE KEY `obj_guid` (`obj_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- 2017/01/12
ALTER TABLE `wiz_kb_stat`
   ADD COLUMN `INDEX_NEW_STATUS` tinyint(3) DEFAULT 0 AFTER `INDEX_STATUS`;


ALTER TABLE `wiz_document`
   ADD COLUMN `DOCUMENT_ABSTRACT_TEXT` varchar(255) AFTER `DOCUMENT_KEYWORDS`,
   ADD COLUMN `IS_DOCUMENT_ABSTRACT_IMAGE` TINYINT(1) DEFAULT 0 NOT NULL  AFTER `DOCUMENT_ABSTRACT_TEXT`;

-- 2016/12/30
CREATE TABLE `wiz_document_index2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `obj_guid` binary(16) NOT NULL,
  `kb_guid` binary(16) NOT NULL,
  `action` TINYINT(1) NOT NULL COMMENT 'DeleteOrUpdate',
  `dt_create` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `type` TINYINT(1) NOT NULL COMMENT 'document,attachment',
 PRIMARY KEY (`ID`),
  UNIQUE KEY `obj_guid` (`obj_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- 2017/03/07  为新的ks服务器增加文档owner字段
ALTER TABLE `wiz_document`
   ADD COLUMN `DOCUMENT_OWNER_GUID` binary(16) COMMENT '文档作者的USERGUID' AFTER `DOCUMENT_OWNER` ;

-- 2017/05/02
ALTER TABLE `wiz_document_param` ADD INDEX `index_kbguid_param_version` (KB_GUID, VERSION);

ALTER TABLE `wiz_deleted`
  ADD COLUMN `DELETED` tinyint(4) DEFAULT 0 NOT NULL AFTER `DELETED_TAG`,
  ADD COLUMN `CLIENT_TYPE` varchar(16)   NULL AFTER `DELETED`,
  ADD COLUMN `CLIENT_VERSION` varchar(16)   NULL AFTER `CLIENT_TYPE`;

ALTER TABLE `wiz_kb_stat`
  ADD COLUMN `USER_VERSION` int(10) unsigned DEFAULT '1' AFTER `INDEX_NEW_STATUS`;