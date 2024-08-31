<?php
/*
Plugin Name: Auto Login on X-HC-User-ID
Description: Automatically logs in the admin user if X-HC-User-ID exists
*/

// function auto_login_on_xhc_user_id() {
//     if ( isset( $_SERVER['HTTP_X_HC_USER_ID'] ) ) {
//         $user = get_user_by( 'login', 'admin' );
//         wp_set_current_user( $user->ID );
//         wp_set_auth_cookie( $user->ID );
//         do_action( 'wp_login', $user->user_login, $user );
//     }
// }
// add_action( 'init', 'auto_login_on_xhc_user_id' );

function auto_login() {
  // 如果当前页面不是 wp-login.php，则退出
  if (basename($_SERVER['PHP_SELF']) !== 'wp-login.php') {
    return;
  }

  if ( isset( $_SERVER['HTTP_X_HC_USER_ID'] ) ) {
  // 添加 JavaScript 代码
  ?>
  <script>
    window.addEventListener('load', function() {
      // 查找用户名和密码输入框
      const usernameInput = document.querySelector('#user_login');
      const passwordInput = document.querySelector('#user_pass');

      // 如果两个输入框都存在，则填充值并提交表单
      if (usernameInput && passwordInput) {
        usernameInput.value = 'admin';
        passwordInput.value = 'admin';
        document.querySelector('#wp-submit').click();
      }
    });
  </script>
  <?php
  }
}

add_action('login_head', 'auto_login');