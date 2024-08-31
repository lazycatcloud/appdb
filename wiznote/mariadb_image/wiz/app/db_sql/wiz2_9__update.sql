use `wizasent`;
ALTER TABLE `wiz_kb`
	ADD COLUMN `PUBLIC_SHARE` TINYINT(1) NULL COMMENT '完全公开群组，可以通过book/blog方式阅读';