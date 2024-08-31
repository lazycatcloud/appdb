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
 * Strings for component 'repository_onedrive', language 'zh_cn', version '4.3'.
 *
 * @package     repository_onedrive
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['access'] = '访问';
$string['both'] = '内部和外部';
$string['cachedef_folder'] = '系统帐户中文件夹的OneDrive文件ID';
$string['configplugin'] = '配置OneDrive插件';
$string['confirmimportskydrive'] = '你确定要将所有文件从Microsoft SkyDrive存储库导入到Microsoft OneDrive存储库？Microsoft OneDrive存储库必须配置好并能运行，导入的文件才能像以前一样继续工作。警告：此操作无法撤销!';
$string['defaultreturntype'] = '默认返回类型';
$string['external'] = '外部（仅存储在Moodle中的链接）';
$string['fileoptions'] = '此处可配置返回文件的类型和默认值。请注意，所有外部链接的文件都将更新，以便所有者是Moodle系统帐户。';
$string['importskydrivefiles'] = '从Microsoft SkyDrive存储库导入文件';
$string['internal'] = '内部（存储在Moodle里的文件）';
$string['issuer'] = 'OAuth 2 服务';
$string['issuer_help'] = '选择配置为与OneDrive API对话的OAuth 2服务。如果该服务尚不存在，则需要创建它。';
$string['mysitenotfound'] = '您以前从未登录过OneDrive。您必须至少登录OneDrive一次，才能将其与Moodle一起使用。';
$string['oauth2serviceslink'] = '<a href=“{$a}”title=“链接到OAuth 2服务配置”>OAuth 2 服务配置</a>';
$string['onedrive:view'] = '查看OneDrive存储库';
$string['owner'] = '所有者：{$a}';
$string['pluginname'] = 'Microsoft OneDrive';
$string['privacy:metadata:repository_onedrive'] = 'Microsoft OneDrive存储库存储临时访问授权，并将用户数据从Moodle传输到远程系统。';
$string['privacy:metadata:repository_onedrive:repository_onedrive_access:itemid'] = '具有临时访问授权项目ID的Microsoft OneDrive。';
$string['privacy:metadata:repository_onedrive:repository_onedrive_access:permissionid'] = 'Microsoft OneDrive临时访问授权权限ID。';
$string['privacy:metadata:repository_onedrive:repository_onedrive_access:timecreated'] = 'Microsoft OneDrive临时访问授权创建日期/时间。';
$string['privacy:metadata:repository_onedrive:repository_onedrive_access:timemodified'] = 'Microsoft OneDrive临时访问授权修改日期/时间。';
$string['privacy:metadata:repository_onedrive:repository_onedrive_access:usermodified'] = '修改Microsoft OneDrive临时访问授权的用户的ID。';
$string['privacy:metadata:repository_onedrive:searchtext'] = 'Microsoft OneDrive存储库用户搜索文本查询。';
$string['removetempaccesstask'] = '删除受控链接的临时写入权限';
$string['searchfor'] = '搜索{$a}';
$string['servicenotenabled'] = '未配置访问权限。';
$string['skydrivefilesexist'] = 'Microsoft SkyDrive存储库被启用，但它已被弃用。请确保您将尽快把文件从SkyDrive迁移到OneDrive存储库。在Moodle 4.4中，将不再支持移动文件。';
$string['skydrivefilesimported'] = '所有文件都是从Microsoft SkyDrive存储库导入的。';
$string['skydrivefilesnotimported'] = '无法从Microsoft SkyDrive存储库导入某些文件。';
$string['supportedreturntypes'] = '支持的文件';
