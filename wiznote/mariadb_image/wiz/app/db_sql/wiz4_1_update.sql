use `wizasent`;

CREATE TABLE `wiz_user_device` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_guid` CHAR(38) NOT NULL COMMENT '用户的user_guid',
  `device_id` VARCHAR(128) NOT NULL  COMMENT '设备id',
  `device_name` VARCHAR(24)  DEFAULT NULL  COMMENT '设备名称',
  `device_type` VARCHAR(24)  DEFAULT NULL  COMMENT '设备类型',
  `last_login_time` DATETIME NOT NULL  COMMENT '最后登录时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_guid_device_id` (`user_guid`,`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `wiz_user_data_record` 
    CHANGE COLUMN `tips` `tips` TINYINT(1) NULL DEFAULT 0 COMMENT '是否开启二次验证' ;

UPDATE `wiz_user_data_record` set tips = 0;