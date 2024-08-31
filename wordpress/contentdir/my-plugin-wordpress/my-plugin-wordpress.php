<?php
/*
Plugin Name: My Plugin
Plugin URI: https://www.example.com/my-plugin/
Description: This is my first WordPress plugin.
Version: 1.0.0
Author: Your Name
Author URI: https://www.example.com/
License: GPL2
*/

// 在后台通知区域显示启用提示
add_action( 'admin_notices', 'my_plugin_activation_notice' );
function my_plugin_activation_notice() {
    ?>
    <div class="notice notice-success is-dismissible">
        <p><?php _e( 'My Plugin 已启用！', 'my-plugin' ); ?></p>
    </div>
    <?php
}

// 在前端控制台中输出启用提示
add_action( 'wp_enqueue_scripts', 'my_plugin_enqueue_scripts' );
function my_plugin_enqueue_scripts() {
    wp_enqueue_script( 'my-plugin', plugin_dir_url( __FILE__ ) . 'my-plugin.js', array(), '1.0.0', true );
    wp_localize_script( 'my-plugin', 'my_plugin_data', array(
        'message' => 'My Plugin 已启用！'
    ) );
}