use `wizasent`;
ALTER TABLE `wiz_user` ADD COLUMN `avatar_version` int(10);
ALTER TABLE `wiz_log_pay` ADD COLUMN `CLIENT_TRADE_NO` char(50) , ADD INDEX `CLIENT_TRADE_NO` (CLIENT_TRADE_NO);
ALTER TABLE `wiz_invoice` ADD COLUMN `email` varchar(255);
ALTER TABLE `wiz_biz_cert` ADD COLUMN `PASSWORD_CHECK` varchar(100) COMMENT '用户传入的aes密码加密biz_guid的结果' AFTER `CERT_VERSION`;
ALTER TABLE `wiz_user` ADD COLUMN `TENANT_ID` char(38) DEFAULT NULL AFTER `AVATAR_VERSION`, ADD INDEX `idx_tenant_id` USING BTREE (TENANT_ID);

CREATE TABLE `wiz_activity` (
	`user_guid` char(38) NOT NULL,
	`double_eleven_2018` int(11) DEFAULT NULL,
	PRIMARY KEY (`user_guid`),
	INDEX `double_eleven_2018` (double_eleven_2018)
);

insert into `wiz_kb` ( `KB_TYPE`, `SERVER_GUID`, `ID`, `DT_MODIFIED`, `OFFLINE_READ`, `KB_GUID`, `KB_ID`, `OWNER_GUID`, `DT_CREATED`) values ( 'person', '00000000-0000-0000-0000-000000000000', '0', '2019-09-06 15:58:40', '1', '00000000-0000-0000-0000-000000000000', 'admin-001', '00000000-0000-0000-0000-000000000000', '2019-09-06 15:58:35');

