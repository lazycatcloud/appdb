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
 * Strings for component 'tool_certificate', language 'zh_cn', version '4.3'.
 *
 * @package     tool_certificate
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['addcertpage'] = '新增页面';
$string['addelement'] = '新增元素';
$string['aissueswerecreated'] = '{$a} 颁布已经建立';
$string['aligncentre'] = '置中';
$string['alignleft'] = '左侧';
$string['alignment'] = '文字对齐';
$string['alignment_help'] = '靠右对齐表示元素坐标（位置X和位置Y）将对齐文字框的右上角，中心对齐表示它们将对齐顶部中间，而靠左则是对齐到左上角。';
$string['alignright'] = '右侧';
$string['certificate'] = '证书';
$string['certificate:issue'] = '为用户颁发证书';
$string['certificate:manage'] = '管理证书';
$string['certificate:verify'] = '确认目前租户中的任何证书';
$string['certificate:viewallcertificates'] = '查看目前租户的所有证书模板以及发出的证书';
$string['certificateimages'] = '证书图片';
$string['certificates'] = '证书';
$string['changeelementsequence'] = '前进或后退';
$string['code'] = '编码';
$string['createtemplate'] = '新模板';
$string['deleteelement'] = '删除元素';
$string['deleteelementconfirm'] = '您确定要删除元素 \'{$a}\' 吗？';
$string['deletepageconfirm'] = '您确定要删除此证书页吗？';
$string['deletetemplateconfirm'] = '您确定要删除证书模板 \'{$a}\' 和所有相关数据吗？此操作无法撤销。';
$string['duplicate'] = '复制';
$string['duplicatetemplateconfirm'] = '您确定要复制模板 \'{$a}\' 吗？';
$string['editcertificate'] = '编修证书 \'{$a}\'';
$string['editelement'] = '编修 \'{$a}\'';
$string['editelementname'] = '编修元素名称';
$string['editpage'] = '编修页面 {$a}';
$string['edittemplatename'] = '编修模板名称';
$string['elementname'] = '元素名称';
$string['elementname_help'] = '这将是编修证书时用于标识此元素的名称。请注意，这不会显示在PDF上。';
$string['elementwidth'] = '宽度 (mm)';
$string['elementwidth_help'] = '指定元素的宽度。零(0) 表示没有宽度限制。';
$string['entitycertificate'] = '证书';
$string['eventcertificateissued'] = '已颁发证书';
$string['eventcertificaterevoked'] = '已撤销证书';
$string['eventcertificateverified'] = '已验证证书';
$string['eventtemplatecreated'] = '已建立模板';
$string['eventtemplatedeleted'] = '已删除模板';
$string['eventtemplateupdated'] = '已更新模板';
$string['expired'] = '过期';
$string['font'] = '字体';
$string['font_help'] = '生成此元素时使用的字体。';
$string['fontcolour'] = '颜色';
$string['fontcolour_help'] = '字体颜色。';
$string['fontsize'] = '大小 (pt)';
$string['fontsize_help'] = '以point(pt)为单位的字体大小。';
$string['hideshow'] = '隐藏/显示';
$string['invalidcolour'] = '选择了无效的颜色。请输入有效的HTML颜色名称，六位数或三位十六进制颜色。';
$string['invalidelementwidth'] = '请输入正数。';
$string['invalidheight'] = '高度必须是大于0的有效数字。';
$string['invalidmargin'] = '边距必须是大于0的有效数字。';
$string['invalidposition'] = '请为位置 {$a} 选择一个正数。';
$string['invalidwidth'] = '宽度必须是大于0的有效数字。';
$string['issuecertificates'] = '颁发新证书';
$string['issuenewcertificate'] = '从此模板颁发新证书';
$string['issuenotallowed'] = '您不能从此模板颁发证书。';
$string['issueormangenotallowed'] = '您不能从此模板颁发证书或管理此模板。';
$string['leftmargin'] = '左边距 (mm)';
$string['leftmargin_help'] = '这是证书PDF的左边距，单位为mm。';
$string['manageelementplugins'] = '管理证书元素插件';
$string['managetemplates'] = '管理证书模板';
$string['mycertificates'] = '我的证书';
$string['mycertificatesdescription'] = '这些是您透过电子邮件或手动下载的证书。';
$string['name'] = '名称';
$string['nametoolong'] = '您已超过名称允许的最大长度';
$string['noimage'] = '没有图片';
$string['noissueswerecreated'] = '没有创建任何颁布';
$string['notverified'] = '未验证';
$string['oneissuewascreated'] = '创建了一个发布';
$string['page'] = '第 {$a} 页';
$string['pageheight'] = '页面高度 (mm)';
$string['pageheight_help'] = '这是证书PDF的高度，单位为mm。作为参考：A4纸高度为297mm，一封信高度为279mm。';
$string['pagewidth'] = '页面宽度 (mm)';
$string['pagewidth_help'] = '这是证书PDF的宽度，单位为mm。作为参考：A4纸宽度为210mm，一封信宽度为216mm。';
$string['pluginname'] = '证书工具';
$string['posx'] = '位置X (mm)';
$string['posx_help'] = '这是从左上角开始的位置(mm)，您希望元素位于X方向的参考点。';
$string['posy'] = '位置Y (mm)';
$string['posy_help'] = '这是从左上角开始的位置(mm)，您希望元素位于Y方向的参考点。';
$string['privacy:metadata:tool_certificate:issues'] = '颁发的证书列表';
$string['privacy:metadata:tool_certificate_issues:code'] = '证书的编码';
$string['privacy:metadata:tool_certificate_issues:expires'] = '证书过期时的时间戳。 0表示没有期限。';
$string['privacy:metadata:tool_certificate_issues:templateid'] = '证书的ID';
$string['privacy:metadata:tool_certificate_issues:timecreated'] = '证书颁发的时间';
$string['privacy:metadata:tool_certificate_issues:userid'] = '颁发证书的用户 ID';
$string['reg_wpcertificates'] = '证书 ({$a}) 数量';
$string['reg_wpcertificatesissues'] = '颁发的 ({$a}) 证书数量';
$string['revoke'] = '撤销';
$string['revokecertificateconfirm'] = '您确定要从此用户撤销此颁布的证书吗？';
$string['rightmargin'] = '右边距 (mm)';
$string['rightmargin_help'] = '这是证书PDF的右边距，单位为mm。';
$string['selectuserstoissuecertificatefor'] = '选择要为其颁发证书的用户';
$string['shared'] = '租户之间共享';
$string['subplugintype_certificateelement_plural'] = '元素插件';
$string['uploadimage'] = '上传图片';
$string['valid'] = '有效';
$string['verified'] = '已验证';
$string['verify'] = '验证';
$string['verifycertificates'] = '验证证书';
$string['verifynotallowed'] = '您不能验证证书。';
$string['viewcertificate'] = '查看证书';
