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
 * Strings for component 'amvonetroom', language 'zh_cn', version '4.3'.
 *
 * @package     amvonetroom
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['amvonetroom:moderator'] = '主持人';
$string['error_backup_fail'] = '备份 {$a->session} 会话时出错。请联系{$a->support_begin}技术支持{$a->support_end}。';
$string['error_backup_fail_with_msg'] = '备份 {$a->session} 会话时出错： {$a->message}';
$string['error_backup_space_limit_reached'] = '已达到备份空间限制。请联系学校管理员并报告此问题。';
$string['error_key_not_defined'] = 'AMVONET工作室模块未注册。';
$string['error_limit_reached'] = '已达到限制。请联系学校管理员并报告此问题。';
$string['error_school_bad_request'] = 'master.amvonet.com 报告了错误的请求。请致电AMVONET技术支持。';
$string['error_school_forbidden'] = 'master.amvonet.com 拒绝了请求。请致电AMVONET技术支持。';
$string['error_school_not_registered'] = '这所学校没有注册 master.amvonet.com';
$string['error_session_restoring'] = '无法备份，正在还原会话。请稍后再试。';
$string['error_storage_space_limit_reached'] = '已达到磁盘空间限制。请联系学校管理员并报告此问题。';
$string['error_unavailable'] = 'master.amvonet.com 暂时不可用。';
$string['error_version_incompatible'] = 'master.amvonet.com  不支持当前版本的AMVONET工作室模块。请致电AMVONET技术支持。';
$string['error_version_too_old'] = 'AMVONET文件室模块的版本太旧。请更新模块。';
$string['formatdate'] = 'Y-m-d  h:i';
$string['introduction_text'] = '简介文本';
$string['key_caption'] = '注册密钥';
$string['key_hint'] = '在 master.amvonet.com 上注册您的 AMVONET 工作室模块，并获取您的密钥。';
$string['label_domain'] = '域';
$string['label_status'] = '状态';
$string['label_version'] = '版本';
$string['label_version_enterprise'] = '企业版(Enterprise)';
$string['label_version_lite'] = '缩减版(Lite )';
$string['label_version_pro'] = '专业版(Pro )';
$string['label_version_type_com'] = '贸易的';
$string['label_version_type_direct_sale'] = '贸易的';
$string['label_version_type_free'] = '自由的';
$string['label_version_type_testing'] = '测试';
$string['label_version_type_trial'] = '试验';
$string['label_warning'] = '警告';
$string['link_account'] = '我的帐户';
$string['link_buy'] = '买';
$string['link_register'] = '注册插件';
$string['link_support'] = '支持';
$string['message_firewall_not_configured'] = '很抱歉，由于配置错误，请求的操作已失败。您可以通过访问 {$a->kb_begin}以下URL{$a->kb_end}找到最可能的原因和解决方案。同时，如果您需要帮助，请随时联系我们的 {$a->support_begin}技术支持{$a->support_end}。。';
$string['moderator'] = '主持人';
$string['modulename'] = 'AMVONET工作室';
$string['modulename_help'] = 'AMVONET工作室用于创建网络研讨会和交互式演示文稿。您还可以使用此工具编辑录制。';
$string['modulenameplural'] = 'AMVONET工作室';
$string['name_live_this_session'] = '这个房间名称';
$string['pluginadministration'] = 'AMVONET工作室管理员';
$string['pluginname'] = 'AMVONET工作室';
$string['status_active'] = '活动';
$string['status_active_till'] = '直到';
$string['status_blocked'] = '已阻止';
$string['status_blocked_since'] = '从';
$string['status_no_key'] = '未注册';
$string['warn_missed_plugin'] = 'AMVONET工作室模块需要{$a}PHP扩展。请安装它。';
$string['warn_missed_plugins'] = 'AMVONET工作室模块需要以下PHP扩展：{$a}。请安装它们。';
$string['warn_no_crossdomain'] = '跨域策略设置不正确。有关详细信息，请参阅安装指南。';
