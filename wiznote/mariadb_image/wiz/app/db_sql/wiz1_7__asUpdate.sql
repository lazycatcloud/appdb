use wizasent;

ALTER TABLE `wiz_user`
  ADD COLUMN `POINTS` INT UNSIGNED NULL DEFAULT '0' AFTER `USER_LANGUAGE`,
  ADD COLUMN `CREATED_BY` TINYINT UNSIGNED NULL AFTER `POINTS`,
  ADD COLUMN `EMAIL_VERIFY` TINYINT UNSIGNED NULL DEFAULT '0' AFTER `CREATED_BY`,
  ADD COLUMN `VIP_DATE` DATETIME NULL DEFAULT NULL AFTER `EMAIL_VERIFY`,
  DROP COLUMN `USER_TYPE`,
  DROP COLUMN `USER_NOTE`,
  DROP COLUMN `USER_META`;

UPDATE  `wiz_user` set `VIP_DATE` = "2100-02-01 00:00:00" where `USER_GUID` = '00000000-0000-0000-0000-000000000000';

DROP TABLE `wiz_user_meta`;

CREATE TABLE `wiz_open_id` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
    `user_pk` bigint(11) NOT NULL,
  `type` varchar(8) CHARACTER SET latin1 NOT NULL,
    `open_id` varchar(32) CHARACTER SET latin1 NOT NULL,
  `access_token` varchar(64) CHARACTER SET latin1 NOT NULL DEFAULT '',
    `alias` varchar(32) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
    UNIQUE KEY `uniq_user_pk_type` (`user_pk`,`type`),
  KEY `idx_open_id` (`open_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
