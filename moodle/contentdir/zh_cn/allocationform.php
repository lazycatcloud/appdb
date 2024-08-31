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
 * Strings for component 'allocationform', language 'zh_cn', version '4.3'.
 *
 * @package     allocationform
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['accessdenied'] = '分配表访问被拒绝';
$string['add_option'] = '添加新选项';
$string['al_notwant'] = '不想要';
$string['al_notwant_help'] = '选择您不希望分配选项';
$string['allocationform'] = '分配表';
$string['allocationform:addinstance'] = '添加新的分配表';
$string['allocationform:edit'] = '编辑分配表';
$string['allocationform:exportallocations'] = '导出分配表';
$string['allocationform:exportchoices'] = '导出选中的';
$string['allocationform:reallocate'] = '强制重新分配';
$string['allocationform:viewallocations'] = '查看所有分配';
$string['allocationform:viewform'] = '参考所有分配表';
$string['allocationformname'] = '分配表名称';
$string['allocationformname_help'] = '此分配表单的名称，将用于链接到该表单。';
$string['allocations'] = '分配';
$string['allocations_not_visible'] = '分配只能由编辑者查看。';
$string['allocationsexported'] = '导出分配';
$string['allocationviewed'] = '已查看分配表';
$string['aria:delete'] = '删除 {$a}';
$string['aria:edit'] = '编辑 {$a}';
$string['aria:restrict'] = '限制{$a}';
$string['availabilityheading'] = '表格可用性';
$string['back_to_edit'] = '切换为编辑模式';
$string['back_to_edit_warning'] = '这将删除提交到表单的所有信息。';
$string['before_start'] = '此分配表的开始日期尚未过去。';
$string['calendar:avaliable'] = '为{$a}发布的分配';
$string['calendar:deadline'] = '{$a}的截止日期';
$string['cannoteditinapp'] = '无法在Moodle应用程序中编辑分配表单';
$string['changestateto'] = '您确定要将表单更改为{$a}状态吗？';
$string['choice'] = 'Choice {$a->choice}';
$string['choice_help'] = '选择您希望分配的选项。';
$string['choicealreadyselected'] = '一个选项只能选择一次';
$string['choiceheading'] = '设置选项';
$string['choiceincorrectstate'] = '表格没有打开。请刷新页面。';
$string['choiceinvalid'] = '您选择的选项不是表单的一部分';
$string['choicerequired'] = '做出选择';
$string['choicesexported'] = '选项导出';
$string['cron'] = '后台处理分配表';
$string['csvgenerated'] = 'CSV生成';
$string['deadline'] = '截止期';
$string['deadline_help'] = '用户能够选择分配的最晚时间，也是分配表单排队等待分配过程发生的最早时间。';
$string['deadline_message'] = '填写此表格的截止日期为：{$a->deadline}';
$string['deadline_passed'] = '此表单的截止日期已过，如果您现在激活它，它将立即开始处理。';
$string['defaultrole'] = '默认角色';
$string['defaultrole_help'] = '设置用于选择将使用活动分配的用户的默认角色';
$string['deleteuserdata'] = '删除用户数据';
$string['disallow_list'] = '禁用列表';
$string['disallow_list_help'] = '所有选中的用户将无法选择{$a->option_name}';
$string['duplicate_choice'] = '您只能选择一个选项一次';
$string['duplicateoption'] = '您的更改无法保存到数据库。这很可能是因为输入了重复的选项名称';
$string['editingmode'] = '编辑中';
$string['editingoption'] = '编辑中的选项';
$string['event:optiondcreated'] = '已创建选项';
$string['event:optiondeleted'] = '已删除选项';
$string['form_allocation_error'] = '错误的formid： {$a->formid}:';
$string['form_allocation_error2'] = '错误：不能分配用户ID： {$a->userid}';
$string['generate_allocation_csv'] = '生成用户分配的csv';
$string['generate_csv'] = '生成用户选择的csv';
$string['in_editingmode'] = '表格正在编辑中，第1阶段，共5阶段。';
$string['in_processedmode'] = '分配已经发布。第5阶段，共5阶段。';
$string['in_processmode'] = '正在分配用户，第3阶段，共5阶段。';
$string['in_readymode'] = '表格处于活动状态，第2阶段，共5阶段。';
$string['in_reviewmode'] = '正在审查分配，第4阶段，共5阶段。';
$string['incorrectnumberofchoices'] = '表单没有正确的选项数';
$string['instructions'] = '您必须对{$a->choices}选项进行排名，您将被分配到{$a->allocation}选项。';
$string['instructionsnotwant'] = '您必须对{$a->choices}进行排名，您将被分配到{$a->allocation}个选项。您可以选择1个不希望分配给的选项。';
$string['invalidstate'] = '向分配表单传递了无效的状态更改';
$string['invalidstatechange'] = '试图更改无效的状态';
$string['make_active'] = '使窗体处于活动状态';
$string['makechoice'] = '做出你的选择';
$string['modulename'] = '分配表';
$string['modulename_help'] = '分配表可用于为学生分配一到十个选项（例如模块、作业、实习等）

