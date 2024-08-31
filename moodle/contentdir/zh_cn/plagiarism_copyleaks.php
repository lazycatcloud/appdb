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
 * Strings for component 'plagiarism_copyleaks', language 'zh_cn', version '4.3'.
 *
 * @package     plagiarism_copyleaks
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['claccountconfig'] = 'Copyleaks 帐号配置';
$string['claccountkey'] = 'Copyleaks 密钥';
$string['claccountsecret'] = 'Copyleaks 秘密';
$string['cladminconfig'] = 'Copyleaks 抄袭插件配置';
$string['cladminconfigsavesuccess'] = 'Copyleaks 抄袭设置已成功保存。';
$string['clallowstudentaccess'] = '允许学⽣访问抄袭报告';
$string['clapisubmissionerror'] = 'Copyleaks 在尝试发送⽂件以供提交时返回错误 -';
$string['clcheatingdetected'] = '检测到作弊，打开报告以了解更多信息';
$string['clcheatingdetectedtxt'] = '检测到作弊';
$string['cldisabledformodule'] = '该模块禁⽤了 Copyleaks 插件。';
$string['cldraftsubmit'] = '仅在学⽣单击提交按钮时提交⽂件';
$string['cldraftsubmit_help'] = '此选项仅在“要求学⽣单击提交按钮”为“是”时可⽤';
$string['clenable'] = '启⽤ Copyleaks';
$string['clenablemodulefor'] = '为 {$a} 启⽤ Copyleaks';
$string['clfailtosavedata'] = '⽆法保存 Copyleaks 数据';
$string['clgenereportimmediately'] = '⽴即⽣成报告';
$string['clgenereportonduedate'] = '在到期⽇⽣成报告';
$string['clinserterror'] = '尝试将记录插⼊数据库时出错';
$string['clinvalidkeyorsecret'] = '⽆效的密钥或秘密';
$string['cllogsheading'] = '⽇志';
$string['cllogstab'] = '⽇志';
$string['clnopageaccess'] = '您⽆权访问此⻚⾯。';
$string['clopenfullscreen'] = '全屏打开';
$string['clopenreport'] = '点击打开 Copyleaks 报告';
$string['clplagiarised'] = '相似度得分';
$string['clplagiarisefailed'] = '失败的';
$string['clplagiarisequeued'] = '计划在 {$a} 进行抄袭扫描';
$string['clplagiarisescanning'] = '扫描抄袭...';
$string['clpluginconfigurationtab'] = '配置';
$string['clpluginintro'] = 'Copyleaks 抄袭检查器是⼀个全⾯⽽准确的解决⽅案，可帮助教师和学⽣检查其内容是否为原创。<br>有关如何设置和使 ⽤插件的更多信息，请查看 <a target=_blank href=https: //lti.copyleaks.com/guides/select-moodle integration>我们的指南</a>.</br></br></br>';
$string['clpoweredbycopyleaks'] = '由 Copyleaks 提供⽀持';
$string['clreportgenspeed'] = '何时⽣成报告？';
$string['clreportpagetitle'] = 'Copyleaks 报告';
$string['clscoursesettings'] = 'Copyleaks 设置';
$string['clsendqueuedsubmissions'] = 'Copyleaks 抄袭插件 - 处理排队文件';
$string['clstudentdisclosure'] = '学生披露';
$string['clstudentdisclosure_help'] = '此⽂本将在⽂件上传⻚⾯上显⽰给所有学⽣。';
$string['clstudentdisclosuredefault'] = '<span>提交⽂件即表⽰您同意剽窃检测服务<a target=_blank href=https://copyleaks.com/legal/privacypolicy> 隐私政策</a>';
$string['cltaskfailedconnecting'] = '⽆法建⽴与 Copyleaks 的连接，错误：{$a}';
$string['clupdateerror'] = '尝试更新数据库中的记录时出错';
$string['clupdatereportscores'] = 'Copyleaks plagiarism plugin - 处理 plagiairsm 检查相似度分数更新';
$string['pluginname'] = 'Copyleaks 抄袭插件';
$string['privacy:metadata:core_files'] = 'Copyleaks 存储已上传到 Moodle 的⽂件以形成 Copyleaks 提交。';
$string['privacy:metadata:plagiarism_copyleaks_client'] = '为了与 Copyleaks 集成，需要与 Copyleaks 交换⼀些⽤⼾数据。';
$string['privacy:metadata:plagiarism_copyleaks_client:module_creationtime'] = '模块创建时间会发送到 Copyleaks 以进行识别。';
$string['privacy:metadata:plagiarism_copyleaks_client:module_id'] = '模块 id 被发送到 Copyleaks ⽤于识别⽬的';
$string['privacy:metadata:plagiarism_copyleaks_client:module_name'] = '模块名称被发送到 Copyleaks 以进行识别。';
$string['privacy:metadata:plagiarism_copyleaks_client:module_type'] = '模块类型被发送到 Copyleaks ⽤于识别⽬的。';
$string['privacy:metadata:plagiarism_copyleaks_client:submittion_content'] = '提交内容被发送到 Copyleaks 进行扫描处理。';
$string['privacy:metadata:plagiarism_copyleaks_client:submittion_name'] = '提交名称将发送到 Copyleaks 以进行识别。';
$string['privacy:metadata:plagiarism_copyleaks_client:submittion_type'] = '提交类型将发送到 Copyleaks 以进行识别。';
$string['privacy:metadata:plagiarism_copyleaks_client:submittion_userId'] = '提交的 userId 被发送到 Copyleaks ⽤于识别⽬的。';
$string['privacy:metadata:plagiarism_copyleaks_files'] = '将 Moodle 提交链接到 Copyleaks 提交的信息。';
$string['privacy:metadata:plagiarism_copyleaks_files:lastmodified'] = '指⽰⽤⼾上次修改其提交的时间戳。';
$string['privacy:metadata:plagiarism_copyleaks_files:similarityscore'] = '提交的相似度得分。';
$string['privacy:metadata:plagiarism_copyleaks_files:submitter'] = '提交的⽤⼾的 ID。';
$string['privacy:metadata:plagiarism_copyleaks_files:userid'] = '作为提交所有者的⽤⼾的 ID。';
