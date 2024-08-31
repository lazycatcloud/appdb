
use wizkv;
-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv`
--

CREATE TABLE IF NOT EXISTS `wiz_kv` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_0a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_0a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_0b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_0b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_0c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_0c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_0d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_0d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_0e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_0e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_0f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_0f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_00`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_00` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_01`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_01` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_02`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_02` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_03`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_03` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_04`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_04` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_05`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_05` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_06`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_06` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_07`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_07` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_08`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_08` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_09`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_09` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_1a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_1a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_1b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_1b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_1c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_1c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_1d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_1d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_1e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_1e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_1f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_1f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_2a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_2a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_2b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_2b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_2c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_2c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_2d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_2d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_2e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_2e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_2f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_2f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_3a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_3a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_3b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_3b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_3c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_3c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_3d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_3d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_3e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_3e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_3f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_3f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_4a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_4a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_4b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_4b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_4c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_4c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_4d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_4d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_4e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_4e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_4f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_4f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_5a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_5a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_5b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_5b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_5c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_5c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_5d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_5d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_5e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_5e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_5f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_5f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_6a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_6a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_6b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_6b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_6c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_6c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_6d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_6d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_6e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_6e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_6f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_6f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_7a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_7a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_7b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_7b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_7c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_7c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_7d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_7d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_7e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_7e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_7f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_7f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_8a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_8a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_8b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_8b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_8c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_8c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_8d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_8d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_8e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_8e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_8f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_8f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_9a`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_9a` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_9b`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_9b` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_9c`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_9c` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_9d`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_9d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_9e`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_9e` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_9f`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_9f` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_10`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_10` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_11`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_11` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_12`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_12` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_13`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_13` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_14`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_14` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_15`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_15` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_16`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_16` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_17`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_17` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_18`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_18` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_19`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_19` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_20`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_20` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_21`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_21` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_22`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_22` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_23`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_23` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_24`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_24` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_25`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_25` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_26`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_26` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_27`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_27` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_28`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_28` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_29`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_29` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_30`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_30` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_31`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_31` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_32`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_32` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_33`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_33` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_34`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_34` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_35`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_35` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_36`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_36` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_37`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_37` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_38`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_38` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_39`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_39` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_40`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_40` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_41`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_41` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_42`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_42` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_43`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_43` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_44`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_44` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_45`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_45` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_46`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_46` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_47`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_47` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_48`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_48` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_49`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_49` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_50`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_50` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_51`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_51` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_52`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_52` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_53`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_53` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_54`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_54` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_55`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_55` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_56`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_56` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_57`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_57` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_58`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_58` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_59`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_59` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_60`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_60` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_61`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_61` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_62`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_62` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_63`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_63` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_64`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_64` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_65`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_65` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_66`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_66` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_67`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_67` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_68`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_68` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_69`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_69` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_70`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_70` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_71`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_71` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_72`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_72` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_73`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_73` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_74`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_74` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_75`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_75` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_76`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_76` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_77`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_77` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_78`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_78` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_79`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_79` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_80`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_80` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_81`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_81` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_82`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_82` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_83`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_83` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_84`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_84` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_85`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_85` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_86`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_86` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_87`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_87` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_88`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_88` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_89`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_89` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_90`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_90` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_91`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_91` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_92`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_92` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_93`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_93` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_94`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_94` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_95`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_95` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_96`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_96` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_97`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_97` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_98`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_98` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_99`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_99` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a0`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a1`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a2`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a3`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a4`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a5`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a6`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a7`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a8`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_a9`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_a9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_aa`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_aa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ab`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ab` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ac`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ac` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ad`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ad` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ae`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ae` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_af`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_af` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b0`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b1`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b2`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b3`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b4`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b5`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b6`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b7`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b8`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_b9`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_b9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ba`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ba` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_bb`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_bb` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_bc`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_bc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_bd`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_bd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_be`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_be` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_bf`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_bf` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c0`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c1`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c2`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c3`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c4`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c5`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c6`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c7`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c8`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_c9`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_c9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ca`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ca` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_cb`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_cb` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_cc`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_cc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_cd`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_cd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ce`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ce` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_cf`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_cf` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d0`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d1`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d2`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d3`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d4`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d5`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d6`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d7`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d8`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_d9`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_d9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_da`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_da` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_db`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_db` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_dc`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_dc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_dd`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_dd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_de`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_de` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_df`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_df` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e0`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e1`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e2`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e3`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e4`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e5`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e6`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e7`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e8`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_e9`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_e9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ea`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ea` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_eb`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_eb` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ec`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ec` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ed`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ed` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ee`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ee` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ef`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ef` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f0`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f1`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f2`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f3`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f4`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f5`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f6`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f7`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f8`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_f9`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_f9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_fa`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_fa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_fb`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_fb` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_fc`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_fc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_fd`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_fd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_fe`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_fe` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wiz_kv_ff`
--

CREATE TABLE IF NOT EXISTS `wiz_kv_ff` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `ts` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `KEY_INDEX` (`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
