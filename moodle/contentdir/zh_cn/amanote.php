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
 * Strings for component 'amanote', language 'zh_cn', version '4.3'.
 *
 * @package     amanote
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['amanote:addinstance'] = '添加新的可注释文件';
$string['amanote:view'] = '打开可注释文件';
$string['amanotecontent'] = '文件和子文件夹';
$string['amanotedetails_sizedate'] = '{$a->size}  {$a->date}';
$string['amanotedetails_sizetype'] = '{$a->size}  {$a->type}';
$string['amanotedetails_sizetypedate'] = '{$a->size}  {$a->type}  {$a->date}';
$string['amanotedetails_typedate'] = '{$a->type}  {$a->date}';
$string['autosaveperiod'] = '自动保存期间';
$string['autosaveperiod_help'] = '配置自动保存之间的时间间隔（最小：1，最大：30）。设置为0表示没有自动保存。';
$string['cannotcreatetoken'] = '在Amanote中打开';
$string['cannotcreatetoken_help'] = '您没有在Amanote中打开文档的权限。';
$string['clicktoamanote'] = '在Amanote中打开';
$string['clicktodownloadfile'] = '下载PDF文件';
$string['clicktodownloadnotes'] = '下载可注释文件';
$string['clicktoopen'] = '在新标签中打开';
$string['dnduploadamanote'] = '创建可注释文件';
$string['downloadfile'] = '下载';
$string['guestsarenotallowed'] = '在Amanote中打开';
$string['guestsarenotallowed_help'] = '不允许来宾用户在Amanote中打开资源。请登录以访问此功能。';
$string['importantinformationdescription'] = '为了使模块正常工作，请检查Moodle站点是否满足以下要求：

1. 启用Web服务（站点管理>高级功能）
2.  *Moodle mobile web服务*已启用（站点管理>插件>web服务>外部服务）
3. REST协议已激活（站点管理>插件>Web服务>管理协议）
4. 功能*webservice/rest:use* 已授权给*认证用户*（站点管理>用户>权限>定义角色>认证用户>管理角色）';
$string['importantinformationheading'] = '重要安装信息';
$string['key'] = '激活密钥';
$string['key_help'] = '此键是Podcast Creator等高级功能所必需的。';
$string['modifieddate'] = '编辑 {$a}';
$string['modulename'] = '可注释文件';
$string['modulename_help'] = '可注释文件是一种课程资源（PDF），学生可以在Amanote©中打开，以便对其进行清晰、结构化的笔记。

学生有可能：

* 在新浏览器选项卡中打开课程资源
* 在他们的计算机上下载课程资源
* 在Amanote©中打开课程资源并开始记笔记

当学生在Amanote©中打开课程资源时，他们能够开始智能笔记。他们的笔记链接到文档的不同页面。此外，他们还可以通过注释、图纸、公式、图像、幻灯片突出显示等来丰富自己的笔记。

学生保存笔记时，笔记会保存在个人空间的资源中。下次打开资源时，他们将取回笔记。';
$string['modulenameplural'] = '可注释文件';
$string['nonotestodownload'] = '下载可注释文件';
$string['nonotestodownload_help'] = '您尚未保存此文档的笔记。';
$string['openinamanote'] = '您尚未保存此文档的笔记。';
$string['openinamanote_help'] = '在Amanote中打开文档可以开始或继续记笔记。';
$string['openpodcastcreator'] = '打开播客创建者';
$string['openpodcastcreator_help'] = '播客创建者允许您录制新播客或编辑现有播客。';
$string['openstatistics'] = '打开统计信息';
$string['openstatistics_help'] = '这使您可以访问学生使用情况的统计信息以及他们对此资源的反馈。';
$string['pluginadministration'] = 'Amanote模块管理';
$string['podcastcreatorbutton'] = '打开播客创建者';
$string['preventdownload'] = '阻止PDF下载';
$string['preventdownload_desc'] = '阻止用户下载源文件。';
$string['printintro'] = '显示资源描述';
$string['printintroexplain'] = '是否在内容下方显示资源描述？';
$string['privacy:metadata'] = '为了与Amanote集成，需要将一些用户数据发送到Amanote客户端应用程序（远程系统）。';
$string['privacy:metadata:email'] = '将用户的电子邮件发送到远程系统，以获得更好的用户体验（注释共享、通知等）。';
$string['privacy:metadata:fullname'] = '将用户的全名发送到远程系统，以获得更好的用户体验。';
$string['privacy:metadata:subsystem:corefiles'] = '文件（PDF、AMA）使用Moodle的文件系统存储。';
$string['privacy:metadata:userid'] = '用户ID从Moodle发送到Amanote，以加快身份验证过程。';
$string['saveinprivate'] = '在私有文件中保存注释';
$string['saveinprivate_help'] = '将带注释的文件保存在用户的私有文件中。这将允许用户下次在Amanote中打开可注释文件时取回其注释。';
$string['servicenotavailable'] = '在Amanote中打开';
$string['servicenotavailable_help'] = '该服务不可用。请联系网站管理员。';
$string['showdate'] = '显示上传/修改日期';
$string['showdate_desc'] = '是否在课程页面上显示上传/修改日期？';
$string['showdate_help'] = '在资源链接旁边显示上传/修改日期。';
$string['showsize'] = '显示尺寸';
$string['showsize_desc'] = '是否在课程页面上显示文件大小？';
$string['showsize_help'] = '在指向资源的链接旁边显示文件大小，如“3.1 MB”。';
$string['statisticsbutton'] = '开放式学习分析';
$string['unexpectederror'] = '开放式学习分析';
$string['unexpectederror_help'] = '发生意外错误，无法在Amanote中打开资源。请联系网站管理员。';
$string['unsecureconnection'] = '警告您的连接不安全。';
$string['uploadeddate'] = '{$a}上传完';
