<?php if (!defined('ABSPATH')) {exit;}
/**
* Plugin Name: Yml for Yandex Market Pro
* Plugin URI: https://icopydoc.ru/category/documentation/yml-for-yandex-market/
* Description: Расширение для плагина Yml for Yandex Market!
* Version: 4.5.1
* Requires at least: 4.5
* Requires PHP: 7.3.0
* Author: Maxim Glazunov
* Author URI: https://icopydoc.ru
* License: GPL v2 or later
* License URI: https://www.gnu.org/licenses/gpl-2.0.html
* Text Domain: yfymp
* Domain Path: /languages
* Tags: yml, yandex, market, export, woocommerce
* WC requires at least: 3.0.0
* WC tested up to: 7.3.0
*
* This program is free software; you can redistribute it and/or modify it under the terms of the GNU
* General Public License version 2, as published by the Free Software Foundation. You may NOT assume
* that you can use any other version of the GPL.
*
* This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
* even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
* 
* Copyright 2018-2023 (Author emails: djdiplomat@yandex.ru, support@icopydoc.ru)
*/ 
define('YFYMP_MIN_VER', '3.7.0');

/* для совместимости со старыми версиями базовой */		
define('yfymp_DIR', plugin_dir_path(__FILE__)); // yfymp_DIR contains /home/p135/www/site.ru/wp-content/plugins/myplagin/
define('yfymp_URL', plugin_dir_url(__FILE__)); // yfymp_URL contains http://site.ru/wp-content/plugins/myplagin/
define('yfymp_APIURL', 'https://icopydoc.ru/serv');
define('yfymp_SLUG', basename(dirname(__FILE__))); // псевдоним плагина (например: sam-pro-lite)
define('yfymp_PLUGIN_SLUG', plugin_basename(__FILE__)); // полный псевдоним плагина (папка плагина + имя главного файла, например: sam-pro-lite/sam-pro-lite.php)	
define('yfymp_VER', '4.5.1');
define('yfymp_yfym_MIN_VER', '3.7.0');
/* end для совместимости со старыми версиями базовой */	

$nr = false;
// Check php version
if (version_compare(phpversion(), '7.1.0', '<')) { // не совпали версии
	add_action('admin_notices', function() {
		warning_notice('notice notice-error', 
			sprintf(
				'<strong style="font-weight: 700;">YML for Yandex Market PRO</strong> %1$s 7.1.0 %2$s %3$s',
				__('plugin requires a php version of at least', 'yfymp'),
				__('You have the version installed', 'yfymp'),
				phpversion()
			)
		);
	});
	$nr = true;
}

// Check if WooCommerce is active
$plugin = 'woocommerce/woocommerce.php';
if (!in_array($plugin, apply_filters('active_plugins', get_option('active_plugins', array()))) 
	&& !(is_multisite() 
	&& array_key_exists($plugin, get_site_option('active_sitewide_plugins', array())))
	) {
	add_action('admin_notices', function() {
		warning_notice(
			'notice notice-error', 
			sprintf(
				'<strong style="font-weight: 700;">YML for Yandex Market PRO</strong> %1$s',
				__('requires WooCommerce installed and activated', 'yfymp')
			)	
		);
	});
	$nr = true;
}

