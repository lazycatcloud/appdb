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
 * Strings for component 'antivirus_savdi', language 'zh_cn', version '4.3'.
 *
 * @package     antivirus_savdi
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['checkconnectivity'] = 'SAVDI连接';
$string['checkconnectivityfalsepositive'] = '测试扫描呈假阳性。';
$string['checkconnectivitynoconfig'] = '未配置SAVDI守护程序。';
$string['checkconnectivitynomethods'] = '扫描器通信成功，但未启用任何扫描方法。';
$string['checkconnectivityok'] = '扫描器测试成功';
$string['checkconnectivityscandataerror'] = 'SCANDATA测试错误：{$a}。';
$string['checkconnectivityscanfileerror'] = 'SCANFILE测试错误：{$a}。';
$string['checkconnectivitytmpfileerror'] = '扫描器通信成功，但无法创建测试文件。';
$string['chmodscanfile'] = '更改扫描文件权限';
$string['chmodscanfiledescr'] = '启用此选项可将要扫描的文件的权限临时更改为世界可读(world-readable)。当扫描器守护程序位于web服务器本地，但扫描器进程无法读取要扫描的文件时，此功能非常有用。如果扫描程序守护程序是远程的，则不需要。';
$string['clientresult1'] = '发现病毒';
$string['clientresult2'] = '出错';
$string['clientresult3'] = '不支持请求';
$string['clientresult4'] = '数据太多';
$string['connretry'] = '重试连接';
$string['connretrydesc'] = '如果与SAVDI的连接失败，将重试多次连接尝试。';
$string['conntcp'] = 'TCP/IP 主机:端口';
$string['conntype'] = '通过以下方式连接到SAVDI守护程序';
$string['conntypedescr'] = '如果SAVDI守护程序是web服务器的本地守护程序，并且可以读取web服务器创建的文件，请确保守护程序支持“SCANFILE”请求类型，并禁用*SAVDI守护程序是远程*选项。

如果SAVDI守护程序对web服务器是远程的，或者是本地的，但无法读取web服务器创建的文件，请确保守护程序支持“SCANDATA”请求类型，并启用*SAVDI守护程序是远程的*选项。';
$string['conntypetcp'] = 'TCP/IP连接';
$string['conntypeunix'] = 'Unix域套接字';
$string['connunix'] = 'Unix域套接字路径';
$string['daemonerroractlikevirus'] = '将文件视为已感染';
$string['daemonerrordonothing'] = '将文件视为OK';
$string['errorcantopentcpsocket'] = '连接到TCP套接字导致错误{$a}';
$string['errorcantopenunixsocket'] = '连接到Unix域套接字导致错误{$a}';
$string['errorfileopen'] = '打开文件{$a}时出错';
$string['errorgeneral'] = 'SAVDI 扫描器说：{$a}';
$string['errorprotocol'] = 'SAVDI 协议错误：{$a}';
$string['errorrejected'] = 'SAVDI 服务拒绝这个请求：{$a}';
$string['errorsenddatashort'] = '发送的数据短于预期';
$string['errorsenddatatoobig'] = '数据大小超过SAVDI服务器{$a}字节的限制';
$string['errorservernotsupported'] = 'SAVDI服务器不支持类型{$a}请求';
$string['ondaemonerror'] = '扫描程序守护程序错误';
$string['ondaemonerrordescr'] = '遇到连接或扫描仪错误时要采取的操作。';
$string['pluginname'] = 'Sophos SAVDI杀毒软件';
$string['privacy:metadata'] = 'Sophos SAVDI防病毒插件不存储任何个人数据。';
$string['scannerisremote'] = 'SAVDI守护程序是远程的';
$string['scannerisremotedescr'] = '启用此选项可防止SAVDI守护程序直接读取文件，而不是通过网络连接将要扫描的数据复制到守护程序。SAVDI守护程序必须支持“Scanda”请求类型，并且其“MaxScanda”设置必须设置为足以容纳预期内容。';
$string['testclient'] = '测试Sophos-SAVDI连接';
$string['testclient_info'] = '<a href="{$a}">使用此连接测试工具检查与已配置的SAVDI守护程序的通信是否正常工作。要测试SAVDI是否能够正确扫描病毒，请将文件上载到课程或“私人文件”存储库。对于良性阳性病毒反应测试，请调查 <a href="https://zh.wikipedia.org/wiki/EICAR%E6%A0%87%E5%87%86%E5%8F%8D%E7%97%85%E6%AF%92%E6%B5%8B%E8%AF%95%E6%96%87%E4%BB%B6">EICAR标准反病毒测试文件</a>.';
$string['testclienthasscandata'] = '支持SCANDATA请求';
$string['testclienthasscandir'] = '支持SCANDIR请求';
$string['testclienthasscandirr'] = '支持SCANDIRR请求';
$string['testclienthasscanfile'] = '支持SCANFILE请求';
$string['testclientmaxscandata'] = '最大SCANDATA请求尺寸';
$string['testclientresult'] = '连接结果';
$string['testclientscandataresult'] = 'SCANDATA请求结果';
$string['testclientscanfileresult'] = 'SCANFILE请求结果';
$string['testclientscantest'] = '上传以下文件以测试SCANFILE和SCANDATA请求类型。如果扫描器是远程的，则只使用SCANDATA。';
$string['testclientscantestpath'] = '上传的临时文件';
$string['testclientscanuploaderror'] = '文件上传错误：{$a}。';
$string['testclientscanuploaderrornotrecognised'] = 'HP文件上传错误：{$a}未被识别为上传的文件。';
$string['testclientuploadandscan'] = '上传并扫描文件';
$string['testclientversion'] = '扫描器版本';
$string['warngeneral'] = 'SAVDI扫描器说：{$a}';
$string['warnprotocol'] = 'SAVDI 协议警告：{$a}';
