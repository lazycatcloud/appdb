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
 * Strings for component 'assignsubmission_changes', language 'zh_cn', version '4.3'.
 *
 * @package     assignsubmission_changes
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['admin_diff'] = '默认情况下启用差异检测';
$string['admin_diff_help'] = '如果设置，则默认情况下，将为所有新分配启用上载之间差异的生成<br>差异生成需要生成变更日志。';
$string['allow_changelog'] = '允许检测学生提交的更改';
$string['allow_changelog_help'] = '如果设置，则可以生成包含提交的所有更新的变更日志。您可以在提交设置中设置此选项。如果停用此选项，则无法生成变更日志。';
$string['default'] = '默认情况下启用Changelog(变更日志)';
$string['default_help'] = '如果设置，则默认情况下将为所有新分配启用变更日志。';
$string['diff'] = '自动检测差异';
$string['diff_help'] = '检测学生提交内容中的差异';
$string['diff_not_available'] = '<p>无法检测PDF文件中的更改，因为该工具<code>diff</code>在您的系统上找不到。如果已启用上述设置，请查看本地插件ChangelogLib的管理设置，以指定正确的路径。如果可以找到工具，此消息将消失。</p>';
$string['diff_prefix'] = '新文件的以下页面已更改：';
$string['diff_requires_changelog'] = '必须为差异生成启用变更日志';
$string['edit_form_changes'] = '变更日志条目';
$string['edit_form_changes_help'] = '描述您提交的内容中更改的部分。';
$string['edit_form_error_empty'] = '变更日志条目不能为空。';
$string['edit_form_error_too_long'] = '描述文本不能超过{$a->max}个字符。您提交了{$a->used}个字符。';
$string['edit_form_headline'] = '为{$a}上的提交编辑显示的变更日志文本。';
$string['enabled'] = '变更日志';
$string['enabled_help'] = '启用更改检测。';
$string['is_an_update'] = '是的更新于';
$string['last_grading'] = '最后一次评分于';
$string['long_diff'] = '{$a} 页被修改';
$string['max_filesize'] = '用于差异检测的最大文件大小（MB）';
$string['max_filesize_help'] = '将在其中检测到与前置文件的差异的提交的最大文件大小。较高的值可能会影响服务器响应时间和工作负载。将此值设置为零以禁用差异检测。';
$string['new_changes_prefix'] = '上次评分后，用户执行了以下更改';
$string['no_changes'] = '未检测到任何更改。';
$string['no_last_grading'] = '到目前为止还没有评分。';
$string['no_new_changes'] = '最后一次评分后，提交内容没有变化';
$string['no_old_changes'] = '学生在最后一次评分前没有提交任何更改';
$string['no_ungraded_changes'] = '未评分的变更';
$string['old_changes_prefix'] = '在上次评分之前，用户执行了以下更改';
$string['pdftotext_not_available'] = '<p>无法检测PDF文件中的更改，因为该工具<code>pdftotext</code> 在您的系统上找不到。如果已启用上述设置，请查看本地插件ChangelogLib的管理设置，以指定正确的路径。如果可以找到工具，此消息将消失。</p>';
$string['pluginname'] = '更改';
$string['pluginname_desc'] = '分配提交更改';
$string['pluginname_help'] = '分配提交更改';
$string['pluginname_link'] = 'https://github.com/hwuerz/moodle-assignsubmission_changes';
$string['replaces'] = '替换';
$string['ungraded_changes'] = '存在未评分的更改';
$string['warning'] = '警告';
$string['was_added'] = '已添加';
$string['was_deleted'] = '已被删除';
