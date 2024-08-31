use `wizasent`;
ALTER TABLE `wiz_biz_user_role` 
	MODIFY COLUMN `USER_ALIAS` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL AFTER `USER_GUID`;