老师定义：

* 学生可用的选项列表。
* 可分配给选项的学生人数。
* 分配给学生的选项有多少（一到十个）
* 一个学生可以排列多少选项（在1到10之间）
* 如果学生能够选择他们不希望分配的选项。
* 学生可以提交选择的最后一点。

警告：将活动从活动模式切换回编辑模式时，学生所做的任何选择都将被删除。

截止日期后，表格将尝试对学生进行“最佳匹配”分配，以便：

* 尽可能多的学生被分配到排名尽可能高的选项。
* 学生永远不会被分配到他们选择为“不想要”的选项。
* 学生不会被分配到他们被限制选择的选项。
* 未做出选择的学生将排在最后。

分配完成后，教师可以：

* 在将结果发布给学生之前，请查看结果并统计分配给选项的学生人数。
* 获取学生选择的csv。
* 获取分配的csv。';
$string['modulenameplural'] = '分配表';
$string['no_allocations'] = '没有找到分配';
$string['noallocationforms'] = '找不到此课程的分配表';
$string['noformdatapassed'] = '没有传递表单数据。未执行任何更新。';
$string['nopermission'] = '无法将您分配到表单，您的选择尚未保存';
$string['not_active'] = '分配表单不可用，请稍后再试。';
$string['not_enough_slots'] = '没有足够的名额供所有符合派遣条件的人员使用';
$string['not_set'] = '你必须做出选择';
$string['notrequired'] = '不需要';
$string['notwant'] = '包括不需要';
$string['notwant_help'] = '如果选中，用户将有机会指定他们不希望分配给的选项';
$string['nousersallocated'] = '未分配用户';
$string['numberofallocations'] = '每个用户的分配';
$string['numberofallocations_help'] = '用户将被分配到的选项数';
$string['numberofchoices'] = '选择数量';
$string['numberofchoices_help'] = '用户必须选择的选项数';
$string['ok_to_continue'] = '你确定要继续吗？';
$string['option_form_header'] = 'New option';
$string['option_heading'] = '标题';
$string['option_heading_help'] = '在该选项正上方显示的标题。';
$string['option_list'] = '选项列表';
$string['option_maxallocation'] = '最大分配';
$string['option_maxallocation_help'] = '可分配给此选项的最大人数。';
$string['option_maxallocation_invalid'] = '未设置最大分配';
$string['option_name'] = '选项名';
$string['option_name_help'] = '将向用户显示的选项的名称。';
$string['option_restricted'] = '受限用户';
$string['optioncreated'] = '创建选项: {$a}';
$string['optiondeleted'] = '删除选项： {$a}';
$string['optionedited'] = '已编辑选项';
$string['optionmodified'] = '改动的选项： {$a}';
$string['optionnamenumber'] = '{$a->name} ({$a->allocation})';
$string['overviewclose'] = '关闭日期： {$a->closedate}';
$string['overviewname'] = '分配： {$a->link}';
$string['overviewready'] = '您的分配可用。';
$string['overviewreview'] = '准备好进行审查。分配的人员无法看到结果。';
$string['people'] = '待分配人数';
$string['permissionedited'] = '权限已编辑';
$string['permissionviewed'] = '权限查看';
$string['pluginadministration'] = '分配表管理';
$string['pluginname'] = '分配表格（eForms）';
$string['privacy:export:allocations'] = '分配';
$string['privacy:export:choices'] = '选项';
$string['privacy:export:restrictions'] = '限制的';
$string['privacy:metadata:allocationform_allocations'] = '存储为用户所做的分配';
$string['privacy:metadata:allocationform_allocations:allocation'] = '分配给用户的选项';
$string['privacy:metadata:allocationform_allocations:userid'] = '正在分配的用户';
$string['privacy:metadata:allocationform_choices'] = '将用户所做的选择存储在分配表单上';
$string['privacy:metadata:allocationform_choices:choice1'] = '用户的第一偏好';
$string['privacy:metadata:allocationform_choices:choice10'] = '用户的第十个首选项';
$string['privacy:metadata:allocationform_choices:choice2'] = '用户的第二偏好';
$string['privacy:metadata:allocationform_choices:choice3'] = '用户的第三个首选项';
$string['privacy:metadata:allocationform_choices:choice4'] = '用户的第四个首选项';
$string['privacy:metadata:allocationform_choices:choice5'] = '用户的第五个偏好';
$string['privacy:metadata:allocationform_choices:choice6'] = '用户的第六个偏好';
$string['privacy:metadata:allocationform_choices:choice7'] = '用户的第七个偏好';
$string['privacy:metadata:allocationform_choices:choice8'] = '用户的第八个偏好';
$string['privacy:metadata:allocationform_choices:choice9'] = '用户的第九个偏好';
$string['privacy:metadata:allocationform_choices:notwant'] = '用户不希望分配给的选项';
$string['privacy:metadata:allocationform_choices:userid'] = '做出选择的用户';
$string['privacy:metadata:allocationform_disallow'] = '存储用户被阻止选择的选项';
$string['privacy:metadata:allocationform_disallow:disallow_allocation'] = '限制用户选择的选项';
$string['privacy:metadata:allocationform_disallow:userid'] = '被限制的用户';
$string['processedmode'] = '处理过的';
$string['processmode'] = '处理中的';
$string['queued_for_processing'] = '正在等待处理分配表单...请稍后再试。';
$string['readymode'] = '活跃的';
$string['reprocess'] = '强制重新分配';
$string['reprocess_warning'] = '这将删除所有当前分配';
$string['requirechoice'] = '需要选择';
$string['resetstate'] = '重置为编辑状态';
$string['restrict'] = '限制';
$string['restrictionsexceeded'] = '您已超过{$a->users}用户的可用限制数。每个用户至少需要{$a->numberofchoices}个可用选项。';
$string['restrictionsmodified'] = '限制已更新。';
$string['reviewmode'] = '回顾';
$string['roleselect'] = '要分配的角色';
$string['roleselect_help'] = '选择将使用此表单分配的此课程的用户角色。';
$string['saved'] = '您的选择已保存。';
$string['savefail'] = '您的选择无法保存在Moodle中';
$string['search:activity'] = '分配表 - 活动信息';
$string['show_allocations'] = '使分配可用';
$string['slots'] = '分配的空间数';
$string['startdate'] = '开始日期';
$string['startdate_help'] = '用户能够选择其分配的最早时间。';
$string['statechanged'] = '状态已更改';
$string['statechangefailed'] = '无法更改状态';
$string['trackcompletion'] = '是否需要提交选项以完成此活动？';
$string['unallocated'] = '未分配';
$string['youralloactions'] = '您已被分配到：';