// Check if YML for Yandex Market is active
$plugin = 'yml-for-yandex-market/yml-for-yandex-market.php';
if (!in_array($plugin, apply_filters('active_plugins', get_option('active_plugins', array()))) 
	&& !(is_multisite() 
	&& array_key_exists($plugin, get_site_option('active_sitewide_plugins', array())))
	) {
	add_action('admin_notices', function() {
		warning_notice(
			'notice notice-error', 
			sprintf(
				'<strong style="font-weight: 700;">YML for Yandex Market PRO</strong> %1$s %2$s %3$s',
				__('it is required that', 'yfymp'),
				'<a href="https://wordpress.org/plugins/yml-for-yandex-market/">YML for Yandex Market</a>',
				__('to be installed and activated', 'yfymp')
			)	
		);
	});
	$nr = true;
} else { // and checking the minimum version of the basic plugin
	$basic_plugin_file = plugin_dir_path( __DIR__ ).$plugin; // /home/www/site.ru/wp-content/plugins/yml-for-yandex-market/yml-for-yandex-market.php';
	$get_from_headers_arr = array('ver' => 'Version', 'name' => 'Plugin Name');
	$basic_plugin_data = get_file_data($basic_plugin_file, $get_from_headers_arr);
	define('YFYMP_BASIC_PLUGIN_VERSION', $basic_plugin_data['ver']);
	if (version_compare(YFYMP_BASIC_PLUGIN_VERSION, YFYMP_MIN_VER, '<')) {
		add_action('admin_notices', function() {
			warning_notice(
				'notice notice-error', 
				sprintf('<span style="font-weight: 700;">%1$s Pro</span> %2$s <a href="%6$s">%1$s</a> (v.%3$s %4$s). %5$s %1$s',
					'YML for Yandex Market',
					__('requires', 'yfymp'),
					YFYMP_MIN_VER,
					__('or later', 'yfymp'),
					__('Please update the plugin', 'yfymp'),
					'https://wordpress.org/plugins/yml-for-yandex-market/'
				)	
			);
		});
		$nr = true;
	} else {
		$nr = apply_filters('yfymp_f_nrv', $nr, ['basic_plugin_data' => $basic_plugin_data]);
	}
	unset($get_from_headers_arr);
	unset($basic_plugin_data);
}
// end Check if YML for Yandex Market is active

/**
 * @since	0.1.0
 * 
 * @return	string/nothing
 * 
 * Display a notice in the admin Plugins page. Usually used in a @hook 'admin_notices'
 */
if (!function_exists('warning_notice')) {
	function warning_notice($class = 'notice', $message = '') {
		printf('<div class="%1$s"><p>%2$s</p></div>', $class, $message);
	}
}

// Define constants
$upload_dir = wp_get_upload_dir();
define('YFYMP_SITE_UPLOADS_URL', $upload_dir['baseurl']); // http://site.ru/wp-content/uploads
define('YFYMP_SITE_UPLOADS_DIR_PATH', $upload_dir['basedir']); // /home/site.ru/public_html/wp-content/uploads

define('YFYMP_PLUGIN_VERSION', '4.5.1'); // 1.0.0
define('YFYMP_PLUGIN_UPLOADS_DIR_URL', $upload_dir['baseurl'].'/yfym'); // http://site.ru/wp-content/uploads/yfym
define('YFYMP_PLUGIN_UPLOADS_DIR_PATH', $upload_dir['basedir'].'/yfym'); // /home/site.ru/public_html/wp-content/uploads/yfym
define('YFYMP_PLUGIN_DIR_URL', plugin_dir_url(__FILE__)); // http://site.ru/wp-content/plugins/yml-for-yandex-market-pro/
define('YFYMP_PLUGIN_DIR_PATH', plugin_dir_path(__FILE__)); // /home/p135/www/site.ru/wp-content/plugins/yml-for-yandex-market-pro/
define('YFYMP_PLUGIN_MAIN_FILE_PATH', __FILE__); // /home/p135/www/site.ru/wp-content/plugins/yml-for-yandex-market-pro/yml-for-yandex-market-pro.php
define('YFYMP_PLUGIN_SLUG', wp_basename(dirname(__FILE__))); // yml-for-yandex-market-pro - псевдоним плагина
define('YFYMP_PLUGIN_BASENAME', plugin_basename(__FILE__)); // yml-for-yandex-market-pro/yml-for-yandex-market-pro.php - полный псевдоним плагина (папка плагина + имя главного файла)
$nr = apply_filters('yfymp_f_nr', $nr);
unset($upload_dir);

// load translation
add_action('plugins_loaded', function() {
	load_plugin_textdomain('yfymp', false, dirname(YFYMP_PLUGIN_BASENAME).'/languages/');
});

if (false === $nr) {
	unset($nr);
	require_once YFYMP_PLUGIN_DIR_PATH.'/packages.php';
	register_deactivation_hook(__FILE__, ['YmlforYandexMarketPro', 'on_deactivation']);
	register_activation_hook(__FILE__, ['YmlforYandexMarketPro', 'on_activation']);
	add_action('plugins_loaded', ['YmlforYandexMarketPro', 'init'], 66);
	define('YFYMP_ACTIVE', true);
}