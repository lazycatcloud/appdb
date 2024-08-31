use wizasent;

-- 2015.9.6 wiz_biz添加id，新增wiz_webhook表
ALTER TABLE `wiz_biz`
ADD COLUMN `ID` INT(11) NOT NULL AUTO_INCREMENT FIRST,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`ID`),
ADD UNIQUE INDEX `UNIQ_BIZ_GUID` (`BIZ_GUID`);

CREATE TABLE `wiz_webhook` (
    `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
    `kb_id` int(11) NOT NULL,
    `biz_id` int(11) NOT NULL,
    `operator_id` int(11) NOT NULL COMMENT '操作者',
    `secret` varchar(32) DEFAULT NULL,
    `webhook_url` varchar(128) NOT NULL DEFAULT '' COMMENT '推送地址',
    `platform` tinyint(4) NOT NULL COMMENT '平台类型',
    `alias` varchar(16) DEFAULT NULL,
    `created_at` datetime NOT NULL COMMENT '添加日期',
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`id`),
    KEY `idx_kb_url` (`kb_id`,`webhook_url`),
    KEY `idx_biz` (`biz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2015.9.18 去除非空约束
ALTER TABLE `wiz_user` CHANGE `USER_ID` `USER_ID` VARCHAR(255)  CHARACTER SET utf8  COLLATE utf8_general_ci  NULL  DEFAULT NULL;

-- 删除 user_id 列
ALTER TABLE `wiz_user` DROP `USER_ID`;

-- 删除 wiz_temp_id 表
DROP TABLE `wiz_temp_id`;

-- 2015.10.23  添加群组邀请链接表
CREATE TABLE `wiz_group_invite` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `kb_id` int(11) NOT NULL,
    `code` char(6) NOT NULL DEFAULT '',
    `user_role` int(11) NOT NULL,
    `active` tinyint(1) NOT NULL,
    `need_admin_permit` tinyint(11) NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uniq_code` (`code`),
    UNIQUE KEY `uniq_kb_id` (`kb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2015.10.18 在wiz_user中增加勋章数量字段
ALTER TABLE `wiz_user`
ADD COLUMN `MEDAL_COUNT` INT(3) NULL DEFAULT '0' AFTER `GMT_OFFSET`;

-- 2015.10.20 增加数据表wiz_medal_group，wiz_medal_group_information,wiz_medal，wiz_medal_information，wiz_user_data_record，wiz_user_medal_record

CREATE TABLE `wiz_medal_group` (
    `id` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `sort_number` INT(10) NULL DEFAULT NULL COMMENT '排序号',
    `align` VARCHAR(16) NOT NULL COMMENT '排列方式',
    `head_style` VARCHAR(16) NOT NULL COMMENT '头部显示方式',
    `client_type` VARCHAR(16) NOT NULL COMMENT '客户端类型',
    `text_color` VARCHAR(16) NULL DEFAULT NULL COMMENT '字体颜色',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_medal` (
    `id` INT(10) NOT NULL AUTO_INCREMENT COMMENT '勋章id',
    `group_id` INT(10) NOT NULL COMMENT '勋章类型id',
    `reward_point` INT(10) NULL DEFAULT NULL COMMENT '勋章奖励积分',
    `sort_number` INT(10) NULL DEFAULT NULL COMMENT '勋章排序',
    `is_forever` TINYINT(1) NULL DEFAULT '1' COMMENT '是否必须显示',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_medal_group_information` (
    `id` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `language_type` VARCHAR(16) NOT NULL COMMENT '语言类型',
    `group_id` INT(10) NULL DEFAULT NULL COMMENT '勋章组id',
    `title` VARCHAR(64) NULL DEFAULT NULL COMMENT '勋章名称',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `language_type_group_id` (`language_type`, `group_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_medal_information` (
    `id` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `language_type` VARCHAR(16) NOT NULL COMMENT '语言类型',
    `medal_id` INT(10) NULL DEFAULT NULL COMMENT '勋章id',
    `title` VARCHAR(64) NULL DEFAULT NULL COMMENT '勋章名称',
    `description` VARCHAR(255) NULL DEFAULT NULL COMMENT '勋章说明',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `language_type_medal_id` (`language_type`, `medal_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `wiz_user_data_record` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` INT(10) NULL DEFAULT NULL COMMENT '用户id',
    `comment_count` INT(10) NULL DEFAULT '0' COMMENT '评论次数',
    `continuous_synchronization_days` INT(10) NULL DEFAULT '0' COMMENT '连续同步天数',
    `synchronization_mark_date` DATETIME NULL DEFAULT NULL COMMENT '连续同步时间标志',
    `mobile` TINYINT(1) NULL DEFAULT '0' COMMENT '移动端用户记录',
    `web` TINYINT(1) NULL DEFAULT '0' COMMENT '网页端用户记录',
    `pc` TINYINT(1) NULL DEFAULT '0' COMMENT '桌面端用户记录',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `user_id` (`user_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_user_medal_record` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` INT(10) NULL DEFAULT NULL COMMENT '用户id',
    `medal_id` INT(10) NULL DEFAULT NULL COMMENT '勋章id',
    `notice_status` TINYINT(1) NULL DEFAULT NULL COMMENT '是否通知用户',
    `created_at` DATETIME NULL DEFAULT NULL COMMENT '勋章创建时间',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `user_id_medal_id` (`user_id`, `medal_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2015-10-28 添加保存用户申请的表
CREATE TABLE `wiz_kb_user_invite` (
    `KB_GUID` char(38) NOT NULL,
    `USER_ID` varchar(255) NOT NULL,
    `STATE` int(11) DEFAULT NULL,
    `DT_CREATED` datetime DEFAULT NULL,
    `DT_UPDATED` datetime DEFAULT NULL,
    `NOTE` varchar(500) DEFAULT NULL,
    `USER_GROUP` int(11) DEFAULT '0',
    PRIMARY KEY (`KB_GUID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2015.11.16 修改勋章记录 notice_status和created_at不允许为空，notice_status默认值为0
ALTER TABLE `wiz_user_medal_record`
ALTER `created_at` DROP DEFAULT;
ALTER TABLE `wiz_user_medal_record`
CHANGE COLUMN `notice_status` `notice_status` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '是否通知用户' AFTER `medal_id`,
CHANGE COLUMN `created_at` `created_at` DATETIME NOT NULL COMMENT '勋章创建时间' AFTER `notice_status`;


ALTER TABLE `wiz_open_id`
ADD COLUMN `is_save_remind` TINYINT NULL DEFAULT '1' COMMENT '是否显示保存提示' AFTER `updated_at`,
ADD COLUMN `weixin_remind_time` DATETIME NULL COMMENT '微信提醒时间' AFTER `is_save_remind`;

-- 2015-11-18 企业群组免费用户不再限制使用期限,需要把现有的等级为0的企业群组的使用期限设置为2115年
UPDATE `wiz_biz` SET `DUE_DATE` = '2115-01-01 00:00:00' WHERE `BIZ_LEVEL` = 0;


-- 2015-12-07 群组邀请链接,添加用户名字段
ALTER TABLE `wiz_kb_user_invite` ADD `USERNAME` VARCHAR(16)  NULL  DEFAULT NULL  AFTER `DT_UPDATED`;

-- 2015-12-8 创建微信群组二维码code表
CREATE TABLE `wiz_weixin_group_qrcode` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `kb_guid` CHAR(38) NULL DEFAULT NULL,
    `owner_guid` CHAR(38) NULL DEFAULT NULL,
    `document_guid` CHAR(38) NULL DEFAULT NULL,
    `code` CHAR(6) NULL DEFAULT '',
    `active` TINYINT(1) NULL DEFAULT NULL,
    `created_at` DATETIME NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `uniq_code` (`code`),
    UNIQUE INDEX `uniq_kb_guid` (`kb_guid`),
    UNIQUE INDEX `uniq_document_guid` (`document_guid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2015-12-15 创建用户购买模板记录表，模板信息表
CREATE TABLE `wiz_user_template_record` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` INT(10) NULL DEFAULT NULL COMMENT '用户id',
    `template_id` INT(10) NULL DEFAULT NULL COMMENT '模板id',
    `name` VARCHAR(32) NULL DEFAULT NULL COMMENT '模板名称',
    `created_at` DATETIME NULL DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `user_id_template_id` (`user_id`, `template_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_template` (
    `id` INT(10) NOT NULL AUTO_INCREMENT COMMENT '模板id',
    `language_type` VARCHAR(16) NOT NULL COMMENT '语言类型',
    `name` VARCHAR(32) NULL DEFAULT NULL COMMENT '模板名称',
    `is_free` TINYINT(1) NULL DEFAULT NULL COMMENT '是否是免费',
    `version` VARCHAR(32) NULL DEFAULT NULL COMMENT '版本号',
    `title` VARCHAR(128) NULL DEFAULT NULL COMMENT '标题',
    `folder` VARCHAR(32) NULL DEFAULT NULL COMMENT '默认文件夹',
    `file_name` VARCHAR(32) NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `file_name` (`file_name`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2015-01-11 wiz_template 增加字段is_valid;
ALTER TABLE `wiz_template`
ADD COLUMN `is_valid` TINYINT NULL DEFAULT '1' AFTER `file_name`;


-- 2015-01-12 biz增加URL，IS_SHOW_SHARE_INFO；
ALTER TABLE `wiz_biz`
ADD COLUMN `URL` VARCHAR(64) NULL DEFAULT NULL AFTER `INVOICE_INFO`,
ADD COLUMN `IS_SHOW_SHARE_INFO` TINYINT(1) NULL DEFAULT '0' AFTER `URL`;

-- 2016-01-20 wiz_open_id  增加是否接收模板消息；
ALTER TABLE `wiz_open_id`
ADD COLUMN `is_receive_template` TINYINT NULL DEFAULT '1' COMMENT '是否接收模板消息' AFTER `weixin_remind_time`;

INSERT INTO `wiz_template` (`id`, `language_type`, `name`, `is_free`, `version`, `title`, `folder`, `file_name`, `is_valid`) VALUES
	(1, 'cn', '我的日记', 1, '1454473879766', '日记 {date}({week})', '/My Journals/{year}-{month}/', 'diary_cn', 1),
	(2, 'tw', '我的日記', 1, '1454473880471', '日記 {date}({week})', '/My Journals/{year}-{month}/', 'diary_tw', 1),
	(3, 'en', 'My Journal ', 1, '1454473881203', 'Journal {date}({week})', '/My Journals/{year}-{month}/', 'diary_en', 1),
	(4, 'cn', '工作日志', 0, '1453177602253', '工作日志 {date}({week})', '', 'workLog_cn', 1),
	(5, 'tw', '工作日誌', 0, '1453177603780', '工作日誌 {date}({week})', '', 'workLog_tw', 1),
	(6, 'en', 'Work Log', 0, '1453177603025', 'Work Log {date}({week})', '', 'workLog_en', 1),
	(7, 'cn', '会议记录', 0, '1453177593168', '会议记录 {date}({week})', '', 'meetingLog_cn', 1),
	(8, 'tw', '會議記錄', 0, '1453177594631', '會議記錄 {date}({week})', '', 'meetingLog_tw', 1),
	(9, 'en', 'Meeting Note', 0, '1453177593900', 'Meeting Note {date}({week})', '', 'meetingLog_en', 1),
	(10, 'js', 'WizTemplate', NULL, '1456969892119', NULL, NULL, 'WizTemplate', 1),
	(11, 'cn', '四象限笔记', 0, '1456727425537', '四象限笔记 {date}({week})', '', 'fourQuadrant_cn', 1),
	(12, 'en', 'Quadrant Note', 0, '1456727427083', 'Quadrant Note {date}({week})', '', 'fourQuadrant_en', 1),
	(13, 'tw', '四象限筆記', 0, '1456727426333', '四象限筆記 {date}({week})', '', 'fourQuadrant_tw', 1),
	(14, 'cn', '九宫格日记', 0, '1456727427907', '九宫格日记 {date}({week})', '/My Journals/{year}-{month}/', 'sudoku_cn', 1),
	(15, 'en', 'Morning Journal', 0, '1456727429334', 'Morning Journal {date}({week})', '/My Journals/{year}-{month}/', 'sudoku_en', 1),
	(16, 'tw', '九宮格日記', 0, '1456727428623', '九宮格日記 {date}({week})', '/My Journals/{year}-{month}/', 'sudoku_tw', 1),
	(17, 'cn', '客户拜访日志', 0, '1454060545171', '拜访日志 {date}({week})', '', 'visitLog_cn', 1),
	(18, 'en', 'Visiting Log', 0, '1454060546761', 'Visiting Log {date}({week})', '', 'visitLog_en', 1),
	(19, 'tw', '客戶拜訪日誌', 0, '1454060545961', '拜訪日誌 {date}({week})', '', 'visitLog_tw', 1),
	(20, 'cn', '工作周报', 0, '1454055120484', '工作周报 {date}({week})', '', 'weekReport_cn', 1),
	(21, 'en', 'Work Report', 0, '1454055122263', 'Work Report {date}({week})', '', 'weekReport_en', 1),
	(22, 'tw', '工作周報', 0, '1454055121500', '工作周報 {date}({week})', '', 'weekReport_tw', 1),
	(23, 'cn', '斜风细雨', 0, '1456472670331', '', '', 'rain_cn', 1),
	(24, 'tw', '斜風細雨', 0, '1456472671217', '', '', 'rain_tw', 1),
	(25, 'en', 'Rain', 0, '1456472672101', '', '', 'rain_en', 1),
	(26, 'cn', '飞雪夜归', 0, '1456969889052', '', '', 'snow_cn', 1),
	(27, 'tw', '飛雪夜歸', 0, '1456969889890', '', '', 'snow_tw', 1),
	(28, 'en', 'Snow', 0, '1456969890664', '', '', 'snow_en', 1);

INSERT INTO `wiz_medal` (`id`, `group_id`, `reward_point`, `sort_number`, `is_forever`) VALUES
    	(1, 1, 20, 1, 0),
    	(2, 1, 20, 2, 0),
    	(3, 1, 20, 3, 1),
    	(4, 2, 10, 1, 1),
    	(5, 2, 10, 2, 1),
    	(6, 2, 10, 3, 1),
    	(7, 2, 10, 4, 1),
    	(8, 2, 10, 5, 1),
    	(9, 2, 10, 6, 1),
    	(10, 2, 10, 7, 1),
    	(11, 2, 10, 8, 1),
    	(12, 2, 10, 9, 1),
    	(13, 3, 20, 1, 1),
    	(14, 3, 20, 2, 1),
    	(15, 3, 20, 3, 1),
    	(16, 3, 20, 4, 1),
    	(17, 3, 20, 5, 1),
    	(18, 3, 20, 6, 1),
    	(19, 3, 20, 7, 1),
    	(20, 3, 20, 8, 1),
    	(21, 3, 20, 9, 1),
    	(22, 3, 20, 10, 1),
    	(23, 3, 20, 11, 1),
    	(24, 3, 20, 12, 1),
    	(25, 3, 20, 13, 1),
    	(26, 3, 20, 14, 1),
    	(27, 4, 20, 1, 1),
    	(28, 4, 20, 2, 1),
    	(29, 5, 20, 1, 1),
    	(30, 5, 20, 2, 1),
    	(31, 9, 30, 1, 1),
    	(32, 10, 30, 1, 1),
    	(33, 10, 30, 2, 1),
    	(34, 10, 30, 3, 1),
    	(35, 10, 30, 4, 1),
    	(36, 10, 30, 5, 1),
    	(37, 11, 30, 1, 1),
    	(38, 11, 30, 2, 1),
    	(39, 11, 30, 3, 1),
    	(40, 11, 30, 4, 1),
    	(41, 11, 30, 5, 1);

 INSERT INTO `wiz_medal_group` (`id`, `sort_number`, `align`, `head_style`, `client_type`, `text_color`) VALUES
    	(1, 1, 'sequence', 'line-middle', 'all', '#9696c1'),
    	(2, 2, 'sequence', 'line-middle', 'all', '#cfb390'),
    	(3, 3, 'sequence', 'line-middle', 'all', '#9abfbb'),
    	(4, 4, 'sequence', 'text-middle', 'ios', '#9abfbb'),
    	(5, 5, 'sequence', 'text-middle', 'android', '#9abfbb'),
    	(6, 6, 'sequence', 'text-middle', 'mac', NULL),
    	(7, 7, 'sequence', 'text-middle', 'windows', NULL),
    	(8, 8, 'sequence', 'text-middle', 'web', NULL),
    	(9, 9, 'text-middle', 'line-middle', 'all', '#9eb2d3'),
    	(10, 10, 'five_rings', 'text-middle', 'all', '#9eb2d3'),
    	(11, 11, 'five_rings', 'text-middle', 'all', '#9eb2d3');

INSERT INTO `wiz_medal_group_information` (`id`, `language_type`, `group_id`, `title`) VALUES
    	(1, 'cn', 1, '身份和地位勋章'),
    	(2, 'en', 1, 'Identity and Status'),
    	(3, 'tw', 1, '身份和地位勳章'),
    	(4, 'cn', 2, '基础功能勋章'),
    	(5, 'en', 2, 'Basic Features Medal'),
    	(6, 'tw', 2, '基礎功能勳章'),
    	(7, 'cn', 3, '进阶功能勋章'),
    	(8, 'en', 3, 'Advanced Features Medal'),
    	(9, 'tw', 3, '進階功能勳章'),
    	(10, 'cn', 4, 'iOS独有勋章'),
    	(11, 'en', 4, 'Special Medal for iOS'),
    	(12, 'tw', 4, 'iOS獨有勳章'),
    	(13, 'cn', 5, 'Android独有勋章'),
    	(14, 'en', 5, 'Special Medal for Android '),
    	(15, 'tw', 5, 'Android獨有勳章'),
    	(16, 'cn', 6, 'Mac独有勋章'),
    	(17, 'en', 6, 'Special Medal for Mac'),
    	(18, 'tw', 6, 'Mac獨有勳章'),
    	(19, 'cn', 7, 'Windows独有勋章'),
    	(20, 'en', 7, 'Special Medal for Windows'),
    	(21, 'tw', 7, 'Windows獨有勳章'),
    	(22, 'cn', 8, '网页独有勋章'),
    	(23, 'en', 8, 'Special Medal for Web'),
    	(24, 'tw', 8, '網頁獨有勳章'),
    	(25, 'cn', 9, '同步勋章'),
    	(26, 'en', 9, 'Statistics Medal'),
    	(27, 'tw', 9, '同步勳章'),
    	(28, 'cn', 10, '笔记数勋章'),
    	(29, 'en', 10, 'Notes Number Medal'),
    	(30, 'tw', 10, '筆記數勳章'),
    	(31, 'cn', 11, '评论勋章'),
    	(32, 'en', 11, 'Comments Medal'),
    	(33, 'tw', 11, '評論勳章');

INSERT INTO `wiz_medal_information` (`id`, `language_type`, `medal_id`, `title`, `description`) VALUES
    	(1, 'cn', 1, '忠实朋友', '恭喜获得忠实朋友勋章，并奖励 {points} 积分。\n{reg_year}年，你成为为知笔记的一枚用户。\n有你一路陪伴，我们会更加努力！'),
    	(2, 'en', 1, 'Loyal Friend', 'Congratulations to get a loyal friend medal.\nYou can get {points} points.\n{reg_year}, you become a user of WizNote.\nVery happy to grow with us!\n'),
    	(3, 'tw', 1, '忠實朋友', '恭喜獲得忠實朋友勳章，並獲得{points}積分。\n{reg_year}年，你成為為知筆記的一枚用戶。\n有你一路陪伴，我們會更加努力！ '),
    	(4, 'cn', 2, '积分达人', '恭喜获得积分达人勋章，并奖励 {points} 积分。\n到目前为止，你已经获得 {user_points} 积分。\n你是一位非常活跃的为知朋友！'),
    	(5, 'en', 2, 'Points Master', 'Congratulations to get points master medal.\nYou can get {points} points.\nSo far, you\'ve got {user_points} points.\nYou are a very active friend of WizNote!'),
    	(6, 'tw', 2, '積分達人', '恭喜獲得積分達人勳章，並獲得{points}積分。\n到目前為止，你已經獲得{user_points} 積分。\n你是一位非常活躍的為知朋友！\n'),
    	(7, 'cn', 3, 'VIP', '成为 VIP 用户，可获得此勋章，并奖励 {points} 积分。还可以享受 VIP 专有服务！{sep}\n了解尊贵的 VIP 专有服务'),
    	(8, 'en', 3, 'VIP', 'Become the VIP user,get the medal, and get {points} points.You also can enjoy exclusive VIP service!{sep}\nKnow VIP proprietary service'),
    	(9, 'tw', 3, 'VIP', '成為VIP用戶，可獲得此勳章，並獎勵{points}積分。\n還可以享受VIP專有服務！\n{sep}\n了解尊貴的 VIP 專有服務'),
    	(10, 'cn', 4, 'Hello WizNote', '创建一篇笔记，可获得此勋章，并奖励 {points} 积分。'),
    	(11, 'en', 4, 'Hello WizNote', 'Create a note, get the medal,and get {points} points.'),
    	(12, 'tw', 4, 'Hello WizNote', '創建一篇筆記，獲得此勳章，並獲得{points}積分。\n'),
    	(13, 'cn', 5, '我本不同', '修改头像，可获得此勋章，并奖励 {points} 积分。'),
    	(14, 'en', 5, 'Modify Avatar', 'Modify avatar, get the medal, and get {points} points.\n'),
    	(15, 'tw', 5, '我本不同', '修改頭像，獲得此勳章，並獲得{points}積分。\n\n'),
    	(16, 'cn', 6, '猜猜Ta是谁', '修改个人昵称，可获得此勋章，并奖励{points}积分。'),
    	(17, 'en', 6, 'Modify Nickname', 'Modify personal nickname, get the medal, and get {points} points.\n'),
    	(18, 'tw', 6, '猜猜Ta是誰', '修改個人暱稱，獲得此勳章，並獲得{points}積分。\n\n'),
    	(19, 'cn', 7, '目录司令官', '创建一个文件夹，可获得此勋章，并奖励 {points} 积分。'),
    	(20, 'en', 7, 'Create Folder', 'Create a folder, get the medal, and get {points} points.\n'),
    	(21, 'tw', 7, '目錄司令官', '創建一個文件夾，獲得此勳章\n，並獲得{points}積分。\n'),
    	(22, 'cn', 8, '精致格式', '创建一篇 Markdown 笔记，可获得此勋章,\n并奖励 {points} 积分。{sep}\n三分钟创建格式美美的笔记'),
    	(23, 'en', 8, 'Markdown ', 'Create a Markdown note, get the medal, and get {points} points.{sep}\nMore information…'),
    	(24, 'tw', 8, '精緻格式', '創建一篇 Markdown 筆記，獲得此勳章，\n并獲得{points}積分。{sep}\n三分鐘創建格式美美的筆記'),
    	(25, 'cn', 9, '留住瞬间', '新建笔记，使用拍照功能（手机端完成），可获得此勋章，并奖励 {points} 积分。'),
    	(26, 'en', 9, 'Photos', 'Create notes, use the camera（just for phone）, get the medal, and get {points} points.'),
    	(27, 'tw', 9, '留住瞬間', '新建筆記，使用拍照功能(手機上完成)，獲得此勳章\n，並獲得{points}積分。\n '),
    	(28, 'cn', 10, '余音绕梁', '新建笔记，使用录音功能(手机端完成)，可获得此勋章，并奖励 {points} 积分。'),
    	(29, 'en', 10, 'Record', 'Create notes, use the record（just for phone）, get the medal, and get {points} points.'),
    	(30, 'tw', 10, '餘音繞樑', '新建筆記，使用錄音功能(手機上完成)，獲得此勳章\n，並獲得{points}積分。\n'),
    	(31, 'cn', 11, '我爱排序', '使用排序功能，按不同方式排序笔记列表，可获得此勋章，并奖励 {points} 积分。'),
    	(32, 'en', 11, 'Sort Feature', 'Using sort feature, sorted list of notes in different ways, to get the medal, and get {points} points.'),
    	(33, 'tw', 11, '我愛排序', '使用排序功能，按不同方式排序筆記列表，獲得此勳章\n，並獲得{points}積分。\n'),
    	(34, 'cn', 12, '整齐才是正经事', '自定义笔记列表页，设置是否显示摘要和缩略图，可获得此勋章，并奖励 {points} 积分。'),
    	(35, 'en', 12, 'Custom List', 'Custom notes list, get the medal, and get {points} points.'),
    	(36, 'tw', 12, '整齊才是正經事', '自定義筆記列表頁，設置是否顯示摘要和縮略圖，獲得此勳章\n，並獲得{points}積分。\n'),
    	(37, 'cn', 13, '微信快到碗里来', '利用微信公众帐号，保存微信内容到为知笔记，可获得此勋章，并奖励 {points} 积分。\n/gray /left 1，关注为知笔记微信公众帐号\n2，绑定为知笔记帐号到微信\n3，收藏微信内容  \n{sep}点击这里，了解更多'),
    	(38, 'en', 13, 'WeChat Favorites', 'Using WeChat official account, save the contents to WizNote, get the medal, and get {points} points. \n/gray /left 1, Follow WizNote official account\n2, Bind WizNote to WeChat account\n3, Favorites WeChat content \n{sep}More information…\n'),
    	(39, 'tw', 13, '微信快到碗裡來', '利用微信公眾帳號，保存微信內容到為知筆記，獲得此勳章，並獲得{points}積分。\n/gray /left 1，關注為知筆記微信公眾帳號\n2，綁定為知筆記帳號到微信\n3，收藏微信內容\n{sep}點擊這裡，了解更多 '),
    	(40, 'cn', 14, '微博站住不许动', '保存微博内容到为知笔记，可获得此勋章，并奖励 {points} 积分。\n/gray /left 1，绑定为知笔记帐号到微博\n2，评论或转发时@保存到为知笔记，微博已保存到为知笔记 \n{sep}点击这里，了解更多'),
    	(41, 'en', 14, 'Weibo Favorites', 'Save the Weibo contents to WizNote, get the medal, and get {points} points.\n/gray /left 1, Bind WizNote to Webo account\n2, @保存到为知笔记 when comment or forward, Weibo content will saved to WizNote. \n{sep}More information…\n'),
    	(42, 'tw', 14, '微博站住不許動', '保存微博內容到為知筆記，獲得此勳章，並獲得{points}積分。\n/gray /left 1,綁定為知筆記帳號到微博\n2,評論或轉發時@保存到為知筆記，微博已保存到為知筆記\n{sep}點擊這裡，了解更多  '),
    	(43, 'cn', 15, '邮件工厂', '发邮件到 mywiz 邮箱，保存邮件内容到为知笔记，可获得此勋章，并奖励 {points} 积分。在个人信息页可查看 mywiz 邮箱地址。\n{sep}点击这里，了解更多'),
    	(44, 'en', 15, 'Mywiz', 'Send mail to mywiz, get the medal, and get {points} points.Mywiz mail can be viewed in personal information page.\n{sep}More information'),
    	(45, 'tw', 15, '郵件工廠', '發郵件到 mywiz 郵箱，保存郵件內容到為知筆記，獲得此勳章，並獲得{points}積分。\n在個人信息頁可查看 mywiz 郵箱地址。\n{sep}點擊這裡，了解更多 '),
    	(46, 'cn', 16, '好网页不错过', '分享或剪藏网页到为知笔记，获得此勋章，并奖励 {points} 积分。手机和电脑浏览网页，都可以分享到为知笔记。{sep}\n点击这里，了解更多'),
    	(47, 'en', 16, 'Web Favorites', 'Share web to WizNote,get the medal, and get {points} points.\nMobile phones and computers can share a Web to WizNote.{sep}\nKnow more'),
    	(48, 'tw', 16, '好網頁不錯過', '分享或剪藏網頁到為知筆記，獲得此勳章，並獲得{points}積分。\n\n手機和電腦瀏覽網頁，都可以分享到為知筆記。{sep}\n點擊這裡，了解更多 '),
    	(49, 'cn', 17, '设备达人', '为知笔记移动端，桌面端，网页端都使用过，可获得此勋章，并奖励 {points} 积分。'),
    	(50, 'en', 17, 'Device Master', 'Mobile client, computers, and web client are  all used for the WizNote, you can get the medal, and get {points} points.'),
    	(51, 'tw', 17, '設備達人', '為知筆記移動端，桌面端，網頁端都使用過，獲得此勳章，並獲得{points}積分。\n'),
    	(52, 'cn', 18, '始发站', '修改新建笔记默认存储的文件夹，可获得此勋章，并奖励 {points} 积分。'),
    	(53, 'en', 18, 'Modify Default Folder', 'Modify the default storage folder for new notes, get the medal, and get {points} points.'),
    	(54, 'tw', 18, '始發站', '修改新建筆記默認存儲的文件夾，獲得此勳章\n，並獲得{points}積分。\n'),
    	(55, 'cn', 19, '群组勋章', '恭喜你获得群组勋章，你已经是一名群组用户啦！奖励 {points} 积分。'),
    	(56, 'en', 19, 'Group Medal', 'Congratulations, you are already a group users of WizNote. Get the medal, and get {points} points.'),
    	(57, 'tw', 19, '群組勳章', '恭喜你获得群组勋章，你已經是一名群組用戶啦！並獲得{points}積分。\n'),
    	(58, 'cn', 20, '小伙伴召集令', '创建团队或群组，获得此勋章，并奖励 {points} 积分。\n点击”创建团队和群组“，根据引导完成操作。'),
    	(59, 'en', 20, 'Create Team', 'Create a team or group, get the medal, and get {points} points.\nClick "create a team and the group", step by step to create teams and groups '),
    	(60, 'tw', 20, '小伙伴召集令', '創建團隊或群組，獲得此勳章，並獲得{points}積分。\n點擊”創建團隊和群組“，根據引導完成操作。'),
    	(61, 'cn', 21, '号外，号外', '群组里新建笔记，在标题开头或结尾@相关的群组成员，获得此勋章，并奖励 {points} 积分。'),
    	(62, 'en', 21, 'Refer to Members', 'Create notes in group, @member at the beginning or end of the title, get the medal, and get {points} points.'),
    	(63, 'tw', 21, '號外，號外', '群組里新建筆記，在標題開頭或結尾@相關的群組成員，獲得此勳章，並獲得{points}積分。\n'),
    	(64, 'cn', 22, '碰撞思想火花', '评论群组里他人的笔记，获得此勋章，并奖励 {points} 积分。\n'),
    	(65, 'en', 22, 'Comments ', 'Comment others\'notes, get this medal, and get {points} points.\n'),
    	(66, 'tw', 22, '碰撞思想火花', '評論群組裡他人的筆記，獲得此勳章\n，並獲得 {points} 積分。\n'),
    	(67, 'cn', 23, '保护小秘密', '打开设置（选项）— 找到安全— 设置密码保护，可获得此勋章，并奖励 {points} 积分。'),
    	(68, 'en', 23, 'Password Protect', 'Open the settings(options) - found security - password protection, get the medal, and get {points} points.'),
    	(69, 'tw', 23, '保護小秘密', '打開設置— 找到安全— 設置密碼保護，獲得此勳章，並獲得{points}積分。\n'),
    	(70, 'cn', 24, '一目了然', '修订编辑群组里他人的笔记，获得此勋章，并奖励 {points} 积分。\n编辑别人的笔记，点击顶端的修订编辑按钮，增加或删除内容，完成修订操作。'),
    	(71, 'en', 24, 'Track Changes', 'In group notes, using track changes to edit others note, get the medal, and get {points} points.\n'),
    	(72, 'tw', 24, '一目了然', '修訂編輯群組裡他人的筆記，獲得此勳章，並獲得{points}積分。\n編輯別人的筆記，點擊頂端的修訂編輯按鈕，增加或刪除內容，完成修訂操作。 '),
    	(73, 'cn', 25, '各就各位', '移动笔记到不同的文件夹下，获得此勋章，并奖励 {points} 积分。'),
    	(74, 'en', 25, 'Modify Notes Folder', 'Move notes to a different folder, get this medal, and get {points} points.'),
    	(75, 'tw', 25, '各就各位', '移動筆記到不同的文件夾下，獲得此勳章，並獲得{points}積分。\n\n'),
    	(76, 'cn', 26, '省流量大师', '使用离线缓存笔记功能，可获得此勋章，并奖励 {points} 积分。利用离线阅读功能，在没有网络的时可查看笔记。'),
    	(77, 'en', 26, 'Offline Notes', 'Using offline notes function, get this medal, and get {points} points.\nThere is no network you can view the notes with offline notes.'),
    	(78, 'tw', 26, '省流量大師', '使用離線緩存筆記功能，可獲得此勳章\n，並獲得{points}積分。利用离线阅读功能，沒網時也可查看筆記。 '),
    	(79, 'cn', 27, '复制，起飞', '使用通知中心的“快速保存剪贴板内容”小部件，获得此勋章，并奖励 {points} 积分。\n/gray /left 1，复制文字，下拉通知中心\n2，选择”今天“模块，找到为知笔记\n3，点击已复制文字左侧的 + ，即可保存剪贴板的内容到为知笔记。\n{sep}点击这里，了解更多'),
    	(80, 'en', 27, 'Quick Paste', 'Using the widget in notification center to save the clipboard contents quickly, get this medal, and get {points} points.\n{sep}Know more'),
    	(81, 'tw', 27, '複製，起飛', '使用通知中心的快速保存剪貼板內容小部件，獲得此勳章，並獲得{points}積分。 \n/gray /left 1，復製文字，下拉通知中心\n2，選擇”今天“模塊，找到為知筆記,\n3，點擊已復製文字左側的+ ，即可保存剪貼板的內容到為知筆記。\n{sep}點擊這裡，了解更多'),
    	(82, 'cn', 28, '组件秘籍', '使用通知中心“快速新建笔记“小部件，获得此勋章，并奖励 {points} 积分。\n/gray /left 1，下拉通知中心，选择”今天“模块，找到为知笔记\n2，新建文字，清单，拍照，录音等任意一个类型笔记 \n{sep}点击这里，了解更多'),
    	(83, 'en', 28, 'Quick Create', 'Using the widget in notification center to create notes quickly, get this medal, and get {points} points.\n{sep}Know more'),
    	(84, 'tw', 28, '組件秘籍', '使用通知中心快速新建筆記小插件，獲得此勳章，並獲得{points}積分。\n/gray /left 1，下拉通知中心，選擇”今天“模塊，找到為知筆記,\n2，新建文字，清單，拍照，錄音等任意一個類型筆記\n{sep}點擊這裡，了解更多'),
    	(85, 'cn', 29, '复制，起飞', '使用通知中心的”快速保存剪贴板内容“小部件，获得此勋章，并奖励{points}积分。 \n/gray /left 1，复制文字，下拉通知中心，找到为知笔记\n2，点击已复制文字左侧的 + ，即可保存剪贴板的内容到为知笔记。\n{sep}点击这里，了解更多'),
    	(86, 'en', 29, 'Quick Paste', 'Using the widget in notification center to save the clipboard contents quickly, get this medal, and get {points} points.\n{sep}Know more'),
    	(87, 'tw', 29, '複製，起飛', '使用通知中心的快速保存剪貼板內容小部件，獲得此勳章，並獲得{points}積分。 \n/gray /left 1，方復製文字，下拉通知中心，找到為知筆記\n2，點擊已復製文字左側的 + ，即可保存剪貼板的內容到為知筆記。 \n{sep}點擊這裡，了解更多'),
    	(88, 'cn', 30, '组件秘籍', '使用通知中心快速新建笔记小插件，获得此勋章，并奖励{points}积分。\n下拉通知中心，找到为知笔记，快速新建笔记。\n{sep}点击这里，了解更多'),
    	(89, 'en', 30, 'Quick Create', 'Using the widget in notification center to create notes quickly, get this medal, and get {points} points.\n{sep}Know more'),
    	(90, 'tw', 30, '組件秘籍', '使用通知中心快速新建筆記小插件，獲得此勳章，並獲得{points}積分。\n下拉通知中心，找到為知筆記，快速新建笔记。\n{sep}點擊這裡，了解更多'),
    	(91, 'cn', 31, '生命里的为知', '从现在开始，每天同步为知笔记，连续坚持 21 天，获得“生命里的为知”勋章，并奖励{points}积分。\n已经连续同步{sync_day}天啦，加油！'),
    	(92, 'en', 31, 'Sync 21 days', 'From now on, sync everyday , insist 21 days, get the medal, and get {points} points.\nGreat, consecutive sync {sync_day} days.'),
    	(93, 'tw', 31, '生命裡的為知', '從現在開始，每天同步為知筆記，連續堅持21 天，獲得“生命裡的為知”勳章，並獲得{points}積分。\n已經連續同步{sync_day}天啦,加油！'),
    	(94, 'cn', 32, '牛刀小试', '已创建笔记的数量超过 60 篇，\n获得牛刀小试勋章，并奖励 {points} 积分。\n'),
    	(95, 'en', 32, '60 Notes', 'You have created more than 60 notes, get the medal, and get {points} points.'),
    	(96, 'tw', 32, '牛刀小試', '已創建筆記的數量超過 60 篇\n，\n獲得牛刀小試勳章\n，並獲得{points}積分。'),
    	(97, 'cn', 33, '略有积累', '已创建笔记的数量超过 300 篇，\n获得略有积累勋章，并奖励 {points} 积分。'),
    	(98, 'en', 33, '300 Notes ', 'Create more than 300 notes, get the medal, and get {points} points.'),
    	(99, 'tw', 33, '略有積累', '已創建筆記的數量超過 300 篇，\n獲得略有積累勳章\n，並獲得{points}積分。'),
    	(100, 'cn', 34, '小露锋芒', '已创建笔记的数量超过 600 篇，获得小露锋芒勋章，并奖励 {points} 积分。'),
    	(101, 'en', 34, '600 Notes', 'Create more than 600 notes, get the medal, and get {points} points.'),
    	(102, 'tw', 34, '小露鋒芒', '已創建筆記的數量超過 600 篇\n，\n獲得小露鋒芒勳章\n，並獲得{points}積分。'),
    	(103, 'cn', 35, '再接再厉', '已创建笔记的数量超过 1000 篇，获得再接再励勋章，并奖励 {points} 积分。'),
    	(104, 'en', 35, '1000 Notes', 'Create more than 1000 notes, get the medal, and get {points} points.'),
    	(105, 'tw', 35, '再接再厲', '已創建筆記的數量超過 1000 篇\n，\n獲得再接再勵勳章\n，並獲得{points}積分。'),
    	(106, 'cn', 36, '勇攀高峰', '已创建笔记的数量超过 3000 篇，获得勇攀高峰勋章，并奖励 {points} 积分。'),
    	(107, 'en', 36, '3000 Notes ', 'Create more than 3000 notes, get the medal, and get {points} points.'),
    	(108, 'tw', 36, '勇攀高峰', '已創建筆記的數量超過 3000 篇，\n獲得勇攀高峰勳章\n，並獲得{points}積分。'),
    	(109, 'cn', 37, '七步成诗', '评论是一种交流，累计评论企业群组中他人的笔记达 10 次，获得此勋章，并奖励 {points} 积分。'),
    	(110, 'en', 37, '7 Comments', 'Comment others\' notes more than 10 times, get the medal, and get {points} points.'),
    	(111, 'tw', 37, '七步成詩', '評論是一種交流。累計評論企業群組中他人的筆記達 10 次\n，\n獲得此勳章，並獲得{points}積分。'),
    	(112, 'cn', 38, '谈笑风生', '累计评论群组中他人的笔记达 30 次，获得此勋章，并奖励{points}积分。'),
    	(113, 'en', 38, '30 Comments', 'Comment others\' notes more than 30 times, get the medal, and get {points} points.'),
    	(114, 'tw', 38, '談笑風生', '累計評論群組中他人的筆記達 30 次\n，\n獲得此勳章，並獲得{points}積分。'),
    	(115, 'cn', 39, '悦评论', '评论是一种交流，评论可以很快乐。累计评论群组中他人的笔记达 60 次，获得此勋章，并奖励{points}积分。'),
    	(116, 'en', 39, '60 Comments', 'Comment others\' notes more than 60 times, get the medal, and get {points} points.'),
    	(117, 'tw', 39, '悅評論', '評論是一種交流，評論可以很快樂。累計評論群組中他人的筆記達 60次\n獲得此勳章，並獲得{points}積分。'),
    	(118, 'cn', 40, '语惊四座', '评论可以很精彩。累计评论群组中他人的笔记达 100 次，获得此勋章，并奖励 {points} 积分。'),
    	(119, 'en', 40, '80 Comments', 'Comment others\' notes more than 100 times, get the medal, and get {points} points.'),
    	(120, 'tw', 40, '語驚四座', '評論可以很精彩。累計評論群組中他人的筆記達 100 次\n，\n獲得此勳章，並獲得{points}積分。'),
    	(121, 'cn', 41, '评论达人', '评论是一种很方便的沟通方式。累计评论群组中他人的笔记达 200 次，获得此勋章，并奖励 {points} 积分。'),
    	(122, 'en', 41, '100 Comments', 'Comment others\' notes more than 100 times, get the medal, and get {points} points.'),
    	(123, 'tw', 41, '評論達人', '評論是一種很方便的溝通方式。累計評論群組中他人的筆記達 200 次，\n獲得此勳章，並獲得{points}積分。'); 	    	


use wizksent;

ALTER TABLE `wiz_attachment`
  DROP INDEX `uniq_att`,
  ADD UNIQUE INDEX `uniq_att_kb` (`ATTACHMENT_GUID`, `KB_GUID`);

ALTER TABLE `wiz_category`
  DROP INDEX `uniq_category`,
  ADD UNIQUE INDEX `uniq_cat_kb` (`CATEGORY_GUID`, `KB_GUID`);

ALTER TABLE `wiz_count`
  DROP INDEX `obj_guid`,
  ADD UNIQUE INDEX `uniq_obj_kb` (`obj_guid`, `kb_guid`);

ALTER TABLE `wiz_deleted`
  DROP INDEX `uniq_deleted`,
  ADD UNIQUE INDEX `uniq_del_kb` (`DELETED_GUID`, `KB_GUID`);

ALTER TABLE `wiz_document`
  DROP INDEX `uniq_doc`,
  ADD UNIQUE INDEX `uniq_doc_kb` (`DOCUMENT_GUID`, `KB_GUID`);

ALTER TABLE `wiz_document_param`
  DROP INDEX `uniq_doc_param`,
  ADD INDEX `idx_doc` (`DOCUMENT_GUID`);

ALTER TABLE `wiz_favor`
  DROP INDEX `uniq_doc_user`,
  ADD UNIQUE INDEX `uniq_doc_user` (`document_guid`, `user_guid`);

ALTER TABLE `wiz_style`
  DROP INDEX `uniq_style`,
  ADD UNIQUE INDEX `uniq_style_kb` (`STYLE_GUID`, `KB_GUID`);

ALTER TABLE `wiz_tag`
  DROP INDEX `uniq_tag`,
  ADD UNIQUE INDEX `uniq_tag_kb` (`TAG_GUID`, `KB_GUID`);

-- 2016/01/05 点赞表添加索引
ALTER TABLE `wiz_favor` ADD INDEX `idx_kb_document` (`kb_guid`, `document_guid`);

-- 2016/02/24 评论表添加索引,统计分析用
ALTER TABLE `wiz_comment` ADD INDEX `idx_dt_created` (`dt_created`);

CREATE TABLE `tmp_wiz_document` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `kb_guid` varchar(38) NOT NULL DEFAULT '',
  `document_guid` varchar(38) NOT NULL DEFAULT '',
  `owner_guid` varchar(38) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

use wiz_message;
ALTER TABLE `device` ADD COLUMN `id` INT  AUTO_INCREMENT FIRST, DROP PRIMARY KEY, ADD PRIMARY KEY (`id`);

ALTER TABLE `wiz_message`
  ADD COLUMN `webhook_push_status` TINYINT(4) NOT NULL DEFAULT '0' AFTER `push_status`,
  ADD INDEX `idx_webhook_push_status` (`webhook_push_status`);

ALTER TABLE `wiz_message_backup`
  ADD COLUMN `webhook_push_status` TINYINT(4) NOT NULL DEFAULT '0' AFTER `push_status`,
  ADD INDEX `idx_webhook_push_status` (`webhook_push_status`);

ALTER TABLE `device`
	ADD UNIQUE INDEX `uniq_device_token` (`device_token`);

ALTER TABLE `wiz_message` CHANGE `document_guid` `document_guid` VARCHAR(36)  CHARACTER SET latin1  NULL  DEFAULT '';
