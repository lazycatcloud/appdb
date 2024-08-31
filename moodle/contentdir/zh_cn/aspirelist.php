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
 * Strings for component 'aspirelist', language 'zh_cn', version '4.3'.
 *
 * @package     aspirelist
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['aspirecodesettings'] = 'Talis Aspire代码设置';
$string['aspirelist'] = '资源列表：{$a}';
$string['aspirelist:addinstance'] = '添加一个资源列表';
$string['aspirelist:view'] = '查看资源列表内容';
$string['aspirelistname'] = '资源列表名称';
$string['aspiresitesettings'] = 'Talis Aspire站点设置';
$string['aspireurl'] = 'Aspire网址';
$string['aspireurl_desc'] = '输入Talis Aspire网站的基本URL（不是HTTPS别名）。';
$string['aspireurlhttpsalias'] = 'Aspire网址HTTPS别名';
$string['aspireurlhttpsalias_desc'] = '输入Talis Aspire站点的HTTPS别名URL（如果有）。';
$string['authorsinconfig'] = '在配置表单中包括作者';
$string['authorsinconfig_desc'] = '模块配置表单中的资源项描述是否应包括作者姓名？默认情况下，仅包括项目标题和资源格式，以节省表单上的空间。';
$string['cachedef_listdata'] = '从Talis Aspire获取的缓存资源列表数据';
$string['center'] = '中心';
$string['codecolumn'] = 'Aspire代码列';
$string['codecolumn_desc'] = '可选择的包含Talis Aspire列表代码的自定义表中的列的名称';
$string['coderegex'] = 'Aspire代码正则表达式';
$string['coderegex_desc'] = '可选择的如果使用课程ID号或简称作为代码源，则这是一个正则表达式（包括分隔符），与其中的Talis Aspire代码部分相匹配。如果此处未提供正则表达式，则假定该字段仅包含Aspire代码。';
$string['codesource'] = 'Aspire代码源';
$string['codesource_desc'] = '选择Talis Aspire列表代码的来源。如果选择使用自定义数据库表，还必须在以下字段中指定表、列和课程属性详细信息。如果在自定义表中找不到特定课程的代码，则将检查课程ID号作为回退。';
$string['codetable'] = '自定义数据库表';
$string['codetable_desc'] = '可选择的Moodle数据库中自定义表的名称，其中包含根据Moodle课程属性映射的Talis Aspire列表代码。';
$string['college'] = '学院';
$string['contentheader'] = '资源列表选择';
$string['course'] = '课程';
$string['courseattribute'] = '课程属性';
$string['courseattribute_desc'] = '可选择的根据自定义表中的Talis Aspire代码映射的唯一课程属性（通常为id、idnumber或shortname）。';
$string['coursecolumn'] = '课程栏目';
$string['coursecolumn_desc'] = '可选择的自定义表中包含课程属性的列的名称，该属性根据您的Talis Aspire列表代码映射。';
$string['defaultdisplay'] = '默认显示模式';
$string['defaultdisplay_desc'] = '默认情况下，新资源列表是通过链接显示在单独的页面上，还是在课程页面上内联显示？';
$string['department'] = '院系';
$string['display'] = '显示资源列表内容';
$string['display_help'] = '如果选择在课程页面上显示资源列表内容，则不会有指向单独页面的链接。仅当选中“在课程页面上显示说明”时，才会显示说明。';
$string['displayinline'] = '在课程页面上';
$string['displaypage'] = '在一个单独页面上';
$string['division'] = '部门';
$string['errorcodecolumn'] = '如果要使用自定义数据库表作为Aspire代码源，则必须指定代码列。';
$string['errorcodesource'] = '如果要使用自定义数据库表作为Aspire代码源，则必须提供以下所有表和列详细信息。';
$string['errorcodetable'] = '如果要将自定义数据库表用作Aspire代码源，则必须指定表名。';
$string['errorcourseattribute'] = '如果要使用自定义数据库表作为Aspire代码源，则必须指定课程属性。';
$string['errorcoursecolumn'] = '如果要使用自定义数据库表作为Aspire代码源，则必须指定“课程”列。';
$string['faculty'] = '院系';
$string['field'] = '字段';
$string['generalsettings'] = '总体设置';
$string['includechildcodes'] = '包括元子代码';
$string['includechildcodes_desc'] = '检查课程元链接，并包括与找到的所有子课程相关联的Aspire列表代码。';
$string['institute'] = '包括';
$string['institution'] = '机构';
$string['itemcount'] = '{$a}项';
$string['itemcountplural'] = '{$a}项';
$string['kgcolumn'] = '知识组列';
$string['kgcolumn_desc'] = '可选择的包含知识组的自定义表中的列的名称（如果保留为空，则所有列表将使用在Talis Aspire site settings中配置的默认知识组）。';
$string['knowledgegroup'] = '默认知识组';
$string['knowledgegroup_desc'] = '为您的Talis Aspire列表选择默认目标知识组。如果为Aspire代码源（配置如下）使用自定义数据库表，则可以根据列表覆盖此选项。';
$string['level'] = '级别';
$string['module'] = '模块';
$string['modulename'] = 'Aspire资源列表';
$string['modulename_help'] = '<p>Aspire资源列表模块使教师能够在课程内容中直接包含从相关Talis Aspire资源列表中选择的资源</p> 资源列表可以显示在单独的链接页面中，也可以嵌入课程页面本身（最初隐藏，带有切换可见性的链接）</p>';
$string['modulename_link'] = 'mod/aspirelist/view';
$string['modulenameplural'] = 'Aspire资源列表';
$string['noaspirelists'] = '抱歉，没有与此{$a}关联的资源列表。';
$string['noconnection'] = '遗憾的是，Talis Aspire网站目前不可用。请稍后再试。';
$string['onlineresource'] = '在线资源';
$string['page-mod-aspirelist-view'] = '资源列表模块主页面';
$string['page-mod-aspirelist-x'] = '任何资源列表模块页面';
$string['pathway'] = '路径';
$string['pluginadministration'] = 'Aspire资源列表管理';
$string['pluginname'] = 'Aspire资源列表';
$string['previewitem'] = '预览项目';
$string['programme'] = '课程';
$string['requiremodintro'] = '需要资源列表描述';
$string['requiremodintro_desc'] = '如果要强制用户为每个资源列表输入描述，请启用此选项。';
$string['school'] = '学校';
$string['selectresources'] = '从“{$a}”中选择资源';
$string['showhide'] = '显示/隐藏资源列表';
$string['subject'] = '科目';
$string['unit'] = '单元';
$string['yearregex'] = '年份代码正则表达式';
$string['yearregex_desc'] = '可选择的这是一个正则表达式（包括分隔符），与课程ID号或短名称的年份代码部分相匹配（两者都将被选中），并且可以使用，而不考虑Aspire列表代码的来源。如果此处未提供正则表达式，则假定没有年份代码，并将使用每个列表的最新版本。';
