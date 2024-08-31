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
 * Strings for component 'assignsubmission_babelium', language 'zh_cn', version '4.3'.
 *
 * @package     assignsubmission_babelium
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['accesskey'] = 'Babelium访问密钥';
$string['accesskey_help'] = '一个唯一的密钥，用于标识针对Babelium服务器的所有RPC-API请求';
$string['apidomain'] = 'Babelium API域';
$string['apidomain_help'] = 'RPC-API的域，允许我们访问存储在Babelium服务器中的数据';
$string['apiendpoint'] = 'Babelium API端点';
$string['apiendpoint_help'] = 'RPC-API域中用于管理所有调用的位置';
$string['babelium'] = 'Babelium提交';
$string['babeliumApiErrorCode200'] = 'Babelium错误200。格式错误的响应';
$string['babeliumApiErrorCode400'] = 'Babelium错误400。格式错误的请求';
$string['babeliumApiErrorCode403'] = 'Babelium错误403。错误的授权凭据';
$string['babeliumApiErrorCode404'] = 'Babelium错误404。找不到方法。无效参数';
$string['babeliumApiErrorCode500'] = 'Babelium错误500。内部服务器错误';
$string['babeliumAvailableRecordableExercises'] = 'Babelium练习';
$string['babeliumAvailableRecordableExercises_help'] = '选择您希望分配给学生的练习，以供日后评估';
$string['babeliumChooseRecMethod'] = '选择记录方法';
$string['babeliumChooseRole'] = '选择一个角色';
$string['babeliumChooseSubLang'] = '选择字幕语言';
$string['babeliumErrorConfigParameters'] = 'Babelium配置参数没有设置';
$string['babeliumMicOnly'] = '仅麦克风';
$string['babeliumNoExerciseAvailable'] = '没有有效的练习';
$string['babeliumRecordAgain'] = '再次录制';
$string['babeliumStartRecording'] = '开始记录';
$string['babeliumStopRecording'] = '停止记录';
$string['babeliumViewExercise'] = '观看练习';
$string['babeliumViewRecording'] = '观看记录';
$string['babeliumWebcamMic'] = '摄像头和麦克风';
$string['default'] = '默认启用';
$string['default_help'] = '如果已设置，则默认情况下将为所有新工作分配启用此提交方法。';
$string['enabled'] = 'Babelium提交';
$string['enabled_help'] = '如果启用，学生可以将视频响应保存为提交内容。';
$string['forcertmpt'] = '强制RTMPT';
$string['forcertmpt_help'] = '启用此选项将强制播放器在默认情况下使用RTMPT（封装的RTMP）。否则，播放器首先尝试使用RTMP端口连接（1935）';
$string['loginfo'] = '提交响应ID: {$a->responseid}, responseHash: {$a->responsehash}';
$string['pluginname'] = 'Babelium提交';
$string['responsehashnotset'] = '您正试图提交一个空提交。请检查您提交的内容，然后重试。';
$string['secretaccesskey'] = 'Babelium秘密访问密钥';
$string['secretaccesskey_help'] = '用于验证身份的密钥。永远不应该放在清除用户代理脚本中';
$string['serverdomain'] = 'Babelium服务器域';
$string['serverdomain_help'] = '存储资源的Babelium服务器的域';
$string['serverport'] = 'Babelium服务端口';
$string['serverport_help'] = 'Babelium服务端口';
