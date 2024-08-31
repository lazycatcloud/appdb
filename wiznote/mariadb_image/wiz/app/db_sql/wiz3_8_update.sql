use `wizksent`;

CREATE TABLE `wiz_note_invite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_guid` char(36) NOT NULL,
  `kb_guid` char(36) NOT NULL,
  `doc_guid` char(36) NOT NULL,
  `invite_guid` char(36) NOT NULL,
  `permission` char(1) NOT NULL,
  `count_limit` bigint(20) unsigned NOT NULL,
  `expire_at` bigint(20) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invite` (`kb_guid`,`doc_guid`,`invite_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_note_member` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_guid` char(36) NOT NULL,
  `kb_guid` char(36) NOT NULL,
  `doc_guid` char(36) NOT NULL,
  `member_guid` char(36) NOT NULL,
  `permission` char(1) NOT NULL,
  `invite_guid` char(36) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member` (`kb_guid`,`doc_guid`,`member_guid`),
  KEY `invites` (`kb_guid`,`doc_guid`,`invite_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

update `wiz_document` set BODY_TEXT = NULL;
ALTER TABLE `wiz_document`
   ADD COLUMN `DOCUMENT_COVER_IMAGE` TINYINT(4) NULL;