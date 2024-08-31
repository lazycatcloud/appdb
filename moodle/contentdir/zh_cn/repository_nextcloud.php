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
 * Strings for component 'repository_nextcloud', language 'zh_cn', version '4.3'.
 *
 * @package     repository_nextcloud
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['both'] = '内部和外部';
$string['cannotconnect'] = '该用户无法通过身份验证。请登录后再上传文件。';
$string['chooseissuer'] = '发行者';
$string['chooseissuer_help'] = '要添加新的发行者，请转到网站管理/服务器/Auth 2服务。';
$string['configplugin'] = 'Nextcloud存储库配置';
$string['configuration_exception'] = 'OAuth 2客户端的配置中出现错误：{$a}';
$string['contactadminwith'] = '无法执行请求的操作。如果重复出现这种情况，请联系网站管理员并提供以下附加信息：<br>“<i>{$a}</i>”。';
$string['couldnotmove'] = '无法在{$a}文件夹中移动请求的文件。';
$string['defaultreturntype'] = '默认返回类型';
$string['endpointnotdefined'] = '端点{$a}未定义。';
$string['external'] = '外部（仅存储在Moodle中的链接）';
$string['externalpubliclinkwarning'] = '警告：此文件将成为公开文件。';
$string['filenotaccessed'] = '无法访问请求的文件。请检查您是否选择了有效的文件，以及您是否使用正确的帐户进行了身份验证。';
$string['fileoptions'] = '此处可配置返回文件的类型和默认值。请注意，所有外部链接的文件都将被更新，以便所有者是Moodle系统帐户。';
$string['foldername'] = '在Nextcloud用户的私人空间中创建的文件夹的名称，其中包含所有访问控制链接。';
$string['foldername_help'] = '为确保用户找到与他们共享的文件，共享文件将被保存到特定的文件夹中。

此设置决定了文件夹的名称。建议选择与Moodle实例相关的名称。';
$string['internal'] = '内部 (存储在Moodle内的文件)';
$string['invalidresponse'] = '无效的服务器响应。';
$string['issuervalidation_invalid'] = '目前{$a}发行者是活动的，但是它没有实现所有必要的端点。存储库将无法工作。';
$string['issuervalidation_valid'] = '目前{$a}发行者处于活动状态。';
$string['issuervalidation_without'] = '您尚未选择Nextcloud服务器作为OAuth 2发行者。';
$string['nextcloud'] = 'Nextcloud';
$string['nextcloud:view'] = '查看Nextcloud';
$string['no_right_issuers'] = '现有发行者都没有实现所有必需的端点。请注册合适的发行者。';
$string['noclientconnection'] = '无法连接OAuth客户端。';
$string['notauthorized'] = '您无权执行此请求。请确保您使用正确的帐户进行身份验证。';
$string['oauth2serviceslink'] = '<a href="{$a}" title="链接到OAuth 2服务配置">OAuth 2服务配置</a>。';
$string['pathnotcreated'] = '无法在系统帐户中创建文件夹路径{$a}。';
$string['pluginname'] = 'Nextcloud';
$string['pluginname_help'] = 'Nextcloud存储库';
$string['privacy:metadata'] = 'Nextcloud存储库插件既不存储任何个人数据，也不向远程系统传输用户数据。';
$string['request_exception'] = '对{$A->instance}的请求失败。{$a->errormessage}';
$string['requestnotexecuted'] = '无法执行该请求。如果重复出现这种情况，请联系网站管理员。';
$string['right_issuers'] = '以下发行者实现了所需的端点：<br>{$a}';
$string['supportedreturntypes'] = '支持的文件';
