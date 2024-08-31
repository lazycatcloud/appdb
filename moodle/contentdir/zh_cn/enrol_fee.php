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
 * Strings for component 'enrol_fee', language 'zh_cn', version '4.3'.
 *
 * @package     enrol_fee
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['assignrole'] = '分配角色';
$string['cost'] = '报名费';
$string['costerror'] = '报名费必须是一个数字。';
$string['currency'] = '货币';
$string['defaultrole'] = '默认角色分配';
$string['defaultrole_desc'] = '选择付款后要分配给用户的角色。';
$string['enrolenddate'] = '结束日期';
$string['enrolenddate_help'] = '如果启用，用户只能在此日期之前报名。';
$string['enrolenddaterror'] = '报名结束日期不能早于开始日期。';
$string['enrolperiod'] = '报名期限';
$string['enrolperiod_desc'] = '默认的报名有效期。如果设置为零，则默认情况下，报名有效期将是无限的。';
$string['enrolperiod_help'] = '从用户报名开始，报名的有效时间长度。如果禁用，报名时间将是无限的。';
$string['enrolstartdate'] = '开始日期';
$string['enrolstartdate_help'] = '如果启用，用户只能从这个日期开始报名。';
$string['expiredaction'] = '报名截止操作';
$string['expiredaction_help'] = '选择用户报名过期时要执行的操作。请注意，某些用户数据和设置在用户取消报名时会被删除。';
$string['fee:config'] = '在付费报名实例上配置报名方式';
$string['fee:manage'] = '管理已报名的用户';
$string['fee:unenrol'] = '从课程中取消用户报名';
$string['fee:unenrolself'] = '从课程中取消报名';
$string['nocost'] = '参加本课程不需要任何费用！';
$string['paymentaccount'] = '付款帐户';
$string['paymentaccount_help'] = '报名费将支付到此帐户。';
$string['pluginname'] = '付费报名';
$string['pluginname_desc'] = '通过付费报名方法，您可以设置需要付费的课程。如果任何课程的费用被设置为零，则不要求学生支付入学费用。这里有一个全站的费用，你可以设置为整个网站的默认费用，然后你可以为每个课程单独设置费用。课程费用优先于网站费用。';
$string['privacy:metadata'] = '付费报名插件不存储任何个人数据。';
$string['purchasedescription'] = '报名参加{$a}课程';
$string['sendpaymentbutton'] = '选择付费方式';
$string['status'] = '选择付费方式';
$string['status_desc'] = '默认情况下，允许用户付费报名课程。';
