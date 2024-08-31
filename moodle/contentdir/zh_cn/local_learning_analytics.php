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
 * Strings for component 'local_learning_analytics', language 'zh_cn', version '4.3'.
 *
 * @package     local_learning_analytics
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['dataprivacy_threshold_description'] = '这个值决定了数据集在显示数据之前需要包含多少个 "数据点"。';
$string['general_settings'] = '常规设置';
$string['help_faq'] = '常见问题（FAQ）';
$string['help_faq_data_storage_answer'] = '所展示的数据来自两个数据源。这两个数据源都存储在Moodle的内部数据库中。
第一个数据源是Moodle的内部数据库，比如课程中的学生人数（仪表盘中的左边方框）。
其中一些数据集可以在其他Moodle页面上查看，只是在这些页面上的显示方式不同。
第二个数据源是专门为在使用情况统计页面上展示而收集的数据。
所有为此目的而收集的数据都是匿名存储的，无法追溯到单个用户。具体来说，以下数据是随着Moodle中的每个请求而存储的：';
$string['help_faq_data_storage_answer_list'] = '行动类型（如 "查看资源"）
时间（精确到秒）
发生行动的相应课程
相应的背景信息（如查看的资源）
操作系统和浏览器（如 "Windows 10 "和 "Firefox"），详细的浏览器或操作系统版本不被存储';
$string['help_faq_data_storage_question'] = '哪些数据是由该服务储存和显示的？';
$string['help_faq_developer_answer'] = '学习分析服务是由亚琛工业大学的教学服务中心开发的。
开发是开源的。因此，您可以自己检查使用的算法。在以下网页中，您可以获得更多信息：';
$string['help_faq_developer_question'] = '谁在开发这项服务，我在哪里可以获得更多信息？';
$string['help_faq_personal_data_answer'] = '出于数据隐私原因，学习分析服务不收集个性化数据。因此，大多数显示的统计数据（例如，使用最多的活动）仅包含资源访问频率的信息，而不包含参与者数量的信息。 例外情况是关于参与者和测验/作业的统计数据，它也显示Moodle的内部数据。';
$string['help_faq_personal_data_question'] = '为什么没有显示个性化的统计数据，如每个用户的点击量？';
$string['help_faq_privacy_threshold_answer'] = '出于数据隐私的考虑，只有在至少有{$a}个数据点的情况下才会显示汇总的数据。';
$string['help_faq_privacy_threshold_question'] = '为什么有些值显示为 "< {$a}"?';
$string['help_faq_visibility_answer'] = '为确保最大的透明度，课程所有者和课程参与者都可以查看显示的数据。';
$string['help_faq_visibility_question'] = '谁可以访问使用情况统计信息？';
$string['help_faq_week_start_answer'] = '控制面板上的显示效果取决于课程设置中的 "课程开始日期 "设置。如果这里指定的日期与课程的实际开始日期不一致，控制面板上的显示也将不正确。该课程的管理者可以在课程设置中纠正这一设置（在常规/课程开始日期中）。';
$string['help_faq_week_start_question'] = '为什么控制面板图表中的第一周与讲座的实际开始时间不一致？';
$string['help_take_tour'] = '参加互动式导览';
$string['help_text'] = '学习分析服务的 "使用情况统计 "页面显示了您的课程的关键指标。

所显示的统计数据是实时的，显示的是服务所收集的数据，以及来自Moodle课程本身的数据。所有由学习分析服务收集的数据都是完全匿名的，无法追溯到用户身上。';
$string['help_title'] = '帮助';
$string['hits'] = '点击';
$string['learners'] = '学习者';
$string['learning_analytics'] = '学习分析';
$string['navigation_position_beforekey_description'] = '允许指定在课程导航中添加页面链接的位置。默认情况下，链接添加在第一个“小节”节点之前。示例值： <code>成绩</code> 将在成绩链接前显示. 您可以使用开发者工具在导航中找到关键节点. 右键单击导航中的链接, 按 <em>检查</em> 并检查属性 <code>数据-关键</code>对应的 <code>a</code> 元素.';
$string['pluginname'] = '学习分析';
$string['privacy:metadata'] = '此插件不存储任何个人数据。';
$string['sessions'] = '会话';
$string['setting_course_ids_description'] = '当您选择上述第二个选项时，使用这个选项来决定哪些课程的用户界面应该被启用。';
$string['setting_dashboard_boxes'] = '确定控制面板中显示的框、顺序以及框的大小。规范的格式为<code>reportname:width</code>，以逗号分隔。一条线的最大宽度为12，在此之后它将断开。示例：<code>learners:8,activities:4</code>在控制面板中显示两个框，其中第一个框比第二个框宽得多。在大多数情况下，仅当安装了其他子插件时才需要更改该值。';
$string['setting_status_course_customfield'] = '向课程设置中添加选项，以便教师可以自行启用';
$string['setting_status_description'] = '这个值设置是否激活用户界面，以及是否应该在导航中显示链接。默认情况下，如果课程启用了日志记录，则链接和页面是可见的。如果您想在所有课程中启用日志记录，但只想在特定课程中启用用户界面，您可以使用这个选项。';
$string['setting_status_option_disable'] = '隐藏导航链接并禁用所有课程的页面';
$string['setting_status_option_show_always'] = '显示所有课程的导航链接，即使该课程已禁用日志记录（仅当您之前已记录数据时才启用此功能）';
$string['setting_status_option_show_courseids'] = '如果下面通过课程ID指定了课程，则显示导航链接';
$string['setting_status_option_show_if_enabled'] = '如果为课程启用了日志记录，则显示导航链接';
$string['setting_student_enrols_groupby_description'] = '此选项定义在“上一个/并行课程”页面中合并的课程以及用于显示名称的值。';
$string['setting_student_rolenames_description'] = '如果课程中学生/用户的角色不是<code>学生</code>，则可以指定相应的角色名称。如果学生有多个角色，请使用一个逗号。示例：<code>学生，客户角色</code>';
$string['show_full_list'] = '展开列表';
$string['subplugintype_lalog'] = '学习分析日志';
$string['subplugintype_lalog_plural'] = '学习分析日志';
$string['subplugintype_lareport'] = '学习分析报告';
$string['subplugintype_lareport_plural'] = '学习分析报告';
$string['tour_activities'] = '最后一个视图显示了过去7天中使用最多的三项活动。

通过单击链接，您可以查看课程活动的详细信息。';
$string['tour_box_hits'] = '该指标显示过去7天内的操作数。下面您可以看到过去7天的变化。

通过点击链接，您可以打开一个热图，它直观地显示了整个学期的操作数。';
$string['tour_box_learners'] = '第一个指标显示了参与者的总数。在大数字下方，显示了与前一周相比的变化。';
$string['tour_box_quiz_assign'] = '这显示了过去7天的测验次数和作业提交次数。下面，又显示了与前7天相比的变化。

通过点击链接，您可以查看本课程的测验和作业的详细信息。';
$string['tour_dashboard_boxes'] = '在底部区域显示了课程的重要关键数字。

此外，每个框都包含一个链接，通过该链接可以获得更多信息。';
$string['tour_dashboard_graph'] = '该图显示了相应周内所有操作的数量。

如果是正在运行的课程课程，则本周的开始用虚线标记。不显示当前周的编号。';
$string['tour_more_information'] = '互动式导览已完成。我们希望能给您一个很好的功能概述。

有关常见问题的更多解答，请参见“帮助”页面。';
$string['tour_title'] = '学习分析';
