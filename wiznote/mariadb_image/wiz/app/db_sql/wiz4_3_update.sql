use `wizasent`;

ALTER TABLE `wiz_user_device` 
    CHANGE COLUMN `device_type` `device_type` VARCHAR(64)  DEFAULT NULL  COMMENT '设备类型',
    CHANGE COLUMN `device_name` `device_name` VARCHAR(64)  DEFAULT NULL  COMMENT '设备类型';