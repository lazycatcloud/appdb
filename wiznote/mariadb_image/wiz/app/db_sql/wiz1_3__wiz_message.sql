use wiz_message;

CREATE TABLE `wiz_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `biz_guid` varchar(36) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `kb_guid` varchar(36) CHARACTER SET latin1 NOT NULL,
  `document_guid` varchar(36) CHARACTER SET latin1 NOT NULL,
  `title` varchar(768) DEFAULT NULL,
  `sender_guid` varchar(36) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `sender_id` varchar(128) NOT NULL DEFAULT '',
  `receiver_guid` varchar(36) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `receiver_id` varchar(128) NOT NULL DEFAULT '',
  `version` bigint(20) NOT NULL,
  `message_type` tinyint(4) NOT NULL,
  `email_status` tinyint(4) NOT NULL,
  `sms_status` tinyint(4) NOT NULL,
  `read_status` tinyint(4) NOT NULL,
  `push_status` tinyint(4) NOT NULL DEFAULT '0',
  `delete_status` tinyint(4) DEFAULT '0',
  `dt_created` datetime NOT NULL,
  `message_body` varchar(1024) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receiver_and_version` (`receiver_guid`,`version`),
  KEY `IDX_PUSH_STATUS` (`push_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wiz_message_backup` LIKE `wiz_message`;

CREATE TABLE `device` (
  `device_token` varchar(128) NOT NULL,
  `owner_guid` char(38) NOT NULL,
  `device_type` varchar(16) NOT NULL DEFAULT '',
  `show_preview` int(11) DEFAULT '1',
  `time_zone` varchar(16) DEFAULT NULL,
  `no_disturb_start` int(11) DEFAULT NULL,
  `no_disturb_end` int(11) DEFAULT NULL,
  `push_mention` int(11) DEFAULT '1',
  `push_comment` int(11) DEFAULT '1',
  `push_edit` int(11) DEFAULT '1',
  `dt_create` datetime DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`device_token`),
  KEY `idx_owner` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
