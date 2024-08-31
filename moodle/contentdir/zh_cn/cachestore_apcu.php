<?php
// This file is part of Moodle - https://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <https://www.gnu.org/licenses/>.

/**
 * Strings for component 'cachestore_apcu', language 'zh_cn', version '4.3'.
 *
 * @package     cachestore_apcu
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['clusternotice'] = '请注意，APCu仅适⽤于单节点站点或可本地存储的缓存。想了解更多信息，请参阅<a href="{$a}">APC⽤户缓存⽂档</a>。';
$string['notice'] = '通知';
$string['pluginname'] = 'APC用户缓存（APCu）';
$string['prefix'] = '前缀';
$string['prefix_help'] = '上述前缀用于所有存储在此APC存储实例中的密钥。默认情况下，使用的是数据库前缀。';
$string['prefixinvalid'] = '您选择的前缀⽆效。您只能使⽤a-z，A-Z， 0-9或 _。';
$string['prefixnotunique'] = '您选择的前缀不是唯一的。请选择一个唯一的前缀。';
$string['privacy:metadata'] = '作为缓存功能的一部分，APC用户缓存（APCu）插件可以短暂地存储数据，但这些数据会定期清除，不会以任何方式向外部发送。';
$string['testperformance'] = '测试性能';
$string['testperformance_desc'] = '如果启用，则在查看测试性能页面时将包括APCu性能。不建议在生产站点上启用此功能。';
