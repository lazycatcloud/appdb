use wizksent;

# Dump of table wiz_attachment
# ------------------------------------------------------------

CREATE TABLE `wiz_attachment` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ATTACHMENT_GUID` binary(16) NOT NULL COMMENT '附件 GUID',
  `DOCUMENT_GUID` binary(16) NOT NULL COMMENT '附件所属的笔记 GUID',
  `KB_GUID` binary(16) NOT NULL COMMENT '附件所属的 KB GUID',
  `VERSION` bigint(20) NOT NULL DEFAULT '-1' COMMENT '版本号',
  `ATTACHMENT_DATA_SIZE` int(11) NOT NULL COMMENT '附件数据大小',
  `ATTACHMENT_INFO_MD5` binary(16) DEFAULT NULL COMMENT '附件信息指纹信息',
  `DT_INFO_MODIFIED` datetime DEFAULT NULL COMMENT '附件信息修改时间',
  `ATTACHMENT_DATA_MD5` binary(16) DEFAULT NULL COMMENT '附件数据的指纹信息',
  `DT_DATA_MODIFIED` datetime DEFAULT NULL COMMENT '附件数据修改时间',
  `ATTACHMENT_NAME` varchar(50) DEFAULT NULL COMMENT '附件名',
  `DT_CREATED` datetime DEFAULT NULL COMMENT '创建日期',
  `ATTACHMENT_URL` varchar(512) DEFAULT NULL COMMENT '附件 URL, 只保存以 http 开头的值',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniq_att` (`ATTACHMENT_GUID`),
  KEY `kb_version` (`KB_GUID`,`VERSION`),
  KEY `document_guid` (`DOCUMENT_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_category
# ------------------------------------------------------------

CREATE TABLE `wiz_category` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `CATEGORY_GUID` binary(16) NOT NULL,
  `KB_GUID` binary(16) NOT NULL,
  `OPERATOR_GUID` binary(16) DEFAULT NULL,
  `VERSION` bigint(20) NOT NULL DEFAULT '-1',
  `DT_CREATED` datetime DEFAULT NULL,
  `DT_MODIFIED` datetime DEFAULT NULL,
  `CATEGORY_NAME` varchar(768) NOT NULL,
  `PARENT_CATEGORY_NAME` varchar(768) DEFAULT NULL,
  `CHILD_COUNT` int(11) DEFAULT '0',
  `CATEGORY_LEVEL` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniq_category` (`CATEGORY_GUID`),
  KEY `kb_guid` (`KB_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_comment
# ------------------------------------------------------------

CREATE TABLE `wiz_comment` (
  `comment_sn` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `parent_sn` bigint(20) DEFAULT NULL COMMENT '父评论ID',
  `kb_guid` binary(16) NOT NULL COMMENT '知识库GUID',
  `document_guid` binary(16) NOT NULL COMMENT '笔记GUID',
  `user_guid` binary(16) NOT NULL COMMENT '用户GUID',
  `user_name` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `comment_body` varchar(2048) NOT NULL DEFAULT '' COMMENT '评论内容',
  `dt_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `comment_note` varchar(128) DEFAULT NULL COMMENT '评论备注',
  PRIMARY KEY (`comment_sn`),
  KEY `document_guid` (`document_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_count
# ------------------------------------------------------------

CREATE TABLE `wiz_count` (
  `count_sn` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kb_guid` binary(16) NOT NULL,
  `obj_guid` binary(16) NOT NULL,
  `obj_note` varchar(50) DEFAULT NULL COMMENT '对象类型备注',
  `count1` bigint(20) DEFAULT '0' COMMENT 'obj是document时，代表评论计数',
  `count2` bigint(20) DEFAULT '0' COMMENT 'obj是document时，代表“赞“计数',
  `count3` bigint(20) DEFAULT '0',
  `count4` bigint(20) DEFAULT '0',
  `count5` bigint(20) DEFAULT '0',
  `count6` bigint(20) DEFAULT '0',
  `count7` bigint(20) DEFAULT '0',
  `count8` bigint(20) DEFAULT '0',
  `count9` bigint(20) DEFAULT '0',
  `count10` bigint(20) DEFAULT '0',
  PRIMARY KEY (`count_sn`),
  UNIQUE KEY `obj_guid` (`obj_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_deleted
# ------------------------------------------------------------

CREATE TABLE `wiz_deleted` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DELETED_GUID` binary(16) NOT NULL,
  `KB_GUID` binary(16) NOT NULL,
  `VERSION` bigint(20) NOT NULL DEFAULT '-1',
  `OPERATOR_GUID` binary(16) DEFAULT NULL,
  `DT_CREATED` datetime NOT NULL,
  `DT_MODIFIED` datetime DEFAULT NULL,
  `DELETED_TYPE` varchar(20) NOT NULL DEFAULT '',
  `DELETED_CONTENT` varchar(4096) DEFAULT NULL,
  `DELETED_EXT` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniq_deleted` (`DELETED_GUID`),
  KEY `kb_version` (`KB_GUID`,`VERSION`),
  KEY `dt_created` (`DT_CREATED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_document
# ------------------------------------------------------------
INSTALL SONAME 'ha_mroonga';
CREATE TABLE `wiz_document` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DOCUMENT_GUID` binary(16) NOT NULL COMMENT '笔记GUID',
  `KB_GUID` binary(16) NOT NULL COMMENT '知识库GUID',
  `VERSION` bigint(20) NOT NULL DEFAULT '-1' COMMENT '版本号',
  `DOCUMENT_DATA_MD5` binary(16) DEFAULT NULL COMMENT '笔记数据md5',
  `DT_DATA_MODIFIED` datetime DEFAULT NULL COMMENT '笔记数据修改时间',
  `DOCUMENT_INFO_MD5` binary(16) DEFAULT NULL COMMENT '笔记基本信息md5',
  `DT_INFO_MODIFIED` datetime DEFAULT NULL COMMENT '笔记基本信息修改时间',
  `DOCUMENT_DATA_SIZE` int(11) NOT NULL COMMENT '笔记数据大小',
  `DOCUMENT_TITLE` varchar(255) DEFAULT NULL COMMENT '笔记标题',
  `BODY_TEXT` LONGTEXT DEFAULT NULL COMMENT '笔记内容',
  `DOCUMENT_CATEGORY` varchar(260) DEFAULT NULL COMMENT '笔记目录',
  `DOCUMENT_OWNER` varchar(150) DEFAULT NULL COMMENT '笔记所有者，用作标识普通editor能否删除和修改',
  `DOCUMENT_ICON_INDEX` int(11) DEFAULT NULL COMMENT '笔记ICON索引',
  `DOCUMENT_PROTECT` tinyint(4) DEFAULT NULL COMMENT '笔记是否加密',
  `DOCUMENT_READ_COUNT` int(11) DEFAULT NULL COMMENT '笔记阅读次数',
  `DOCUMENT_ATTACHMENT_COUNT` int(11) DEFAULT NULL COMMENT '笔记附件数',
  `DOCUMENT_TYPE` varchar(16) DEFAULT NULL COMMENT '笔记类型',
  `DOCUMENT_FILE_TYPE` varchar(16) DEFAULT NULL COMMENT '笔记的文件类型',
  `DT_CREATED` datetime NOT NULL COMMENT '创建日期',
  `DT_ACCESSED` datetime DEFAULT NULL COMMENT '笔记最后访问日期',
  `GPS_LATITUDE` float(10,6) DEFAULT NULL COMMENT '纬度',
  `GPS_LONGITUDE` float(10,6) DEFAULT NULL COMMENT '经度',
  `DOCUMENT_URL` varchar(2048) DEFAULT NULL COMMENT '笔记 URL',
  `STYLE_GUID` binary(16) DEFAULT NULL COMMENT '样式GUID',
  `DOCUMENT_PARAM_MD5` binary(16) DEFAULT NULL COMMENT '笔记参数md5',
  `DT_PARAM_MODIFIED` datetime DEFAULT NULL COMMENT '笔记参数修改时间',
  `DOCUMENT_SEO` varchar(100) DEFAULT NULL COMMENT '博客发布插件使用',
  `DOCUMENT_AUTHOR` varchar(32) DEFAULT NULL COMMENT '助手插件设置的 author',
  `DOCUMENT_KEYWORDS` varchar(64) DEFAULT NULL COMMENT '助手插件设置的 keywords',
  PRIMARY KEY (`ID`),
  FULLTEXT INDEX `idx_text`(`DOCUMENT_TITLE`,`BODY_TEXT`),
  UNIQUE KEY `uniq_doc` (`DOCUMENT_GUID`),
  KEY `kb_version` (`KB_GUID`,`VERSION`)
) ENGINE=Mroonga COMMENT = 'engine "InnoDB"' DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=Dynamic;



# Dump of table wiz_document_param
# ------------------------------------------------------------

CREATE TABLE `wiz_document_param` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `KB_GUID` binary(16) NOT NULL,
  `DOCUMENT_GUID` binary(16) NOT NULL,
  `PARAM_NAME` varchar(100) NOT NULL,
  `PARAM_VALUE` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniq_doc_param` (`DOCUMENT_GUID`,`PARAM_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_document_tag
# ------------------------------------------------------------

CREATE TABLE `wiz_document_tag` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `KB_GUID` binary(16) NOT NULL,
  `DOCUMENT_GUID` binary(16) NOT NULL COMMENT '笔记GUID',
  `TAG_GUID` binary(16) NOT NULL COMMENT '标签GUID',
  PRIMARY KEY (`ID`),
  KEY `document_guid` (`DOCUMENT_GUID`),
  KEY `tag_guid` (`TAG_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_favor
# ------------------------------------------------------------

CREATE TABLE `wiz_favor` (
  `favor_sn` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kb_guid` binary(16) NOT NULL,
  `document_guid` binary(16) NOT NULL,
  `user_guid` binary(16) NOT NULL,
  `dt_created` datetime NOT NULL,
  PRIMARY KEY (`favor_sn`),
  KEY `uniq_doc_user` (`document_guid`,`user_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_kb_stat
# ------------------------------------------------------------

CREATE TABLE `wiz_kb_stat` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `KB_GUID` binary(16) NOT NULL,
  `DOCUMENT_VERSION` int(10) unsigned NOT NULL DEFAULT '0',
  `ATTACHMENT_VERSION` int(10) unsigned NOT NULL DEFAULT '0',
  `TAG_VERSION` int(10) unsigned NOT NULL DEFAULT '0',
  `DELETED_VERSION` int(10) unsigned NOT NULL DEFAULT '0',
  `STYLE_VERSION` int(10) unsigned NOT NULL DEFAULT '0',
  `NOTES_COUNT` int(10) unsigned NOT NULL DEFAULT '0',
  `STORAGE_USAGE_DOCUMENT` bigint(20) unsigned NOT NULL DEFAULT '0',
  `STORAGE_USAGE_ATTACHMENT` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TRAFFIC_USAGE` bigint(20) unsigned NOT NULL DEFAULT '0',
  `INDEX_STATUS` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'kb 是否全量索引过',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_kb` (`KB_GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_multi_version
# ------------------------------------------------------------

CREATE TABLE `wiz_multi_version` (
  `MULTI_VERSION_SN` bigint(20) NOT NULL AUTO_INCREMENT,
  `KB_GUID` binary(16) NOT NULL,
  `OBJ_GUID` binary(16) NOT NULL COMMENT 'document_guid或attachment_guid',
  `MULTI_VERSION_TYPE` tinyint(4) DEFAULT NULL COMMENT '版本的类型,1:数据,2:信息',
  `EDITOR_ID` varchar(128) DEFAULT NULL,
  `VERSION` bigint(20) NOT NULL,
  `MULTI_VERSION_NOTE` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`MULTI_VERSION_SN`),
  KEY `idx_obj_version` (`OBJ_GUID`,`VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_style
# ------------------------------------------------------------

CREATE TABLE `wiz_style` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `STYLE_GUID` binary(16) NOT NULL,
  `KB_GUID` binary(16) NOT NULL,
  `OPERATOR_GUID` binary(16) DEFAULT NULL,
  `VERSION` bigint(20) NOT NULL DEFAULT '-1',
  `DT_CREATED` datetime DEFAULT NULL,
  `DT_MODIFIED` datetime DEFAULT NULL,
  `STYLE_NAME` varchar(32) DEFAULT NULL,
  `STYLE_TEXT_COLOR` char(6) DEFAULT NULL,
  `STYLE_BACK_COLOR` char(6) DEFAULT NULL,
  `STYLE_TEXT_BOLD` int(11) DEFAULT NULL,
  `STYLE_FLAG_INDEX` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniq_style` (`STYLE_GUID`),
  KEY `idx_kb_version` (`KB_GUID`,`VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table wiz_tag
# ------------------------------------------------------------

CREATE TABLE `wiz_tag` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `TAG_GUID` binary(16) NOT NULL COMMENT '标签GUID',
  `KB_GUID` binary(16) NOT NULL COMMENT '标签所属的知识库GUID',
  `VERSION` bigint(20) NOT NULL DEFAULT '-1' COMMENT '版本号',
  `TAG_NAME` varchar(50) DEFAULT NULL COMMENT '标签名',
  `OPERATOR_GUID` binary(16) DEFAULT NULL COMMENT '操作员GUID',
  `DT_CREATED` datetime DEFAULT NULL COMMENT '创建时间',
  `DT_MODIFIED` datetime DEFAULT NULL COMMENT '修改时间',
  `TAG_GROUP_GUID` binary(16) DEFAULT NULL COMMENT '父标签GUID',
  `IS_GROUP` tinyint(4) NOT NULL COMMENT '是否包含子标签',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniq_tag` (`TAG_GUID`),
  KEY `kb_version` (`KB_GUID`,`VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
