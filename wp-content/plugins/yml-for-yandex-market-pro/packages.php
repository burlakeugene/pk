<?php if (!defined('ABSPATH')) {exit;}
require_once plugin_dir_path(__FILE__).'/functions.php'; // Подключаем файл функций
require_once plugin_dir_path(__FILE__).'/export.php'; // Подключаем файл функций

require_once plugin_dir_path(__FILE__).'/classes/system/class-yfymp.php';

if (!class_exists('WP_List_Table')) {
	require_once(ABSPATH . 'wp-admin/includes/class-wp-list-table.php');
}
require_once plugin_dir_path(__FILE__).'/classes/system/class-yfymp-settings-constructor-params-wp-list-table.php';