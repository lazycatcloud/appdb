
USE `wiz_share`;


CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` char(128) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(64) NOT NULL,
  `KB_GUID` char(36) NOT NULL,
  `reason` varchar(64) DEFAULT '',
  `operator` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `blocked_word` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(16) NOT NULL,
  `weight` tinyint(11) NOT NULL,
  `reason` varchar(128) DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `share` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kb_guid` char(36) CHARACTER SET latin1 NOT NULL,
  `document_guid` char(36) CHARACTER SET latin1 NOT NULL,
  `user_guid` char(36) CHARACTER SET latin1 NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `password` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `spam_status` tinyint(11) NOT NULL,
  `spam_reason` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `read_count` int(11) NOT NULL,
  `read_count_set` int(11) DEFAULT NULL,
  `read_count_limit` int(11) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `expired_days_set` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `share_type` char(8) CHARACTER SET utf8 DEFAULT 'person',
  `document_owner_guid` char(36) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `document_guid` (`document_guid`),
  KEY `kb_guid` (`kb_guid`),
  KEY `idx_spam_created_at` (`spam_status`,`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2200118 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `share_friends` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `share_id` char(48) NOT NULL DEFAULT '',
  `user_guid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;


CREATE TABLE `spam_report` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `share_id` char(48) CHARACTER SET latin1 NOT NULL,
  `ip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `share_id` (`share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
