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
 * Strings for component 'local_codechecker', language 'zh_cn', version '4.3'.
 *
 * @package     local_codechecker
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['check'] = '校验码';
$string['clihelp'] = '根据Moodle的编码准则检查一些PHP代码。

选项：
  --interactive, -i 在每个文件后停止，允许继续检查下一个文件或对同一个文件重复检查。
  --exclude, -e 用逗号分隔的子串匹配路径列表排除文件，星号可以在任何地方作为通配符。
  --help, -h 显示这些信息
例如：
  php run.php local/codechecker';
$string['error_find'] = '目录搜索失败';
$string['exclude'] = '排除';
$string['filesfound'] = '找到的文件：{$a}';
$string['includewarnings'] = '包括警告';
$string['info'] = '<p>对照{$a->link}的某些方面检查代码。</p>
<p>输入相对于Moodle代码根的路径，例如：{$a->path}</p>
<p>您可以输入特定的PHP文件，或者输入文件夹以检查它包含的所有文件。支持多个条目（文件或文件夹），每行一个</p>
<p>要排除文件，可以使用逗号分隔的子串匹配路径列表，例如：{$a->excludeexample}。在任何地方。星号可以作为通配符使用。</p>';
$string['invalidpath'] = '无效的路径{$a}';
$string['moodlecodingguidelines'] = 'Moodle编码指南';
$string['numerrorswarnings'] = '{$a->errors}错误和{$a->warnings}警告';
$string['other_crlf'] = 'Windows（CRLF）行结束，而不仅仅是LF（仅首次出现时报告）';
$string['other_eol'] = '行尾空白';
$string['other_extralfs'] = '文件末尾的额外空行（仅使用一行）';
$string['other_missinglf'] = '文件末尾缺少LF（仅使用一个）';
$string['other_ratherlong'] = '行长度超过建议的132个字符';
$string['other_tab'] = '不允许使用制表符';
$string['other_toolong'] = '行长度超过最大180个字符';
$string['path'] = '要检查的路径';
$string['pluginname'] = '代码检查器';
$string['privacy:metadata'] = '代码检查器插件不存储任何个人数据。';
$string['recheckfile'] = '只需重新检查此文件';
$string['success'] = '做得好！';
$string['summary'] = '总计：{$a}';
$string['wholefile'] = '文件';
