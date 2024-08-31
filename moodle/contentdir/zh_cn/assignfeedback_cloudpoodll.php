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
 * Strings for component 'assignfeedback_cloudpoodll', language 'zh_cn', version '4.3'.
 *
 * @package     assignfeedback_cloudpoodll
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['apisecret'] = 'Poodll API密钥';
$string['apisecret_details'] = 'Poodll API密钥，请参见 <a href= "https://support.poodll.com/support/solutions/articles/19000083076-cloud-poodll-api-secret">此处</a>查看更多详细信息';
$string['apiuser'] = 'Poodll API用户';
$string['apiuser_details'] = '授权此网站上关于Poodll的Poodll帐户用户名。';
$string['appauthorised'] = '已为此网站授权分配反馈云Poodll。';
$string['appnotauthorised'] = '此站点未授权分配反馈云Poodll。';
$string['awsregion'] = 'AWS地区';
$string['clicktohide'] = '隐藏当前反馈';
$string['clicktoshow'] = '显示当前反馈';
$string['cloudpoodll:use'] = '允许使用云Poodll反馈';
$string['credentialsinvalid'] = '无法使用输入的API用户和密钥获取访问权限。请检查一下。';
$string['currentfeedback'] = '当前反馈';
$string['customname'] = '当前名称';
$string['customnamedetails'] = '设置插件的自定义名称（不是“反馈记录器”），如插件内所示';
$string['default'] = '默认启用';
$string['default_help'] = '如果设置，默认情况下，将为所有新工作分配启用此反馈方法。';
$string['defaultplayertype'] = '成绩单显示（教师）';
$string['defaultplayertypedetails'] = '如果您正在转录或不显示转录本，请使用交互式或静态转录本播放器';
$string['defaultplayertypestudent'] = '成绩单显示（学生）';
$string['defaultrecorder'] = '记录器类型';
$string['deletefeedback'] = '删除这个反馈';
$string['displayaudioplayerlist'] = '显示音频播放器(列表的)';
$string['displayaudioplayersingle'] = '显示音频播放器(常规的)';
$string['displaysizelist'] = '视频播放器尺寸(在列表中)';
$string['displaysizesingle'] = '视频播放器尺寸(常规)';
$string['enabled'] = '云Poodll反馈';
$string['enabled_help'] = '如果启用，标记可以为每次提交留下反馈Cloud poodll。';
$string['enabletranscode'] = '启用转码';
$string['enabletranscode_details'] = 'Cloud Poodll可以将录制内容转换为mp3/mp4';
$string['enabletranscription'] = '启用转录';
$string['enabletranscription_details'] = '如果需要，Cloud Poodll可以转录学生讲话';
$string['expiredays'] = '保存文件的天数';
$string['fallback'] = '非HTML5反馈';
$string['fallbackdetails'] = '如果浏览器不支持所选媒体类型的HTML5录制，请返回上载屏幕或警告。';
$string['fallbackiosupload'] = 'iOS：上传，否则警告';
$string['fallbackupload'] = '上传';
$string['fallbackwarning'] = '警告';
$string['fillcredentials'] = '使用现有凭据设置API用户和密钥';
$string['forever'] = '永不过期';
$string['freetrial'] = '获取Cloud Poodll API凭据和免费试用';
$string['freetrial_desc'] = '应该出现一个对话框，允许您注册Poodll免费试用版。注册后，您应该登录到成员仪表板以获取API用户和密码。并注册您的网站URL。';
$string['language'] = '说话人语言';
$string['noapisecret'] = '未输入API密钥。此插件无法正常工作。';
$string['noapiuser'] = '未输入API用密钥。此插件无法正常工作。';
$string['nocredentials'] = '未输入API用户和密码。请在 <a href="{$a}">设置页面</a>中输入它们。 您可以从<a href="https://poodll.com/member">Poodll.com.</a>找到它。';
$string['nosubscriptions'] = '此网站/插件当前没有订阅。';
$string['notokenincache'] = '刷新以查看许可证信息。如果有问题，请联系Poodll支持。';
$string['novalidcredentials'] = 'API用户和密钥被拒绝，无法访问。请在<a href="{$a}">设置页面.</a>上检查它们， 您可以从<a href=“https://poodll.com/member“>Poodll.com</a>找到它。';
$string['playertype'] = '成绩单显示（教师）';
$string['playertypedefault'] = '没有成绩单。';
$string['playertypeinteractivetranscript'] = '交互式成绩单';
$string['playertypestandardtranscript'] = '静态成绩单';
$string['playertypestudent'] = '成绩单显示（学生）';
$string['pluginname'] = 'Cloud Poodll反馈';
$string['privacy:commentpath'] = 'Cloud Poodll反馈';
$string['privacy:metadata:assignmentid'] = '分配ID标识符';
$string['privacy:metadata:cloudpoodllcom'] = 'assignfeedback_cloudpoodll 插件通过cloud.poodll.com.录制存储在AWS S3存储。';
$string['privacy:metadata:cloudpoodllcom:userid'] = 'assignfeedback_cloudpoodll 插件在录制的URL中包含moodle用户ID。';
$string['privacy:metadata:commentpurpose'] = '注释文本。';
$string['privacy:metadata:feedbackpurpose'] = '链接到用户反馈的反馈ID。';
$string['privacy:metadata:filepurpose'] = '已提交录制的文件URL。';
$string['privacy:metadata:fulltranscriptpurpose'] = '此分配尝试的包含元数据的成绩单。';
$string['privacy:metadata:gradepurpose'] = '与注释关联的等级ID。';
$string['privacy:metadata:tablepurpose'] = '存储为每次尝试提供反馈的文本和URL。';
$string['privacy:metadata:tablesummary'] = '这将存储评分员制作的cloudpoodll，作为学生提交的反馈。';
$string['privacy:metadata:transcriptpurpose'] = '本次任务尝试的成绩单。';
$string['privacy:metadata:vttpurpose'] = '本次作业的字幕呈现。';
$string['privacy:path'] = '反馈文本';
$string['reallydeletefeedback'] = '真的要删除此反馈吗？';
$string['recorderaudio'] = '音频记录器';
$string['recorderdisplayname'] = '反馈记录器';
$string['recorderskin'] = '记录器外观';
$string['recordertype'] = '记录器类型';
$string['recordervideo'] = '视频记录器';
$string['refreshtoken'] = '刷新许可证信息';
$string['setting_audio_heading'] = '音频播放器设置';
$string['setting_audio_heading_details'] = '在反馈审查和列表页面中控制播放器外观的设置';
$string['setting_video_heading'] = '视频播放器设置';
$string['setting_video_heading_details'] = '在反馈审查和列表页面中控制播放器外观的设置';
$string['shownovideo'] = '不显示视频';
$string['skin123'] = '1 2 3';
$string['skinonce'] = '一次';
$string['skinplain'] = '平铺';
$string['skinscreen'] = '屏幕记录器(视频)';
$string['skinupload'] = '上传';
$string['timelimit'] = '记录时间限制';
$string['transcribergooglecloud'] = '快速转录（仅限短音频）';
$string['transcribernone'] = '不转录';
$string['transcripttitle'] = '成绩单';
