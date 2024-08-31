use `wizasent`;

CREATE TABLE `wiz_user_template_plus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_guid` char(38) NOT NULL COMMENT '模板使用用户的guid',
  `template_guid` char(38) NOT NULL COMMENT '模板guid',
  `doc_guid` char(38) DEFAULT NULL COMMENT '笔记guid',
  `kb_guid` char(38) NOT NULL COMMENT '群组guid',
  `is_star` tinyint(1) DEFAULT NULL COMMENT '是否标星',
  `last_used` datetime DEFAULT NULL COMMENT '最后一次使用时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_guid_template_guid` (`user_guid`,`template_guid`),
  KEY `IDX_KB_GUID` (`kb_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `wiz_template_plus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `template_guid` char(38) NOT NULL COMMENT '模板guid',
  `creator_guid` char(38) NOT NULL COMMENT '模板创建者guid',
  `kb_guid` char(38) DEFAULT NULL COMMENT '群组guid',
  `biz_guid` char(38) DEFAULT NULL COMMENT '团队guid',
  `is_team` tinyint(1) DEFAULT NULL COMMENT '是否团队模板',
  `is_publish` tinyint(1) DEFAULT NULL COMMENT '是否发布',
  `description` varchar(64) DEFAULT NULL COMMENT '模板描述',
  `title` varchar(64) DEFAULT NULL COMMENT '模板标题',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `template_guid` (`template_guid`),
  KEY `IDX_KB_GUID` (`kb_guid`),
  KEY `IDX_CREATOR_GUID` (`creator_guid`),
  KEY `IDX_BIZ_GUID` (`biz_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;