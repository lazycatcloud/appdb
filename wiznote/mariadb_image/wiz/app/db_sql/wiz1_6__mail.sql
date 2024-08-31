use wizmail;

-- 导出  表 wizmail.wiz_mail 结构
CREATE TABLE IF NOT EXISTS `wiz_mail` (
  `MAIL_SN` bigint(20) NOT NULL AUTO_INCREMENT,
  `MAIL_TYPE` char(20) DEFAULT NULL,
  `MAIL_STATE` int(11) DEFAULT NULL,
  `MAIL_TO` varchar(255) DEFAULT NULL,
  `MAIL_REPLY` varchar(255) DEFAULT NULL,
  `MAIL_CONTENT_TYPE` varchar(64) DEFAULT NULL COMMENT '邮件内容类型，可以是 txt ,html',
  `MAIL_SUBJECT` varchar(512) DEFAULT NULL,
  `MAIL_BODY` varchar(4096) DEFAULT NULL,
  `DT_CREATED` datetime DEFAULT NULL,
  `DT_SENT` datetime DEFAULT NULL,
  `MAIL_NOTE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MAIL_SN`),
  KEY `MAIL_TO` (`MAIL_TO`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 20140808 更改表结构，以便支持markdown 邮件

ALTER TABLE `wiz_mail`
    CHANGE COLUMN `MAIL_BODY` `MAIL_BODY` MEDIUMTEXT NULL AFTER `MAIL_SUBJECT`;

-- 20141117
CREATE TABLE IF NOT EXISTS `mail_black_list` (
  `email` varchar(128) NOT NULL DEFAULT '',
  `count` int(11) DEFAULT '0',
  `reported` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `share_mail_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mail_id` int(11) NOT NULL,
  `hash` char(32) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wiz_sms` (
  `id` bigint(20) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `sms_state` int(11) NOT NULL,
  `dt_created` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
