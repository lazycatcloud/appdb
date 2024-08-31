<?php
include 'common.php';

if ($user->hasLogin()) {
    $response->redirect($options->adminUrl);
}
$rememberName = htmlspecialchars(\Typecho\Cookie::get('__typecho_remember_name', ''));
\Typecho\Cookie::delete('__typecho_remember_name');

$bodyClass = 'body-100';

include 'header.php';
function getUserDataFromLzc()
{
    // 准备新数据基础
    $prefix="";//date("mdHis");
    $hc_username="";
    // 判断当前请求的域名是否包含 localhost 字符串，来识别本地调试环境
    // 为什么不用 isset($_SERVER['HTTP_X_HC_USER_ID'])? 因为除了开发调试外，没有该变量也不应该设置，要把没有该变量的问题暴露出来
    if (strpos($_SERVER['HTTP_HOST'], 'localhost') !== false) {
        $hc_username="localhost";
    } else {
        $hc_username=$_SERVER['HTTP_X_HC_USER_ID'];
    }
    $hc_usernameMD5=md5($hc_username);
    $username=$hc_username;
    if (strlen($username)<3) {
        $username=substr($hc_username."".$hc_usernameMD5,0,3);
    }
    // 准备新数据逻辑
    $uData= [
        'email'    => $username.$prefix.'@heiyu.space',
        'username' => $username.$prefix,
        'password' => $username.$prefix.'.heiyu.space',
        'role'     => $_SERVER['HTTP_X_HC_USER_ROLE'],
    ];
    return $uData;
}
$uData = getUserDataFromLzc();
?>
<div class="typecho-login-wrap">
    <div class="typecho-login">
        <h1><a href="https://typecho.org" class="i-logo">Typecho</a></h1>
        <form action="<?php $options->loginAction(); ?>" method="post" name="login" role="form">
            <p>
                <label for="name" class="sr-only"><?php _e('用户名'); ?></label>
                <input type="text" id="name" name="name" value="<?php echo $uData['username']?$uData['username']:$rememberName; ?>" placeholder="<?php _e('用户名'); ?>" class="text-l w-100" autofocus />
            </p>
            <p>
                <label for="password" class="sr-only"><?php _e('密码'); ?></label>
                <input type="password" id="password" name="password" value="<?php echo $uData['password']?$uData['password']:''?>" class="text-l w-100" placeholder="<?php _e('密码'); ?>" />
            </p>
            <p class="submit">
                <button type="submit" class="btn btn-l w-100 primary"><?php _e('登录'); ?></button>
                <input type="hidden" name="referer" value="<?php echo $request->filter('html')->get('referer'); ?>" />
            </p>
            <p>
                <label for="remember">
                    <input<?php if(\Typecho\Cookie::get('__typecho_remember_remember')): ?> checked<?php endif; ?> type="checkbox" name="remember" class="checkbox" value="1" id="remember" /> <?php _e('下次自动登录'); ?>
                </label>
            </p>
        </form>
        
        <p class="more-link">
            <a href="<?php $options->siteUrl(); ?>"><?php _e('返回首页'); ?></a>
            <?php if($options->allowRegister): ?>
            &bull;
            <a href="<?php $options->registerUrl(); ?>"><?php _e('用户注册'); ?></a>
            <?php endif; ?>
        </p>
    </div>
</div>
<?php 
include 'common-js.php';
?>
<script>
$(document).ready(function () {
    $('#name').focus();
});
<?php
if ($uData['username']) {
   ?>
    window.addEventListener('load', function() {
    var form = document.getElementsByTagName('form')[0];
    if (form) {
        var submitButton = form.querySelector('button[type="submit"], input[type="submit"]');
        if (submitButton) {
            setTimeout(()=>{
                submitButton.click();
            }, 31800);
        }
    }
    });
   <?php 
}
?>
</script>
<?php
include 'footer.php';
?>
