<?php if (!defined('ABSPATH')) {exit;}
/*
* С версии 4.2.0
*/
function yfymp_response_to_api($action) {
	yfym_error_log('Стартовала response_to_api: $action = '.$action. ';', 0);
	yfym_error_log('yfymp_SLUG = '. yfymp_SLUG. ';', 0);
	yfym_error_log('yfymp_VER = '. yfymp_VER. ';', 0); 
	global $wp_version;
	$yfym_version = yfym_optionGET('yfym_version');
	$args = array(
		'slug' => yfymp_SLUG,
		'version' => yfymp_VER, 
		'basic_version' => $yfym_version,
	);	
	$order_id = yfym_optionGET('yfymp_order_id');
	$order_email = yfym_optionGET('yfymp_order_email');
	$args = apply_filters('yfymp_args_filter', $args, $order_id, $order_email);
	if ($action == 'basic_check') {
		$request_string = array(
			'body' => array(
			'action' => 'basic_check',
			'request' => serialize($args),
			'api-key' => md5(get_bloginfo('url')),
			'order_id' => $order_id,
			'order_email' => $order_email,
			'order_home_url' => home_url('/')	
			),
			'user-agent' => 'WordPress/' . $wp_version . '; ' . get_bloginfo('url')
		);
		
		$request_string = apply_filters('yfymp_request_string_filter', $request_string, $order_id, $order_email);	
		$url = 'https://icopydoc.ru/serv';
		$url = apply_filters('yfymp_url_link_filter', $url);	
		
		$response = wp_remote_post(esc_url_raw($url), $request_string);
	} 
	return $response;
}
function yfymp_license_status($yfymp_l = 'no') {
	$ch = $yfymp_l; // чтобы не ломались прошлые версии
	if (is_multisite()) {
	   $yfymp_l = get_blog_option(get_current_blog_id(), 'yfymp_license_status');
	} else {
	   $yfymp_l = get_option('yfymp_license_status');
	}
	do_action('yfymp_ch', $yfymp_l, $ch);
	return $yfymp_l;
}
/*
* @since 4.1.4
*
* @return nothing
* Обновляет настройки плагина
* Updates plugin settings
*/
function yfymp_set_new_options() {	
	 

	$options_arr = array(
		'yfymp_dont_use_book' => '',
		'yfymp_min_version_yfym' => '3.7.0',	
		'yfymp_disabled_ymarket' => 'enabled',
		'yfymp_use_utm' => '',
		'yfymp_utm_source' => 'market.yandex.ru',
		'yfymp_utm_campaign' => '',
		'yfymp_utm_content' => 'catid',
		'yfymp_utm_medium' => 'cpc',
		'yfymp_roistat' => '',
		'yfymp_use_del_vc' => '',
/* ! */		'yfymp_exclude_cat_arr' => array(),	
		'yfymp_price_post_meta' => '',
		'yfymp_multiply_price_value' => '1',
		'yfymp_round_price_value' => 'hundredths',
		'yfymp_add_to_price_value' => '0',
		'yfymp_skip_vendor_names' => '',
		'yfymp_compare' => '>=',
		'yfymp_compare_value' => '',
		'yfymp_stock_quantity_compare' => '>',
		'yfymp_stock_quantity_compare_value' => '',	
		'yfymp_manage_stock_off' => '',
		'yfymp_tags_as_cat' => 'off',
		'yfymp_name_var0' => 'disabled',
		'yfymp_name_var01' => 'disabled',
		'yfymp_name_var1' => 'disabled',
		'yfymp_name_var2' => 'disabled',
		'yfymp_name_var3' => 'disabled',
		'yfymp_simple_name_var0' => 'disabled',
		'yfymp_simple_name_var1' => 'disabled',
		'yfymp_simple_name_var2' => 'disabled',
		'yfymp_num_pic' => '3',
		'yfymp_add_from_prod_gallery' => 'enabled',
		'yfymp_excl_thumb' => 'no',
		'yfymp_desc_post_meta' => '',
		'yfymp_one_variable' => '',
		'yfymp_del_tags_atr' => '',
		'yfymp_diagonal' => 'off',
		'yfymp_diagonal_chart' => 'ml',
		'yfymp_diagonal_chart_from' => '',
		'yfymp_tester' => 'off',	
		'yfymp_do' => 'exclude',
	);

	if (yfym_optionGET('p_arr') === false) {		
		if (!defined('yfymp_PARAM_N')) {define('yfymp_PARAM_N', 5);}		
		$yfym_settings_arr = yfym_optionGET('yfym_settings_arr');
		$yfym_settings_arr_keys_arr = array_keys($yfym_settings_arr);
		for ($i = 0; $i < count($yfym_settings_arr_keys_arr); $i++) {
			$feed_id = $yfym_settings_arr_keys_arr[$i];
			$n = '1';		
			for ($i = 0; $i < yfymp_PARAM_N; $i++) {
				$yfymp_p_use = 'yfymp_p_use'.$n;
				$yfymp_p_name_s = 'yfymp_p_name_s'.$n;
				$yfymp_p_name_custom = 'yfymp_p_name_custom'.$n;
				$yfymp_p_unit_s = 'yfymp_p_unit_s'.$n;
				$yfymp_p_unit_default_s = 'yfymp_p_unit_default_s'.$n;
				$yfymp_p_unit_custom = 'yfymp_p_unit_custom'.$n;
				$yfymp_p_val_s = 'yfymp_p_val_s'.$n;
				$yfymp_p_val_custom = 'yfymp_p_val_custom'.$n;

				$yfymp_p_use_old = yfym_optionGET($yfymp_p_use, $nf);
				yfym_optionUPD($yfymp_p_use, $yfymp_p_use_old, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				
				$yfymp_p_name_s_old = yfym_optionGET($yfymp_p_name_s, $nf);
				yfym_optionUPD($yfymp_p_name_s, $yfymp_p_name_s_old, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
						
				$yfymp_p_name_custom_old = yfym_optionGET($yfymp_p_name_custom, $nf);
				yfym_optionUPD($yfymp_p_name_custom, $yfymp_p_name_custom_old, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				
				$yfymp_p_unit_s_old = yfym_optionGET($yfymp_p_unit_s, $nf);
				yfym_optionUPD($yfymp_p_unit_s, $yfymp_p_unit_s_old, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				
				$yfymp_p_unit_default_s_old = yfym_optionGET($yfymp_p_unit_default_s, $nf);
				yfym_optionUPD($yfymp_p_unit_default_s, $yfymp_p_unit_default_s_old, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				
				$yfymp_p_unit_custom_old = yfym_optionGET($yfymp_p_unit_custom, $nf);
				yfym_optionUPD($yfymp_p_unit_custom, $yfymp_p_unit_custom_old, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				
				$yfymp_p_val_s_old = yfym_optionGET($yfymp_p_val_s, $nf);
				yfym_optionUPD($yfymp_p_val_s, $yfymp_p_val_s_old, $feed_id, 'yes', 'custom_set_arr', 'p_arr');			 
				
				$yfymp_p_val_custom_old = yfym_optionGET($yfymp_p_val_custom, $nf);
				yfym_optionUPD($yfymp_p_val_custom, $yfymp_p_val_custom_old, $feed_id, 'yes', 'custom_set_arr', 'p_arr');	
				$n++;
			}
		}
	} 

	if (yfym_optionGET('yfym_settings_arr') === false) {
//		yfym_add_settings_arr();
		$yfym_settings_arr = yfym_optionGET('yfym_settings_arr');
		$yfym_settings_arr_keys_arr = array_keys($yfym_settings_arr);
		for ($i = 0; $i < count($yfym_settings_arr_keys_arr); $i++) {
			$feed_id = $yfym_settings_arr_keys_arr[$i];
			foreach ($options_arr as $key => $value) {
				yfymp_set_option('new', array('name' => $key, 'value' => $value), $feed_id);
			}
		}
	} else { // добавляем новые опции, если таковых ещё нет
		$yfym_settings_arr = yfym_optionGET('yfym_settings_arr');
		$yfym_settings_arr_keys_arr = array_keys($yfym_settings_arr);
		for ($i = 0; $i < count($yfym_settings_arr_keys_arr); $i++) {
			$feed_id = $yfym_settings_arr_keys_arr[$i];
			foreach ($options_arr as $key => $value) {
				yfymp_set_option('new', array('name' => $key, 'value' => $value), $feed_id);
			}
		}
	}

	$yfymp_version = yfym_optionGET('yfymp_version');	
	if (version_compare($yfymp_version, '4.3.0', '<')) { // если прошлая версия ниже 4.3.0
		$opt_name_arr = array_keys($options_arr);
		$yfym_settings_arr = yfym_optionGET('yfym_settings_arr');
		$yfym_settings_arr_keys_arr = array_keys($yfym_settings_arr);
		for ($i = 0; $i < count($yfym_settings_arr_keys_arr); $i++) {
			$feed_id = $yfym_settings_arr_keys_arr[$i];
			foreach ($opt_name_arr as $value) {
				yfymp_set_option('upd', array('name' => $value), $feed_id);
			}
		}	
	}	

	if (defined('yfymp_VER')) {
		if (is_multisite()) {
			update_blog_option(get_current_blog_id(), 'yfymp_version', yfymp_VER);
		} else {
			update_option('yfymp_version', yfymp_VER);
		}
	}
} function yfymp_ls() {$res = yfymp_license_status(); if ($res == 'no') {return false;} else {return true;}}
/**
* Склонение слова после числа.
*
* Примеры вызова:
* yfymp_num_decline($num, 'книга,книги,книг')
* yfymp_num_decline($num, ['книга','книги','книг'])
* yfymp_num_decline($num, 'книга', 'книги', 'книг')
* yfymp_num_decline($num, 'книга', 'книг')
*
* @param  int|string $number  Число после которого будет слово. Можно указать число в HTML тегах.
* @param  string|array  $titles  Варианты склонения или первое слово для кратного 1.
* @param  string  $param2  Второе слово, если не указано в параметре $titles.
* @param  string  $param3  Третье слово, если не указано в параметре $titles.
*
* @return string 1 книга, 2 книги, 10 книг.
*
* @version 4.2.0
*/
function yfymp_num_decline($number, $titles, $param2 = '', $param3 = '') {
 if ($param2)
 $titles = [$titles, $param2, $param3];	  
 if (is_string($titles)) {
 	$titles = preg_split( '/, */', $titles );
 }
 if (empty($titles[2])) {
 	$titles[2] = $titles[1]; // когда указано 2 элемента
 }	  
 $cases = [ 2, 0, 1, 1, 1, 2 ];	  
 $intnum = abs( intval( strip_tags( $number ) ) );
 return "$number ". $titles[($intnum % 100 > 4 && $intnum % 100 < 20) ? 2 : $cases[min($intnum % 10, 5)]];
}
function yfymp_license_date($resp) {
 if (isset($resp['license_date'])) {
	if (is_multisite()) { 
		update_blog_option(get_current_blog_id(), 'yfymp_license_date', $resp['license_date']);
	} else {	
		update_option('yfymp_license_date', $resp['license_date']);
	}
 }
 return;
} 
function yfymp_del_visual_composer($text) {
 $del_arr = array(
	'\[vc_row]',
	'\[vc_column]',
	'\[vc_column_text]',
	'\[\/vc_row]',
	'\[\/vc_column]',
	'\[\/vc_column_text]',
	'\[\/row]',
	'\[\/col]',
	'\[\/vc_accordion_tab]',
	'\[\/vc_accordion]',
	'\[\/vc_column_inner]',
	'\[\/vc_row_inner]',
	'\[\/vc_separator]',
	'\[\/vc_images_carousel]',
 );
 $text = preg_replace('/\[col.*?]/is', '', $text);
 $text = preg_replace('/\[row.*?]/is', '', $text);
 $text = preg_replace('/\[ux_video.*?]/is', '', $text);
 $text = preg_replace('/\[vc_video link.*?]/is', '', $text);
 $text = preg_replace('/\[vc_raw_html].*?\[\/vc_raw_html]/is', '', $text);
 $text = preg_replace('/\[vc_row.*?]/is', '', $text);
 $text = preg_replace('/\[vc_column.*?]/is', '', $text); 
 $text = preg_replace('/\[vc_single_image.*?]/is', '', $text);
 $text = preg_replace('/\[vc_accordion_tab.*?]/is', '', $text);
 $text = preg_replace('/\[vc_accordion.*?]/is', '', $text);  
 $text = preg_replace('/\[vc_text_separator title="(.*?)".*?]/is', '<p>\\1</p>', $text); // http://tradebenefit.ru/primery-raboty-preg-replace-php
 $text = preg_replace('/\[vc_text_separator title=”(.*?)”.*?]/is', '<p>\\1</p>', $text);
 $text = preg_replace('/\[vc_column_inner.*?]/is', '', $text);
 $text = preg_replace('/\[vc_row_inner.*?]/is', '', $text);
 $text = preg_replace('/\[vc_separator.*?]/is', '', $text);
 $text = preg_replace('/\[vc_images_carousel.*?]/is', '', $text);
 foreach ($del_arr as $value) {
	$delteg = "/".$value."/";
	$text = preg_replace($delteg, '', $text);
 } 
 return $text;
}
/*
* @since 4.3.0
*
* @return nothing
*/
function yfymp_set_option($action = 'new', $args = array(), $feed_id = '1') { 
	switch ($action) {
		case "new":
			$opt_name = $args['name'];
			$opt_value = $args['value'];
			if (yfym_optionGET($opt_name, $feed_id, 'set_arr') === false) {
				yfym_optionUPD($opt_name, $opt_value, $feed_id, 'yes', 'set_arr');			
			}
		break;
		case "upd":
			$opt_name = $args['name'];
			if (yfym_optionGET($opt_name, $feed_id) !== false) {
				$opt_old_value = yfym_optionGET($opt_name, $feed_id); // считываем старую опцию
				yfym_optionUPD($opt_name, $opt_old_value, $feed_id, 'yes', 'set_arr'); // копируем её в новую
//				yfym_optionDEL($opt_name, $feed_id); // удаляем старую опцию
			}
		break;
		case "del":
			$opt_name = $args['name'];
			if (yfym_optionGET($opt_name, $feed_id, 'set_arr') !== false) {
				yfym_optionDEL($opt_name, $feed_id, 'set_arr'); // удаляем опцию
			}
		break;
		case "save":
			$opt_name = $args['name'];
			if (isset($_POST[$opt_name])) {
				if (is_array($_POST[$opt_name])) {
					$opt_value = serialize($_POST[$opt_name]);
				} else {
					$opt_value = sanitize_text_field($_POST[$opt_name]);
				}
				yfym_optionUPD($opt_name, $opt_value, $feed_id, 'yes', 'set_arr');
			} else {
				switch($opt_name) {
					case 'yfymp_one_variable':
					case 'yfymp_del_tags_atr':
					case 'yfymp_manage_stock_off':
					case 'yfymp_use_utm':
					case 'yfymp_use_del_vc':
					case 'yfymp_excl_thumb':
						if (isset($_GET['tab'])) {
							if ($_GET['tab'] === 'filtration') {
								yfym_optionUPD($opt_name, '', $feed_id, 'yes', 'set_arr');
							}						
						} else {
							yfym_optionUPD($opt_name, '', $feed_id, 'yes', 'set_arr');
						}
						break;
		/*			case 'yfymp_exclude_cat_arr':
						if (isset($_GET['tab'])) {
							if ($_GET['tab'] === 'filtration') {
								$opt_value = $args['value'];
								yfym_optionUPD($opt_name, $opt_value, $feed_id, 'yes', 'set_arr');
							}						
						} else {
							$opt_value = $args['value'];
							yfym_optionUPD($opt_name, $opt_value, $feed_id, 'yes', 'set_arr');
						}
						break;*/
					default:
//						$opt_value = $args['value'];
//						yfym_optionUPD($opt_name, $opt_value, $feed_id, 'yes', 'set_arr');
				}
			}
		break;
	}
	return;
}