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
 * Strings for component 'ltiservice_gradebookservices', language 'zh_cn', version '4.3'.
 *
 * @package     ltiservice_gradebookservices
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['alwaysgs'] = '将此服务用于成绩同步和列管理';
$string['grade_synchronization'] = 'IMS LTI作业和成绩服务';
$string['grade_synchronization_help'] = '是否使用IMS LTI作业和成绩服务来同步成绩，而不是使用基础成绩服务。

* **请勿使用此服务** - 将使用基础成果功能和配置
* **仅将此服务用于成绩同步** - 此服务将在现有成绩册列中填充成绩，但无法创建新列
* **将此服务用于成绩同步和列管理** - 该服务将能够创建和更新成绩册列并管理成绩。';
$string['ltiservice_gradebookservices'] = 'IMS LTI作业和成绩服务';
$string['modulename'] = 'LTI 成绩';
$string['nevergs'] = '不要使用此服务';
$string['partialgs'] = '此服务仅用于成绩同步';
$string['pluginname'] = 'LTI作业和成绩服务';
$string['privacy:metadata:externalpurpose'] = '此信息将发送到外部LTI提供程序。';
$string['privacy:metadata:feedback'] = '用户为此LTI活动收到的反馈。';
$string['privacy:metadata:grade'] = '用户在Moodle中为此LTI活动收到的成绩。';
$string['privacy:metadata:maxgrade'] = '此LTI活动可达到的最高成绩。';
$string['privacy:metadata:timemodified'] = '上次更新成绩的时间';
$string['privacy:metadata:userid'] = '使用LTI工具的平台的用户ID';
$string['taskcleanup'] = 'LTI作业和成绩服务表清理';
