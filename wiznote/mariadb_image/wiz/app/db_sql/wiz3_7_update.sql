use `wizasent`;
ALTER TABLE `wiz_kb` 
ADD COLUMN `TENANT_ID` CHAR(38) NULL AFTER `PUBLIC_SHARE`,
ADD INDEX `idx_tenant_id` (`TENANT_ID`);

CREATE TABLE `white_list` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(64) NOT NULL,
  `reason` varchar(64) DEFAULT NULL,
  `type` varchar(64) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `value` (`value`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;