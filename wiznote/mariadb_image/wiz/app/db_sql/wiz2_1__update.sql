use `wizksent`;
ALTER TABLE `wiz_document` ADD KEY `index_kbguid_category` (`KB_GUID`,`DOCUMENT_CATEGORY`(191));
ALTER TABLE `wiz_document`  ADD KEY `idx_kb_datamodified`(`KB_GUID`,`DT_DATA_MODIFIED`) ;
ALTER TABLE `wiz_kb_stat` ADD INDEX `idx_new_status` USING BTREE (INDEX_NEW_STATUS);
ALTER TABLE `wiz_document_index` ADD INDEX `idx_kb_guid` USING BTREE (kb_guid);
ALTER TABLE `wiz_favor` DROP INDEX `idx_kb_document`;
ALTER TABLE `wiz_document_param` DROP INDEX `index_kbguid_param_version`;
ALTER TABLE `wiz_document_param` ADD INDEX `index_param_kb_version` USING BTREE (KB_GUID, VERSION);
ALTER TABLE `wiz_document` CHANGE COLUMN `IS_DOCUMENT_ABSTRACT_IMAGE` `IS_DOCUMENT_ABSTRACT_IMAGE` tinyint(4) NOT NULL DEFAULT '0' after `DOCUMENT_ABSTRACT_TEXT`;




use `wizasent`;

CREATE TABLE `wiz_kb_migration_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kb_guid` char(38) NOT NULL,
  `user_guid` char(38) NOT NULL,
  `source_server_guid` char(38) NOT NULL,
  `target_server_guid` char(38) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `result` tinyint(1) NOT NULL,
  `message` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4521 DEFAULT CHARSET=utf8;

CREATE TABLE `wiz_kb_migration_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kb_guid` char(38) NOT NULL,
  `user_guid` char(38) NOT NULL,
  `source_server_guid` char(38) NOT NULL,
  `target_server_guid` char(38) NOT NULL,
  `created` datetime NOT NULL,
  `progress` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kb_guid` (`kb_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=571 DEFAULT CHARSET=utf8;

ALTER TABLE `wiz_user` ADD COLUMN `LAST_LOGIN` datetime DEFAULT NULL;
ALTER TABLE `wiz_user` ADD COLUMN `MOBILE_VERIFY` tinyint(3) AFTER `LAST_LOGIN`;



use `wiz_message`;
ALTER TABLE wiz_message.wiz_message ADD COLUMN push_time datetime AFTER note;


