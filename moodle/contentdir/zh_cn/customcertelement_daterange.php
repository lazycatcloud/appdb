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
 * Strings for component 'customcertelement_daterange', language 'zh_cn', version '4.3'.
 *
 * @package     customcertelement_daterange
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['addrange'] = '添加另一个范围';
$string['completiondate'] = '完成日期';
$string['courseenddate'] = '课程结束日期';
$string['coursegradedate'] = '课程评分日期';
$string['coursestartdate'] = '课程开始日期';
$string['currentdate'] = '当前日期';
$string['dateitem'] = '日期项';
$string['dateitem_help'] = '这将是印在证书上的日期。';
$string['dateranges'] = '日期范围';
$string['datestring'] = '字符串';
$string['end'] = '结束';
$string['error:atleastone'] = '必须至少配置一个日期范围';
$string['error:datestring'] = '你必须为日期范围提供字符串表述';
$string['error:enddate'] = '结束日期必须在开始日期之后';
$string['error:recurring'] = '重复周期不得超过12个月';
$string['fallbackstring'] = '回退字符串';
$string['fallbackstring_help'] = '如果没有在日期上使用日期范围，就会显示这个字符串。如果没有设置回退字符串，这里将不会有任何输出。';
$string['help'] = '为日期范围提供字符串表述<br/><br/>如果您的日期范围重叠，将应用第一个匹配的日期范围。';
$string['issueddate'] = '发布日期';
$string['placeholders'] = '以下占位符可用于字符串表示或回退字符串中。<br/><br /> {{range_first_year}} - -匹配范围的第一年,<br/> {{range_last_year}} - 匹配范围的最后一年,<br/> {{recurring_range_first_year}} - 匹配重复周期的第一年,<br/> {{recurring_range_last_year}} - 匹配重复周期的最后一年,<br/> {{current_year}} - 本年度,<br/> {{date_year}} - 用户日期的年份。';
$string['pluginname'] = '日期范围';
$string['preview'] = '预览{$a}';
$string['privacy:metadata'] = '日期范围插件不存储任何个人数据。';
$string['recurring'] = '循环';
$string['recurring_help'] = '如果你把一个日期范围标记为循环，那么配置的年份将不会被考虑。';
$string['setdeleted'] = '删除';
$string['start'] = '开始';
