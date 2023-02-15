<?php if (!defined('ABSPATH')) {exit;}
/**
 * The main class of the plugin YML for Yandex Market Pro
 *
 * @package			YML for Yandex Market Pro
 * @subpackage		
 * @since			4.5.0
 * 
 * @version			1.0.0 (24-12-2022)
 * @author			Maxim Glazunov
 * @link			https://icopydoc.ru/
 * @see				
 * 
 * @param		
 *
 * @return		
 *
 * @depends			classes:	
 *					traits:	
 *					methods:	
 *					functions:	common_option_get
 *								common_option_upd
 *					constants:	YFYMP_PLUGIN_VERSION
 *								YFYMP_PLUGIN_BASENAME
 *								YFYMP_BASIC_PLUGIN_VERSION
 *					options:	
 *
 */

final class YmlforYandexMarketPro {
	private $plugin_version = YFYMP_PLUGIN_VERSION; // 1.0.0

	protected static $instance;
	public static function init() {
		if (is_null(self::$instance)) {
			self::$instance = new self();
		}
		return self::$instance;  
	}

	// Срабатывает при активации плагина (вызывается единожды)
	public static function on_activation() { 
		if (!current_user_can('activate_plugins')) {return;}
	
		if (is_multisite()) {
			add_blog_option(get_current_blog_id(), 'yfymp_version', YFYMP_PLUGIN_VERSION);
			add_blog_option(get_current_blog_id(), 'yfymp_license_status', 'no');
			add_blog_option(get_current_blog_id(), 'yfymp_license_date', '0');
			add_blog_option(get_current_blog_id(), 'yfymp_order_id', '');
			add_blog_option(get_current_blog_id(), 'yfymp_order_email', '');
			
	//		add_blog_option(get_current_blog_id(), 'yfymp_params_arr', array());
		} else {
			add_option('yfymp_version', YFYMP_PLUGIN_VERSION);
			add_option('yfymp_license_status', 'no');
			add_option('yfymp_license_date', '0');
			add_option('yfymp_order_id', '');
			add_option('yfymp_order_email', '');
			
	//		add_option('yfymp_params_arr', array());
		}
		$yfym_settings_arr = yfym_optionGET('yfym_settings_arr');
		$yfym_settings_arr_keys_arr = array_keys($yfym_settings_arr);
		for ($i = 0; $i < count($yfym_settings_arr_keys_arr); $i++) {
			$feed_id = $yfym_settings_arr_keys_arr[$i];
			if (!defined('yfymp_PARAM_N')) {define('yfymp_PARAM_N', 15);}
			$n = '1'; // (string)
			for ($i = 0; $i < yfymp_PARAM_N; $i++) {
				$yfymp_p_use = 'yfymp_p_use'.$n;
				$yfymp_p_name_s = 'yfymp_p_name_s'.$n;
				$yfymp_p_name_custom = 'yfymp_p_name_custom'.$n;
				$yfymp_p_unit_s = 'yfymp_p_unit_s'.$n;
				$yfymp_p_unit_default_s = 'yfymp_p_unit_default_s'.$n;
				$yfymp_p_unit_custom = 'yfymp_p_unit_custom'.$n;
				$yfymp_p_val_s = 'yfymp_p_val_s'.$n;
				$yfymp_p_val_custom = 'yfymp_p_val_custom'.$n;
		
				yfym_optionADD($yfymp_p_use, '', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionADD($yfymp_p_name_s, '', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionADD($yfymp_p_name_custom, '', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionADD($yfymp_p_unit_s, '', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionADD($yfymp_p_unit_default_s, '', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionADD($yfymp_p_unit_custom, '', $feed_id, 'yes', 'custom_set_arr', 'p_arr');	
				yfym_optionADD($yfymp_p_val_s, '', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionADD($yfymp_p_val_custom , '', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				$n++;
			}
	
			$feed_id++;
		}
	}
	 
	// Срабатывает при отключении плагина (вызывается единожды)
	public static function on_deactivation() {
		if (!current_user_can('activate_plugins')) {return;}
		
	} 
	
	public function __construct() {
		$this->check_options_upd(); // проверим, нужны ли обновления опций плагина
		$this->init_hooks(); // подключим хуки

		// new YFYMP_Plugin_Upd();
	}

	public function init_hooks() {
		add_action('admin_notices', array($this, 'yfymp_admin_notices_function'));
 
		add_action('yfym_after_whot_export_option', array($this, 'yfymp_after_whot_export_option'), 10, 1);	
		add_action('yfym_after_step_export', array($this, 'yfymp_function_after_step_export'), 10, 1);
		add_action('yfym_after_manufacturer_warranty', array($this, 'yfymp_after_manufacturer_warranty'), 10, 1);

		add_action('yfym_before_button_primary_submit', array($this, 'yfymp_before_button_primary_submit'), 10, 1);	

		add_action('yfym_prepend_submit_action', array($this, 'yfymp_prepend_submit_action'), 10, 1);

		add_filter('yfym_set_default_feed_settings_result_arr_filter', array($this, 'yfymp_set_default_feed_settings_result_arr_filter_func'), 10, 2); // добавление нового фида
		add_action('yfym_before_support_project', array($this, 'yfymp_before_support_project'));

		add_action('yfym_append_select_yfym_desc', array($this, 'yfymp_append_select_yfym_desc_func'), 10, 2);
		add_action('yfym_after_select_yfym_desc', array($this, 'yfymp_after_select_yfym_desc_func'), 10, 2);

		add_filter('yfym_args_terms_arr_filter', array($this, 'yfymp_args_terms_arr_filter_func'), 10, 2);
		add_filter('yfym_query_arg_filter', array($this, 'yfymp_query_arg_filter_func'), 10, 2);
		add_filter('yfym_append_simple_offer_filter', array($this, 'yfymp_append_simple_offer_filter_func'), 10, 3);
		add_filter('yfym_append_variable_offer_filter', array($this, 'yfymp_append_variable_offer_filter_func'), 10, 4);	
		
		add_filter('yfym_pic_simple_offer_filter', array($this, 'yfymp_pic_simple_offer_filter_func'), 10, 3);
		add_filter('yfym_pic_variable_offer_filter', array($this, 'yfymp_pic_variable_offer_filter_func'), 10, 4);

		if (version_compare(YFYMP_BASIC_PLUGIN_VERSION, '3.7.13', '<')) {
			add_action('yfym_skip_flag', [ $this, 'yfymp_skip_flag_func' ], 10, 4);
			add_action('yfym_skip_flag_variable', [ $this, 'yfymp_skip_flag_variable_func' ], 10, 5);
		} else {
			add_action('y4ym_f_skip_flag', [ $this, 'skip_flag_f' ], 10, 3);
			add_action('y4ym_f_skip_flag_variable', [ $this, 'skip_flag_variable_f' ], 10, 3);
		}

		add_action('y4ym_f_simple_switchcase_default_description', [ $this, 'simple_switchcase_default_description_f' ], 10, 3);
		add_action('y4ym_f_variable_switchcase_default_description', [ $this, 'variable_switchcase_default_description_f' ], 10, 3);

		add_filter('yfym_append_categories_filter', array($this, 'yfymp_append_categories_filter_func'), 10, 2);	
		add_filter('yfym_after_cat_filter', array($this, 'yfymp_after_cat_filter_func'), 10, 3);
		
		add_filter('yfym_simple_url_filter', array($this, 'yfymp_simple_url_filter_func'), 10, 4);
		add_filter('yfym_variable_url_filter', array($this, 'yfymp_variable_url_filter_func'), 10, 5);

		add_filter('yfym_description_filter', array($this, 'yfymp_description_filter_func'), 10, 4);
		
		add_action('init', array($this, 'yfymp_add_new_taxonomies'), 10 );
			
		add_filter('yfym_change_name', array($this, 'yfymp_change_name_func'), 10, 4);
		add_filter('yfym_variable_change_name', array($this, 'yfymp_variable_change_name_func'), 10, 5);

		add_filter('yfym_after_variable_offer_stop_flag', array($this, 'yfymp_after_variable_offer_stop_flag_func'), 10, 6);	
		
		add_action('add_meta_boxes', array($this, 'yfymp_add_custom_box'));
		add_action('save_post', array($this, 'yfymp_save_post_product_function'), 40, 3);
		
		// вывод инфы о статусе активации
		add_filter('plugin_action_links', array($this, 'yfymp_plugin_action_links'), 10, 2 );
		// проверка наличия обновлений
		add_filter('pre_set_site_transient_update_plugins', array($this, 'yfymp_check_upd'), 10);
		// проверка информации о плагине
		add_filter('plugins_api', array($this, 'yfymp_plugin_api_checkInfo'), 10, 3);
		// установка плагина
		add_filter('upgrader_package_options', array($this, 'yfymp_setUpdatePackage'));	

		// https://opttour.ru/web/wordpress/byistroe-redaktirovanie-zapisi/
		add_action('admin_head', array($this, 'yfymp_add_views_column_css'));

		add_filter('manage_edit-product_columns', array($this, 'yfymp_yml_column_add'), 10, 1);
		add_action('manage_product_posts_custom_column', array($this, 'yfymp_filling_column'), 10, 2);
		add_action('quick_edit_custom_box', array($this, 'yfymp_quick_edit'), 10, 2 );
		add_action('admin_print_scripts-edit.php', array($this, 'yfymp_enqueue_scripts_admin_edit'));

		/* Мета-поля для категорий товаров */
		add_action('product_cat_edit_form_fields', array($this, 'yfymp_add_meta_product_cat'), 10, 1);
		add_action('edited_product_cat', array($this, 'yfymp_save_meta_product_cat'), 10, 1); 
		add_action('create_product_cat', array($this, 'yfymp_save_meta_product_cat'), 10, 1);	

		if (version_compare(YFYMP_BASIC_PLUGIN_VERSION, '3.8.3', '<')) {
			add_action('yfym_simple_price_filter', array($this, 'yfymp_simple_price_filter_func'), 10, 3);
			add_action('yfym_variable_price_filter', array($this, 'yfymp_variable_price_filter_func'), 10, 5);
		} else {
			add_action('y4ym_f_simple_price', array($this, 'simple_price_f'), 10, 3);
			add_action('y4ym_f_variable_price', array($this, 'variable_price_f'), 10, 3);
		}	

		add_filter( 'bulk_actions-'.'edit-product', array($this, 'register_yfymp_bulk_actions'), 10, 1 );
		add_filter( 'handle_bulk_actions-'.'edit-product', array($this, 'yfymp_bulk_action_handler'), 10, 3 );
		add_action( 'admin_notices',  array($this, 'yfymp_bulk_action_admin_notice'), 10, 1 );

		// фильтрация по брендам
		add_filter('y4ym_f_simple_skip_vendor_reason', array($this, 'y4ym_f_simple_skip_vendor_reason_f'), 10, 3);
		add_filter('y4ym_f_variable_skip_vendor_reason', array($this, 'y4ym_f_variable_skip_vendor_reason_f'), 10, 3);
	}

	public function y4ym_f_simple_skip_vendor_reason_f($skip_vendor_reason, $dara_arr, $feed_id) {
		$vendor_name = $dara_arr['vendor_name'];
		if ($vendor_name == '') {return $skip_vendor_reason;}
		$product = $dara_arr['product']; 

		$yfymp_skip_vendor_names = yfym_optionGET('yfymp_skip_vendor_names', $feed_id, 'set_arr');

		if ($yfymp_skip_vendor_names !== '') {
			$yfymp_skip_vendor_names_arr = explode(";", $yfymp_skip_vendor_names);
			for ($i = 0; $i < count($yfymp_skip_vendor_names_arr); $i++) {
				$yfymp_skip_vendor_names_arr[$i] = trim($yfymp_skip_vendor_names_arr[$i]);
			};

			if (in_array($vendor_name, $yfymp_skip_vendor_names_arr)) {
				$skip_vendor_reason = sprintf('%s "%s" %s',
					__('Filtering by brands is enabled and', 'yfymp'),
					$vendor_name,
					__('brand is not included in the list of permitted', 'yfymp')
				);
			}
		}
	 
		return $skip_vendor_reason;
	}

	public function y4ym_f_variable_skip_vendor_reason_f($skip_vendor_reason, $dara_arr, $feed_id) {
		$vendor_name = $dara_arr['vendor_name'];
		if ($vendor_name == '') {return $skip_vendor_reason;}
		$product = $dara_arr['product']; 
		$offer = $dara_arr['offer'];

		$yfymp_skip_vendor_names = yfym_optionGET('yfymp_skip_vendor_names', $feed_id, 'set_arr');

		if ($yfymp_skip_vendor_names !== '') {
			$yfymp_skip_vendor_names_arr = explode(";", $yfymp_skip_vendor_names);
			for ($i = 0; $i < count($yfymp_skip_vendor_names_arr); $i++) {
				$yfymp_skip_vendor_names_arr[$i] = trim($yfymp_skip_vendor_names_arr[$i]);
			};

			if (in_array($vendor_name, $yfymp_skip_vendor_names_arr)) {
				$skip_vendor_reason = sprintf('%s "%s" %s',
					__('Filtering by brands is enabled and', 'yfymp'),
					$vendor_name,
					__('brand is not included in the list of permitted', 'yfymp')
				);
			}
		}

		return $skip_vendor_reason;
	}

	public function register_yfymp_bulk_actions( $bulk_actions ){
		$bulk_actions['add_yml_kit'] = __('Add to YML kit', 'yfymp');
		$bulk_actions['remove_yml_kit'] = __('Remove from YML kit', 'yfymp');
		$bulk_actions['remove_from_all_yml'] = __('Remove from all YML', 'yfymp');
		$bulk_actions['cancel_remove_from_all_yml'] = __('Cancel Remove from all YML', 'yfymp');
		return $bulk_actions;
	}

	public function yfymp_bulk_action_handler( $redirect_to, $doaction, $post_ids) {
		if ($doaction == 'add_yml_kit') {
			foreach( $post_ids as $post_id ) {
				update_post_meta($post_id, 'vygruzhat', 'on');
			}
		} else if ($doaction == 'remove_yml_kit') {
			foreach( $post_ids as $post_id ) {
				update_post_meta($post_id, 'vygruzhat', '');
			}
		} else if ($doaction == 'remove_from_all_yml') {
			foreach( $post_ids as $post_id ) {
				update_post_meta($post_id, 'yfymp_removefromyml', 'on');
			}
		} else if ($doaction == 'cancel_remove_from_all_yml') {
			foreach( $post_ids as $post_id ) {
				update_post_meta($post_id, 'yfymp_removefromyml', '');
			}
		} else {
			return $redirect_to; // ничего не делаем если это не наше действие
		}

		$redirect_to = add_query_arg('yfymp_bulk_action_done', count($post_ids), $redirect_to);
		return $redirect_to;
	}

	public function yfymp_bulk_action_admin_notice() {
		if( empty( $_GET['yfymp_bulk_action_done'] ) )
			return;

		$data = $_GET['yfymp_bulk_action_done'];
		$msg = sprintf('Processed products: %d.', intval($data) );
		echo '<div id="message" class="updated"><p>'. $msg .'</p></div>';
	}

	public function check_options_upd() {
		if (false == $this->get_plugin_version()) { // это первая установка
			if (is_multisite()) {
				update_blog_option(get_current_blog_id(), 'yfymp_version', $this->plugin_version);
			} else {
				update_option('yfymp_version', $this->plugin_version);
			}
		} else {
			$this->set_new_options();
		}
	}

	public function get_plugin_version() {
		if (is_multisite()) {
			$v = get_blog_option(get_current_blog_id(), 'yfymp_version');
		} else {
			$v = get_option('yfymp_version');
		}
		return $v;
	}

	public function set_new_options() { 
		// Если предыдущая версия плагина меньше текущей
		if (version_compare($this->get_plugin_version(), $this->plugin_version, '<')) { 

		} else { // обновления не требуются
			return;
		}

		// Если предыдущая версия плагина меньше 4.4.0
		if (version_compare($this->get_plugin_version(), '4.4.0', '<')) { 
			$yfym_settings_arr = yfym_optionGET('yfym_settings_arr');
			$yfym_settings_arr_keys_arr = array_keys($yfym_settings_arr);
			for ($i = 0; $i < count($yfym_settings_arr_keys_arr); $i++) {
				$feed_id = $yfym_settings_arr_keys_arr[$i];
				
				$sizes = yfym_optionGET('yfymp_sizes', $feed_id, 'set_arr'); 
				$size_chart = yfym_optionGET('yfymp_size_chart', $feed_id, 'set_arr');
				$size_chart_from = yfym_optionGET('yfymp_size_chart_from', $feed_id, 'set_arr');
					
				$sizes2 = yfym_optionGET('yfymp_sizes2', $feed_id, 'set_arr'); 
				$size_chart2 = yfym_optionGET('yfymp_size_chart2', $feed_id, 'set_arr');
				$size_chart_from2 = yfym_optionGET('yfymp_size_chart_from2', $feed_id, 'set_arr');

				$sizes3 = yfym_optionGET('yfymp_sizes3', $feed_id, 'set_arr'); 
				$size_chart3 = yfym_optionGET('yfymp_size_chart3', $feed_id, 'set_arr');
				$size_chart_from3 = yfym_optionGET('yfymp_size_chart_from3', $feed_id, 'set_arr');
			
				$sizes4 = yfym_optionGET('yfymp_sizes4', $feed_id, 'set_arr'); 
				$size_chart4 = yfym_optionGET('yfymp_size_chart4', $feed_id, 'set_arr');
				$size_chart_from4 = yfym_optionGET('yfymp_size_chart_from4', $feed_id, 'set_arr');
			
				$sizes5 = yfym_optionGET('yfymp_sizes5', $feed_id, 'set_arr'); 
				$size_chart5 = yfym_optionGET('yfymp_size_chart5', $feed_id, 'set_arr');
				$size_chart_from5 = yfym_optionGET('yfymp_size_chart_from5', $feed_id, 'set_arr');

				if ($sizes !== 'off') {yfym_optionUPD('yfymp_p_use6', 'on', $feed_id, 'yes', 'custom_set_arr', 'p_arr');}
				yfym_optionUPD('yfymp_p_name_s6', 'Размер', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_val_s6', $sizes, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_s6', $size_chart_from, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_default_s6', $size_chart, $feed_id, 'yes', 'custom_set_arr', 'p_arr');

				if ($sizes2 !== 'off') {yfym_optionUPD('yfymp_p_use7', 'on', $feed_id, 'yes', 'custom_set_arr', 'p_arr');}
				yfym_optionUPD('yfymp_p_name_s7', 'Размер', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_val_s7', $sizes2, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_s7', $size_chart_from2, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_default_s7',  $size_chart2, $feed_id, 'yes', 'custom_set_arr', 'p_arr');

				if ($sizes3 !== 'off') {yfym_optionUPD('yfymp_p_use8', 'on', $feed_id, 'yes', 'custom_set_arr', 'p_arr');}
				yfym_optionUPD('yfymp_p_name_s8', 'Размер', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_val_s8', $sizes3, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_s8', $size_chart_from3, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_default_s8', $size_chart3, $feed_id, 'yes', 'custom_set_arr', 'p_arr');

				if ($sizes4 !== 'off') {yfym_optionUPD('yfymp_p_use9', 'on', $feed_id, 'yes', 'custom_set_arr', 'p_arr');}
				yfym_optionUPD('yfymp_p_name_s9', 'Размер', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_val_s9', $sizes4, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_s9', $size_chart_from4, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_default_s9', $size_chart4, $feed_id, 'yes', 'custom_set_arr', 'p_arr');

				if ($sizes5 !== 'off') {yfym_optionUPD('yfymp_p_use10', 'on', $feed_id, 'yes', 'custom_set_arr', 'p_arr');}
				yfym_optionUPD('yfymp_p_name_s10', 'Размер', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_val_s10', $sizes5, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_s10', $size_chart_from5, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_default_s10', $size_chart5, $feed_id, 'yes', 'custom_set_arr', 'p_arr');

				$yfymp_v = yfym_optionGET('yfymp_v', $feed_id, 'set_arr');
				$yfymp_v_chart = yfym_optionGET('yfymp_v_chart', $feed_id, 'set_arr');
				$yfymp_v_chart_from = yfym_optionGET('yfymp_v_chart_from', $feed_id, 'set_arr');

				if ($yfymp_v !== 'off') {yfym_optionUPD('yfymp_p_use11', 'on', $feed_id, 'yes', 'custom_set_arr', 'p_arr');}
				yfym_optionUPD('yfymp_p_name_s11', 'Объем', $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_val_s11', $yfymp_v, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_s11', $yfymp_v_chart, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
				yfym_optionUPD('yfymp_p_unit_default_s11', $yfymp_v_chart_from, $feed_id, 'yes', 'custom_set_arr', 'p_arr');
			}
		}

//		$this->check_and_add_options();

		if (is_multisite()) {
			update_blog_option(get_current_blog_id(), 'yfymp_version', $this->plugin_version);
		} else {
			update_option('yfymp_version', $this->plugin_version);
		}

		return;
	}

	public function yfymp_after_variable_offer_stop_flag_func ($stop_flag, $i, $variation_count, $offer_id, $offer, $feed_id) {
		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $stop_flag;}
		$yfymp_one_variable = yfym_optionGET('yfymp_one_variable', $feed_id, 'set_arr'); 
		if ($yfymp_one_variable === 'on') {
			return true;
		} else {
			return $stop_flag;
		}
	}
		

 // подправим ширину всех колонок через css
 function yfymp_add_views_column_css() {
	echo '<style type="text/css">.column-yfymp_yml {width: 28px; text-align: center;}
	/* https://sdelaemblog.ru/vsplyvayushhaya-podskazka-html-i-css-bez-skriptov */
	/* задаем относительное позиционирование контейнеру */
	.yfymp_block{position:relative;}
	/* Оформление скрытого элемента по умолчанию */ 
	.yfymp_hint
	{display: none;
	width: 150px;
	position: absolute;
	bottom: 130%;
	left: 0px;
	background-color: #212121;
	color: #fff;
	padding: 5px;
	text-align: center;
	-moz-box-shadow: 0 1px 1px rgba(0,0,0,.16);
	-webkit-box-shadow: 0 1px 1px rgba(0,0,0,.16);
	box-shadow: 0 1px 1px rgba(0,0,0,.16);
	font-size: 12px;}
	/* Дополнительное оформление скрытого элемента(необязательно) */
	.yfymp_hover + .yfymp_hint:before
	{content: " ";
	position: absolute;
	top: 98%;
	left: 10%;
	margin-left: -5px;
	border-width: 5px;
	border-style: solid;
	height: 0;
	width: 0;
	border: 7px solid transparent;
	border-right: 7px solid #212121;
	border-color: #212121 transparent transparent transparent;
	z-index: 2;}
	/* Дополнительное оформление скрытого элемента(необязательно) часть 2*/
	.yfymp_hover + .yfymp_hint:after
	{content: " ";
	position: absolute;
	top: 100%;
	left: 10%;
	margin-left: -5px;
	border-width: 5px;
	border-style: solid;
	height: 0;
	width: 0;
	border: 7px solid transparent;
	border-right: 7px solid #212121;
	border-color: rgba(0,0,0,.16) transparent transparent transparent;
	z-index: 1;}
	/* end Дополнительное оформление скрытого элемента(необязательно) */
	/* Появление скрытого элемента при наведении */
	.yfymp_hover:hover + .yfymp_hint{display: block;}	
	</style>'; // column-{id колонки}
 }
 // создаём колонку
 function yfymp_yml_column_add($columns){
	$column_id = array('yfymp_yml' => __('YML', 'yfymp'));
	// третий атрибут в первом array_slice указывает, что колонка будет выведена после колонки #7
	$columns = array_slice($columns, 0, 7, true) + $column_id + array_slice($columns, 1, NULL, true);
	return $columns;
 }
 // заполняем колонку YML данными
 function yfymp_filling_column($column, $post_id) {	
	if ($column === 'yfymp_yml') {
		$vygruzhat = get_post_meta($post_id, 'vygruzhat', true); 
		$yfymp_removefromyml = get_post_meta($post_id, 'yfymp_removefromyml', true); ?>
		<div style="display: none;" id="vygruzhat-<?php echo $post_id; ?>"><?php echo get_post_meta($post_id, 'vygruzhat', true); ?></div>
		<div style="display: none;" id="yfymp_removefromyml-<?php echo $post_id; ?>"><?php echo get_post_meta($post_id, 'yfymp_removefromyml', true); ?></div>
		<?php if ($vygruzhat === 'on') : ?>
			<div class="yfymp_block">
				<div class="yfymp_hover"><span class="dashicons dashicons-yes-alt"></span></div>
				<span class="yfymp_hint"><?php _e('This product has been added to YML kit', 'yfymp'); ?></span>
			</div>
		<?php else : ?>
			<div class="yfymp_block">
				<div class="yfymp_hover"><span class="dashicons dashicons-marker"></span></span></div>
				<span class="yfymp_hint"><?php _e('This product has not been added to YML kit', 'yfymp'); ?></span>
			</div>
		<?php endif; 
		if ($yfymp_removefromyml === 'on') : ?>
			<div class="yfymp_block">
				<div class="yfymp_hover"><span class="dashicons dashicons-dismiss"></span></div>
				<span class="yfymp_hint"><?php _e('You have banned the transfer of data about this product to the all YML-feeds', 'yfymp'); ?></span>
			</div>
		<?php endif; 
		if (empty(get_post_meta($post_id, 'yfymp_removefromthisyml_arr', true)) || get_post_meta($post_id, 'yfymp_removefromthisyml_arr', true) == '') : else : ?>
			<div class="yfymp_block">
				<div class="yfymp_hover"><span class="dashicons dashicons-warning"></span></div>
				<span class="yfymp_hint"><?php _e('You have banned the transfer of data about this product to the some YML-feeds', 'yfymp'); ?></span>
			</div>
		<?php endif; ?>
	<?php }
 }
 // выводим галочки быстрого редактирования
 public function yfymp_quick_edit($column_name, $post_type) {
	//echo $column_name.' ';
	switch($column_name) {
	 case 'name': ?>
	  <fieldset class="inline-edit-col-right"><div class="inline-edit-col"><div class="inline-edit-group manage_stock_field">
		<span class="title"><?php _e('Settings for YML', 'yfymp'); ?></span>
		<label class="manage_stock">	
		   <input type="checkbox" name="vygruzhat"/>
		   <span class="checkbox-title"><?php _e('Add to YML kit', 'yfymp'); ?></span>
		</label>
		<label class="manage_stock">	
		   <input type="checkbox" name="yfymp_removefromyml"/>
		   <span class="checkbox-title"><?php _e('Forcefully remove product from YML-feed', 'yfymp'); ?></span>
		</label>
		<?php do_action('yfymp_append_remove_options_column', $column_name, $post_type); ?>
		<input type="hidden" name="yfymp_quick_edit" value="1" />
	  </div></div></fieldset><?php
	break;
	}
 } 
 function yfymp_enqueue_scripts_admin_edit() {
	wp_enqueue_script('yfymp-enqueue-scripts-admin-edit', yfymp_URL .'js/quick_edit.js', array('jquery', 'inline-edit-post' ), '', true );
 }

	public static function yfymp_add_meta_product_cat($term) { ?>
		<tr class="form-field">
			<th scope="row" valign="top"><label><?php _e("Don't use these settings for feeds", "yfymp"); ?></label></th>
			<td>	 
				<select style="width: 100%;" id="yfymp_disabled_for_feeds" name="yfymp_disabled_for_feeds[]" size="6" multiple>
					<?php 
					$yfymp_disabled_for_feeds_arr = get_term_meta($term->term_id, 'yfymp_disabled_for_feeds', 1);
					if (!is_array($yfymp_disabled_for_feeds_arr)) {$yfymp_disabled_for_feeds_arr = array();}
					if (is_multisite()) {$cur_blog_id = get_current_blog_id();} else {$cur_blog_id = '0';}
					$yfym_settings_arr = yfym_optionGET('yfym_settings_arr');
					$yfym_settings_arr_keys_arr = array_keys($yfym_settings_arr);
					for ($x = 0; $x < count($yfym_settings_arr_keys_arr); $x++) :
						$i = $yfym_settings_arr_keys_arr[$x]; ?>
						<option value="<?php echo $i; ?>" <?php if (in_array((string)$i, $yfymp_disabled_for_feeds_arr)) {echo 'selected';} ?>><?php _e('Feed', 'yfym'); ?> <?php echo $i; ?>: feed-yml-<?php echo $cur_blog_id; ?>.<?php $yfym_fe = yfym_optionGET('yfym_file_extension', (string)$i, 'set_arr'); if ($yfym_fe == '') {$yfym_fe = 'xml';} echo $yfym_fe; ?> <?php $assignment = yfym_optionGET('yfym_feed_assignment', $i, 'set_arr'); if ($assignment === '') {} else {echo '('.$assignment.')';} ?></option>
					<?php $i++; endfor; ?>
				</select>
			</td>
		</tr>
		<tr class="form-field">
			<th scope="row" valign="top"><label><?php _e('Multiply the price', 'yfymp'); ?></label></th>
			<td>
				<?php $yfymp_multiply_price_value = esc_attr(get_term_meta($term->term_id, 'yfymp_multiply_price_value', 1)); ?>
				<input type="number" step="any" name="yfymp_cat_meta[yfymp_multiply_price_value]" value="<?php echo $yfymp_multiply_price_value; ?>" />
				<p class="description"><?php _e('The product price will be multiplied by the value from this field. Leave this field blank to not change the price', 'yfymp'); ?></p>
			</td>
		</tr>
		<tr class="form-field">
			<th scope="row" valign="top"><label><?php _e('Add to price', 'yfymp'); ?><br />(<?php _e('negative values can be used', 'yfymp'); ?>)</label></th>
			<td>
				<?php $yfymp_add_to_price_value = esc_attr(get_term_meta($term->term_id, 'yfymp_add_to_price_value', 1)); ?>
				<input type="number" step="any" name="yfymp_cat_meta[yfymp_add_to_price_value]" value="<?php echo $yfymp_add_to_price_value; ?>" />
				<p class="description"><?php _e('This value will be added to the cost of the product. Leave this field blank to not change the price', 'yfymp'); ?></p>
			</td>
		</tr>
		<tr class="form-field">
			<th scope="row" valign="top"><label><?php _e('Category for Yandex Market', 'yfymp'); ?></label></th>
			<td>
				<?php $params_arr[] = esc_attr(get_term_meta($term->term_id, 'yfymp_ymarket', 1)); ?>		 
				<select style="width: 100%;" id="yfymp_ymarket" name="yfymp_cat_meta[yfymp_ymarket]">
				<option value="disabled" <?php selected(esc_attr(get_term_meta($term->term_id, 'yfymp_ymarket', 1)), 'disabled'); ?>><?php _e('Disabled', 'yfym'); ?></option>
				<?php 	
					foreach (get_terms('ymarket', array('hide_empty'=>0, 'parent'=>0)) as $term) {
						echo the_cat_tree($term->taxonomy, $term->term_id, $params_arr);		 
					} ?>
				</select>
				<p class="description"><?php _e('Category for Yandex Market', 'yfymp'); ?>. <a href="https://icopydoc.ru/para-sovetov-po-ispolzovaniyu-yml-for-yandex-market-pro/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=edit-category&utm_term=about-category-ymarket" target="_blank"><?php _e('Read more', 'yfymp'); ?></a></p>
			</td>
		</tr>
		<?php
	}
	/* Сохранение данных в БД */
	function yfymp_save_meta_product_cat($term_id){
		if (!isset($_POST['yfymp_cat_meta'])) {return;}
		$yfymp_cat_meta = array_map('trim', $_POST['yfymp_cat_meta']);
		foreach($yfymp_cat_meta as $key => $value){
			if(empty($value)){
				delete_term_meta($term_id, $key);
				continue;
			}
			update_term_meta($term_id, $key, $value);
		}

		if (isset($_POST['yfymp_cat_meta'])) {
			if (isset($_POST['yfymp_disabled_for_feeds'])) {
				$yfymp_disabled_for_feeds = $_POST['yfymp_disabled_for_feeds'];
			} else {
				$yfymp_disabled_for_feeds = '';
			}		
			if ($yfymp_disabled_for_feeds == '') {$yfymp_disabled_for_feeds = array();} 
			update_term_meta($term_id, 'yfymp_disabled_for_feeds', $yfymp_disabled_for_feeds);
		} else {
			update_term_meta($term_id, 'yfymp_disabled_for_feeds', array());
		}

		return $term_id;
	} 
 
 	public function simple_price_f($price_yml, $data_arr, $feed_id) {
		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $price_yml;}
		if (empty($price_yml) || $price_yml == 0) {return $price_yml;}
		$product = $data_arr['product'];
		$product_category_id = $data_arr['product_category_id'];

		$yfymp_disabled_for_feeds_arr = get_term_meta($product_category_id, 'yfymp_disabled_for_feeds', 1);
		if (!is_array($yfymp_disabled_for_feeds_arr)) {$yfymp_disabled_for_feeds_arr = array();}

		if (in_array($feed_id, $yfymp_disabled_for_feeds_arr)) {
			$yfymp_multiply_price_value = (float)0;
			$yfymp_add_to_price_value = (float)0;
		} else {
			$yfymp_multiply_price_value = (float)get_term_meta($product_category_id, 'yfymp_multiply_price_value', 1);
			$yfymp_add_to_price_value = (float)get_term_meta($product_category_id, 'yfymp_add_to_price_value', 1);
		}

		$post_id = $product->get_id();
		$yfymp_price_post_meta = yfym_optionGET('yfymp_price_post_meta', $feed_id, 'set_arr');
		if ($yfymp_price_post_meta !== '' && $yfymp_price_post_meta !== false) {
			if (get_post_meta($post_id, $yfymp_price_post_meta, true) !== '') {
				$price_yml = get_post_meta($post_id, $yfymp_price_post_meta, true);
			}
		}

		$price_yml = (float)$price_yml;
		if ($yfymp_multiply_price_value === (float)0) { // $yfymp_multiply_price_value === (float)1 || 
			$yfymp_multiply_price_value = (float)yfym_optionGET('yfymp_multiply_price_value', $feed_id, 'set_arr');
		} 	
		if ($yfymp_multiply_price_value === (float)1 || $yfymp_multiply_price_value === (float)0) {
			// $price_yml;
		} else {
			$price_yml = round($price_yml * $yfymp_multiply_price_value, 2);
		}

		if ($yfymp_add_to_price_value === (float)0) {
			$yfymp_add_to_price_value = (float)yfym_optionGET('yfymp_add_to_price_value', $feed_id, 'set_arr');
		} 
		if ($yfymp_add_to_price_value === (float)0) {
			// $price_yml;
		} else {
			$price_yml = round($price_yml + $yfymp_add_to_price_value, 2);
		}

		$price_yml = $this->round_price($price_yml, $feed_id);

		$price_yml = apply_filters('yfymp_simple_price_filter', $price_yml, array($product), $feed_id);
		return $price_yml;
	}

	public function variable_price_f($price_yml, $data_arr, $feed_id) {
		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $price_yml;}
		if (empty($price_yml) || $price_yml == 0) {return $price_yml;}
		$product = $data_arr['product'];
		$product_category_id = $data_arr['product_category_id'];
		$offer = $data_arr['offer'];
		$offer_id = $offer->get_id();

		$yfymp_disabled_for_feeds_arr = get_term_meta($product_category_id, 'yfymp_disabled_for_feeds', 1);
		if (!is_array($yfymp_disabled_for_feeds_arr)) {$yfymp_disabled_for_feeds_arr = array();}

		if (in_array($feed_id, $yfymp_disabled_for_feeds_arr)) {
			$yfymp_multiply_price_value = (float)0;
			$yfymp_add_to_price_value = (float)0;
		} else {
			$yfymp_multiply_price_value = (float)get_term_meta($product_category_id, 'yfymp_multiply_price_value', 1);
			$yfymp_add_to_price_value = (float)get_term_meta($product_category_id, 'yfymp_add_to_price_value', 1);			
		}

		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $price_yml;}

		$post_id = $product->get_id();
		$yfymp_price_post_meta = yfym_optionGET('yfymp_price_post_meta', $feed_id, 'set_arr');
		if ($yfymp_price_post_meta !== '' && $yfymp_price_post_meta !== false) {
			if (get_post_meta($post_id, $yfymp_price_post_meta, true) !== '') {
				$price_yml = get_post_meta($post_id, $yfymp_price_post_meta, true);
			}
		}

		$price_yml = (float)$price_yml;
		if ($yfymp_multiply_price_value === (float)0) { // $yfymp_multiply_price_value === (float)1 ||
			$yfymp_multiply_price_value = (float)yfym_optionGET('yfymp_multiply_price_value', $feed_id, 'set_arr');
		}
		if ($yfymp_multiply_price_value === (float)1 || $yfymp_multiply_price_value === (float)0) {
			// $price_yml;
		} else {
			$price_yml = round($price_yml * $yfymp_multiply_price_value, 2);
		}

		if ($yfymp_add_to_price_value === (float)0) {
			$yfymp_add_to_price_value = (float)yfym_optionGET('yfymp_add_to_price_value', $feed_id, 'set_arr');
		}
		if ($yfymp_add_to_price_value === (float)0) {
			// $price_yml;
		} else {
			$price_yml = round($price_yml + $yfymp_add_to_price_value, 2);
		}

		$price_yml = $this->round_price($price_yml, $feed_id);

		$price_yml = apply_filters('yfymp_variable_price_filter', $price_yml, array($product, $offer, $offer_id), $feed_id);
		return $price_yml;
	}


	public function yfymp_simple_price_filter_func($price_yml, $product, $feed_id) {
		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $price_yml;}

		$post_id = $product->get_id();
		$yfymp_price_post_meta = yfym_optionGET('yfymp_price_post_meta', $feed_id, 'set_arr');
		if ($yfymp_price_post_meta !== '' && $yfymp_price_post_meta !== false) {
			if (get_post_meta($post_id, $yfymp_price_post_meta, true) !== '') {
				$price_yml = get_post_meta($post_id, $yfymp_price_post_meta, true);
			}
		}

		$price_yml = (float)$price_yml;
		$yfymp_multiply_price_value = (float)yfym_optionGET('yfymp_multiply_price_value', $feed_id, 'set_arr');
		if ($yfymp_multiply_price_value === (float)1 || $yfymp_multiply_price_value === (float)0) {
			// $price_yml;
		} else {
			$price_yml = round($price_yml * $yfymp_multiply_price_value, 2);
		}

		$yfymp_add_to_price_value = (float)yfym_optionGET('yfymp_add_to_price_value', $feed_id, 'set_arr');
		if ($yfymp_add_to_price_value === (float)0) {
			// $price_yml;
		} else {
			$price_yml = round($price_yml + $yfymp_add_to_price_value, 2);
		}

		$price_yml = $this->round_price($price_yml, $feed_id);

		$price_yml = apply_filters('yfymp_simple_price_filter', $price_yml, array($product), $feed_id);
		return $price_yml;
	}
	public function yfymp_variable_price_filter_func($price_yml, $product, $offer, $offer_id, $feed_id) {
		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $price_yml;}

		$post_id = $product->get_id();
		$yfymp_price_post_meta = yfym_optionGET('yfymp_price_post_meta', $feed_id, 'set_arr');
		if ($yfymp_price_post_meta !== '' && $yfymp_price_post_meta !== false) {
			if (get_post_meta($post_id, $yfymp_price_post_meta, true) !== '') {
				$price_yml = get_post_meta($post_id, $yfymp_price_post_meta, true);
			}
		}

		$price_yml = (float)$price_yml;
		$yfymp_multiply_price_value = (float)yfym_optionGET('yfymp_multiply_price_value', $feed_id, 'set_arr');
		if ($yfymp_multiply_price_value === (float)1 || $yfymp_multiply_price_value === (float)0) {
			// $price_yml;
		} else {
			$price_yml = round($price_yml * $yfymp_multiply_price_value, 2);
		}

		$yfymp_add_to_price_value = (float)yfym_optionGET('yfymp_add_to_price_value', $feed_id, 'set_arr');
		if ($yfymp_add_to_price_value === (float)0) {
			// $price_yml;
		} else {
			$price_yml = round($price_yml + $yfymp_add_to_price_value, 2);
		}

		$price_yml = $this->round_price($price_yml, $feed_id);

		$price_yml = apply_filters('yfymp_variable_price_filter', $price_yml, array($product, $offer, $offer_id), $feed_id);
		return $price_yml;
	} 

	private function round_price($price_yml, $feed_id) {
		$yfymp_round_price_value = yfym_optionGET('yfymp_round_price_value', $feed_id, 'set_arr');
		switch ($yfymp_round_price_value) {
			case 'hundredths':
				$price_yml = round($price_yml, 2);
				break;
			case 'integers':
				$price_yml = round($price_yml, 0);
				break;
			case 'tens':
				$price_yml = round($price_yml, -1);
				break;
			case 'hundreds':
				$price_yml = round($price_yml, -2);
				break;
			case 'thousands':
				$price_yml = round($price_yml, -3);
				break;
			default:
				$price_yml = round($price_yml, 2);
		}
		return $price_yml;
	}

 // Добавляем блок Настройки акции на страницау создания поста акции
 public function yfymp_add_custom_box() {
	$screens = array('product');
	add_meta_box('yfymp_delivery_options', __('Settings for YML', 'yfymp'),  array($this,'yfymp_meta_box_callback'), $screens, 'side', 'high');
 } 
 // HTML код блока Настройки акции
 public function yfymp_meta_box_callback($post, $meta) {
	// $screens = $meta['args'];
	// Используем nonce для верификации
	wp_nonce_field(plugin_basename(__FILE__), 'yfym_noncename');

	$yfymp_meta = new stdClass; // читаем все метаполя
	foreach((array)get_post_meta($post->ID) as $k => $v) $yfymp_meta->$k = $v[0];
	if (property_exists($yfymp_meta, 'vygruzhat')) {$vygruzhat = $yfymp_meta->vygruzhat;} else {$vygruzhat = '';}
	if (property_exists($yfymp_meta, 'yfymp_removefromyml')) {$yfymp_removefromyml = $yfymp_meta->yfymp_removefromyml;} else {$yfymp_removefromyml = '';}
	if (property_exists($yfymp_meta, 'yfymp_removefromthisyml_arr')) {$yfymp_removefromthisyml_arr = unserialize($yfymp_meta->yfymp_removefromthisyml_arr);} else {$yfymp_removefromthisyml_arr = array();}
	// Поля формы для введения данных
	?>
	<table class="form-table"><tbody>
	 <tr>
		<th scope="row"><label for="vygruzhat"><?php _e('Add to YML kit', 'yfymp'); ?></label><br /><span class="description"><a target="_blank" href="https://icopydoc.ru/chto-takoe-yml-nabor/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=add_product&utm_term=about-yml-nabor"><?php _e('Read more', 'yfymp'); ?></a></span></th>
		<td class="overalldesc">
			<input type="checkbox" name="vygruzhat" id="vygruzhat" <?php checked($vygruzhat, 'on'); ?>/>
		</td>
	 </tr>
	 <tr>
		<th scope="row"><label for="yfymp_removefromyml"><?php _e('Forcefully remove product from all YML feeds', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<input type="checkbox" name="yfymp_removefromyml" id="yfymp_removefromyml" <?php checked($yfymp_removefromyml, 'on'); ?>/>
		</td>
		<input type="hidden" name="yfymp_full_edit" value="1" />		
	 </tr>
	 <tr>
		<th scope="row" colspan="2"><label for="yfymp_removefromthisyml_arr"><?php _e('Forcefully remove product from selected YML feeds', 'yfymp'); ?>:</label><br/><br/>
			<select style="width: 250px !important;" id="yfymp_removefromthisyml_arr" name="yfymp_removefromthisyml_arr[]" size="6" multiple>
				<?php 
					if (is_multisite()) {$cur_blog_id = get_current_blog_id();} else {$cur_blog_id = '0';}
						$yfym_settings_arr = yfym_optionGET('yfym_settings_arr');
						$yfym_settings_arr_keys_arr = array_keys($yfym_settings_arr);
						for ($x = 0; $x < count($yfym_settings_arr_keys_arr); $x++) :
							$i = $yfym_settings_arr_keys_arr[$x]; ?>
				<option value="<?php echo $i; ?>" <?php if (in_array((string)$i, $yfymp_removefromthisyml_arr)) {echo 'selected';} ?>><?php _e('Feed', 'yfym'); ?> <?php echo $i; ?>: feed-yml-<?php echo $cur_blog_id; ?>.<?php $yfym_fe = yfym_optionGET('yfym_file_extension', (string)$i, 'set_arr'); if ($yfym_fe == '') {$yfym_fe = 'xml';} echo $yfym_fe; ?> <?php $assignment = yfym_optionGET('yfym_feed_assignment', $i, 'set_arr'); if ($assignment === '') {} else {echo '('.$assignment.')';} ?></option>
				<?php $i++; endfor; ?>
			</select>
		</th>	
	 </tr>	 
	 <?php do_action('yfymp_append_remove_options', $yfymp_meta, $post, $meta); ?>
	</tbody></table><?php 
 }
 // Сохраняем данные блока, когда пост сохраняется
 function yfymp_save_post_product_function($post_id, $post, $update) {	
	yfym_error_log('PRO; Стартовала функция yfymp_save_post_product_function! Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);	
	if ($post->post_type !== 'product') {return;} // если это не товар вукомерц
	if (wp_is_post_revision($post_id)) {return;} // если это ревизия
	if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {return;}
	// проверяем права юзера
	if (!current_user_can('edit_post', $post_id)) {return;}
	// Все ОК. Теперь, нужно найти и сохранить данные
	// Очищаем значение поля input.
	yfym_error_log('PRO; Работает функция yfym_save_post_product_function! Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
	// Убедимся что поле установлено.
	if (isset($_POST['yfymp_full_edit']) || isset($_POST['yfymp_quick_edit'])) {
		if (isset($_POST['vygruzhat'])) {	
			yfym_error_log('PRO $post_id='.$post_id.'$_POST[vygruzhat] ='.$_POST['vygruzhat']. __LINE__, 0);
			$vygruzhat = sanitize_text_field($_POST['vygruzhat']);
			yfym_error_log('PRO $post_id='.$post_id.'$_POST[vygruzhat] ='.$_POST['vygruzhat']. __LINE__, 0);
			update_post_meta($post_id, 'vygruzhat', $vygruzhat);
		} else {
			update_post_meta($post_id, 'vygruzhat', '');
		}
		if (isset($_POST['yfymp_removefromyml'])) {	
			$yfymp_removefromyml = sanitize_text_field($_POST['yfymp_removefromyml']);
			update_post_meta($post_id, 'yfymp_removefromyml', $yfymp_removefromyml);		
		} else {
			update_post_meta($post_id, 'yfymp_removefromyml', '');
		}

		if (!isset($_POST['yfymp_quick_edit'])) {
			if (isset($_POST['yfymp_removefromthisyml_arr'])) {				
				update_post_meta($post_id, 'yfymp_removefromthisyml_arr', $_POST['yfymp_removefromthisyml_arr']);
			} else {update_post_meta($post_id, 'yfymp_removefromthisyml_arr', array());}
		}
	}
 }
 
 public function yfymp_variable_change_name_func($result_yml_name, $post_id, $product, $offer, $feed_id = '1') {	
	$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $result_yml_name;}
	yfym_error_log('FEED № '.$feed_id.'; PRO; Работает yfymp_variable_change_name_func; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);	  
	$result_yml_name = $product->get_name(); // нужна чтобы при уникализации заголовков "не двоило" заголовок
	$yfymp_name_var0 = yfym_optionGET('yfymp_name_var0', $feed_id, 'set_arr');
	$yfymp_name_var01 = yfym_optionGET('yfymp_name_var01', $feed_id, 'set_arr');
	$yfymp_name_var1 = yfym_optionGET('yfymp_name_var1', $feed_id, 'set_arr');
	$yfymp_name_var2 = yfym_optionGET('yfymp_name_var2', $feed_id, 'set_arr');
	$yfymp_name_var3 = yfym_optionGET('yfymp_name_var3', $feed_id, 'set_arr');

	$add_for_name_to_beginning_arr = array();
	$add_for_name_to_end_arr = array();

	if (!empty($yfymp_name_var0)) {
		switch ($yfymp_name_var0) { /* disabled, sku, или id */
		 case "disabled":	
			// выгружать штрихкод нет нужды
		 break; 
		 case "sku":
			// выгружать из артикула
			$sku_yml = $offer->get_sku(); // артикул
			if (!empty($sku_yml)) {
				$add_for_name_to_beginning_arr[] = $sku_yml;
			} else {
				// своего артикула у вариации нет. Пробуем подставить общий sku
				$sku_yml = $product->get_sku();
				if (!empty($sku_yml)) {
					$add_for_name_to_beginning_arr[] = $sku_yml;
				}
			}
		 break;
		 default:
			$yfymp_name_var0 = (int)$yfymp_name_var0;
			$yfymp_name_var0_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var0));
			if (!empty($yfymp_name_var0_yml)) {	
				$add_for_name_to_beginning_arr[] = ucfirst(urldecode($yfymp_name_var0_yml));		
			} else {
				$yfymp_name_var0_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var0));
				if (!empty($yfymp_name_var0_yml)) {	
					$add_for_name_to_beginning_arr[] = ucfirst(urldecode($yfymp_name_var0_yml));
				}
			}
		}
	}	

	if (!empty($yfymp_name_var01)) {
		switch ($yfymp_name_var01) { /* disabled, sku, или id */
		 case "disabled":	
			// выгружать штрихкод нет нужды
		 break; 
		 case "sku":
			// выгружать из артикула
			$sku_yml = $offer->get_sku(); // артикул
			if (!empty($sku_yml)) {
				$add_for_name_to_beginning_arr[] = $sku_yml;
			} else {
				// своего артикула у вариации нет. Пробуем подставить общий sku
				$sku_yml = $product->get_sku();
				if (!empty($sku_yml)) {
					$add_for_name_to_beginning_arr[] = $sku_yml;
				}
			}
		 break;
		 default:
			$yfymp_name_var01 = (int)$yfymp_name_var01;
			$yfymp_name_var01_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var01));
			if (!empty($yfymp_name_var01_yml)) {	
				$add_for_name_to_beginning_arr[] = ucfirst(urldecode($yfymp_name_var01_yml));		
			} else {
				$yfymp_name_var01_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var01));
				if (!empty($yfymp_name_var01_yml)) {	
					$add_for_name_to_beginning_arr[] = ucfirst(urldecode($yfymp_name_var01_yml));
				}
			}
		}
	}
	
	if (!empty($yfymp_name_var1)) {
		switch ($yfymp_name_var1) { /* disabled, sku, или id */
		 case "disabled":	
			// выгружать штрихкод нет нужды
		 break; 
		 case "sku":
			// выгружать из артикула
			$sku_yml = $offer->get_sku(); // артикул
			if (!empty($sku_yml)) {
				$add_for_name_to_end_arr[] = $sku_yml;
			} else {
				// своего артикула у вариации нет. Пробуем подставить общий sku
				$sku_yml = $product->get_sku();
				if (!empty($sku_yml)) {
					$add_for_name_to_end_arr[] = $sku_yml;
				}
			}
		 break;
		 default:
			$yfymp_name_var1 = (int)$yfymp_name_var1;
			$yfymp_name_var1_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var1));
			if (!empty($yfymp_name_var1_yml)) {	
				$add_for_name_to_end_arr[] = ucfirst(urldecode($yfymp_name_var1_yml));		
			} else {
				$yfymp_name_var1_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var1));
				if (!empty($yfymp_name_var1_yml)) {	
					$add_for_name_to_end_arr[] = ucfirst(urldecode($yfymp_name_var1_yml));
				}		
			}
		}		
	}

	if (!empty($yfymp_name_var2)) {
		switch ($yfymp_name_var2) { /* disabled, sku, или id */
		 case "disabled":	
			// выгружать штрихкод нет нужды
		 break; 
		 case "sku":
			// выгружать из артикула
			$sku_yml = $offer->get_sku(); // артикул
			if (!empty($sku_yml)) {
				$add_for_name_to_end_arr[] = $sku_yml;
			} else {
				// своего артикула у вариации нет. Пробуем подставить общий sku
				$sku_yml = $product->get_sku();
				if (!empty($sku_yml)) {
					$add_for_name_to_end_arr[] = $sku_yml;
				}
			}
		 break;
		 default:
			$yfymp_name_var2 = (int)$yfymp_name_var2;
			$yfymp_name_var2_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var2));
			if (!empty($yfymp_name_var2_yml)) {	
				$add_for_name_to_end_arr[] = ucfirst(urldecode($yfymp_name_var2_yml));		
			} else {
				$yfymp_name_var2_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var2));
				if (!empty($yfymp_name_var2_yml)) {	
					$add_for_name_to_end_arr[] = ucfirst(urldecode($yfymp_name_var2_yml));
				}		
			}
		}
	}

	if (!empty($yfymp_name_var3)) {
		switch ($yfymp_name_var3) { /* disabled, sku, или id */
		 case "disabled":	
			// выгружать штрихкод нет нужды
		 break; 
		 case "sku":
			// выгружать из артикула
			$sku_yml = $offer->get_sku(); // артикул
			if (!empty($sku_yml)) {
				$add_for_name_to_end_arr[] = $sku_yml;
			} else {
				// своего артикула у вариации нет. Пробуем подставить общий sku
				$sku_yml = $product->get_sku();
				if (!empty($sku_yml)) {
					$add_for_name_to_end_arr[] = $sku_yml;
				}
			}
		 break;
		 default:
			$yfymp_name_var3 = (int)$yfymp_name_var3;
			$yfymp_name_var3_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var3));
			if (!empty($yfymp_name_var3_yml)) {	
				$add_for_name_to_end_arr[] = ucfirst(urldecode($yfymp_name_var3_yml));
			} else {
				$yfymp_name_var3_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var3));
				if (!empty($yfymp_name_var3_yml)) {	
					$add_for_name_to_end_arr[] = ucfirst(urldecode($yfymp_name_var3_yml));
				}		
			}
		}
	}

	$result_yml_name = trim(sprintf('%s %s %s', implode(', ', $add_for_name_to_beginning_arr), $result_yml_name, implode(', ', $add_for_name_to_end_arr)));

	/* С версии 4.2.2 */
	$params_arr = array($yfymp_name_var0, $yfymp_name_var01, $yfymp_name_var1, $yfymp_name_var2, $yfymp_name_var3);
	$result_yml_name = apply_filters('yfymp_variable_change_name_filter', $result_yml_name, $post_id, $product, $offer, $params_arr, $feed_id);	
	
	yfym_error_log('FEED № '.$feed_id.'; PRO; $result_yml_name = '.$result_yml_name.'; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
	return $result_yml_name;
 } 



 function my_variable_change_name_filter_func($result_yml_name, $post_id, $product, $offer, $params_arr, $feed_id = '1') {
    $result_yml_name = $product->get_name();    
 	/*  if ($params_arr[0] !== 'disabled' || $params_arr[1] !== 'disabled') {
        $result_yml_name = $params_arr[0].$params_arr[1].' '.$result_yml_name;
    } */
    if ($params_arr[2] !== 'disabled' || $params_arr[3] !== 'disabled') {
		$res_name1 = ''; $res_name2 = '';
		$yfymp_name_var1 = (int)$params_arr[2];
		$yfymp_name_var1_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var1));
		if (!empty($yfymp_name_var1_yml)) {	
			$res_name1 = ucfirst(urldecode($yfymp_name_var1_yml));		
		} else {
			$yfymp_name_var1_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var1));
			if (!empty($yfymp_name_var1_yml)) {	
				$res_name1 = ucfirst(urldecode($yfymp_name_var1_yml));
			}		
		}

		$yfymp_name_var2 = (int)$params_arr[3];
		$yfymp_name_var2_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var2));
		if (!empty($yfymp_name_var2_yml)) {	
			$res_name2 = ucfirst(urldecode($yfymp_name_var2_yml));		
		} else {
			$yfymp_name_var2_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var2));
			if (!empty($yfymp_name_var2_yml)) {	
				$res_name2 = ucfirst(urldecode($yfymp_name_var2_yml));
			}		
		}

		if ($res_name1 !== '' || $res_name2 !== '') {
			$result_yml_name = $result_yml_name.' Размер: '.$params_arr[2].$params_arr[3];
		}
    }

    if ($params_arr[4] !== 'disabled') {
		$yfymp_name_var3 = (int)$params_arr[4];
		$yfymp_name_var3_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var3));
		if (!empty($yfymp_name_var3_yml)) {	
			$add_for_name_to_end = ucfirst(urldecode($yfymp_name_var3_yml));
			$result_yml_name = $result_yml_name.' Цвет: '.$add_for_name_to_end;
		} else {
			$yfymp_name_var3_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var3));
			if (!empty($yfymp_name_var3_yml)) {	
				$add_for_name_to_end = ucfirst(urldecode($yfymp_name_var3_yml));
				$result_yml_name = $result_yml_name.' Цвет: '.$add_for_name_to_end;
			}
		}
    }

    return $result_yml_name;
 }


 public function yfymp_change_name_func($result_yml_name, $post_id, $product, $feed_id = '1') {
	$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $result_yml_name;}
	yfym_error_log('FEED № '.$feed_id.'; PRO; Работает yfymp_change_name_func; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
	$yfymp_name_var0 = yfym_optionGET('yfymp_name_var0', $feed_id, 'set_arr');
	$yfymp_name_var01 = yfym_optionGET('yfymp_name_var01', $feed_id, 'set_arr');
	$yfymp_name_var1 = yfym_optionGET('yfymp_name_var1', $feed_id, 'set_arr');
	$yfymp_name_var2 = yfym_optionGET('yfymp_name_var2', $feed_id, 'set_arr');	
	$yfymp_name_var3 = yfym_optionGET('yfymp_name_var3', $feed_id, 'set_arr');

	$add_for_name_to_beginning_arr = array();
	$add_for_name_to_end_arr = array();
	$add_for_name_to_beginning_simple_arr = array();
	$add_for_name_to_end_simple_arr = array();

	if ($product->is_type('simple')) {
		$yfymp_simple_name_var0 = yfym_optionGET('yfymp_simple_name_var0', $feed_id, 'set_arr');
		$yfymp_simple_name_var1 = yfym_optionGET('yfymp_simple_name_var1', $feed_id, 'set_arr');
		$yfymp_simple_name_var2 = yfym_optionGET('yfymp_simple_name_var2', $feed_id, 'set_arr');

		if (!empty($yfymp_simple_name_var0) && $yfymp_simple_name_var0 !== 'disabled') {
			if ($yfymp_simple_name_var0 === 'sku') {
				$sku_yml = $product->get_sku();
				if (!empty($sku_yml)) {	
					$add_for_name_to_beginning_simple_arr[] = $sku_yml; //.' '.$result_yml_name;	
				}
			} else {
			   $yfymp_simple_name_var0 = (int)$yfymp_simple_name_var0;
			   $yfymp_simple_name_var0_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_simple_name_var0));
			   if (!empty($yfymp_simple_name_var0_yml)) {	
				$add_for_name_to_beginning_simple_arr[] = ucfirst(urldecode($yfymp_simple_name_var0_yml)); //.' '.$result_yml_name;	
			   }
			}
		}
		if (!empty($yfymp_simple_name_var1) && $yfymp_simple_name_var1 !== 'disabled') {
			if ($yfymp_simple_name_var1 === 'sku') {
			 $sku_yml = $product->get_sku();
			 if (!empty($sku_yml)) {	
			   $add_for_name_to_end_simple_arr[] = $sku_yml;	
			 }	 
			} else {
			   $yfymp_simple_name_var1 = (int)$yfymp_simple_name_var1;
			   $yfymp_simple_name_var1_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_simple_name_var1));
			   if (!empty($yfymp_simple_name_var1_yml)) {	
				   $add_for_name_to_end_simple_arr[] = ucfirst(urldecode($yfymp_simple_name_var1_yml));	
			   }
			}
		}	
		if (!empty($yfymp_simple_name_var2) && $yfymp_simple_name_var2 !== 'disabled') {
			if ($yfymp_simple_name_var2 === 'sku') {
			 $sku_yml = $product->get_sku();
			 if (!empty($sku_yml)) {	
			   $add_for_name_to_end_simple_arr[] = $sku_yml;	
			 }	 
			} else {
			   $yfymp_simple_name_var2 = (int)$yfymp_simple_name_var2;
			   $yfymp_simple_name_var2_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_simple_name_var2));
			   if (!empty($yfymp_simple_name_var2_yml)) {	
				   $add_for_name_to_end_simple_arr[] = ucfirst(urldecode($yfymp_simple_name_var2_yml));	
			   }
			}
		}			
	}
	
	if (!empty($yfymp_name_var0) && $yfymp_name_var0 !== 'disabled') {
	 if ($yfymp_name_var0 === 'sku') {
	  $sku_yml = $product->get_sku();
	  if (!empty($sku_yml)) {	
		$add_for_name_to_beginning_arr[] = $sku_yml;	
	  }	 
	 } else {
		$yfymp_name_var0 = (int)$yfymp_name_var0;
		$yfymp_name_var0_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var0));
		if (!empty($yfymp_name_var0_yml)) {	
			$add_for_name_to_beginning_arr[] = ucfirst(urldecode($yfymp_name_var0_yml));
		}
	 }
	}

	if (!empty($yfymp_name_var01) && $yfymp_name_var01 !== 'disabled') {
		if ($yfymp_name_var01 === 'sku') {
			$sku_yml = $product->get_sku();
			if (!empty($sku_yml)) {	
				$add_for_name_to_beginning_arr[] = $sku_yml;	
			}	 
		} else {
			$yfymp_name_var01 = (int)$yfymp_name_var01;
			$yfymp_name_var01_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var01));
			if (!empty($yfymp_name_var01_yml)) {	
				$add_for_name_to_beginning_arr[] = ucfirst(urldecode($yfymp_name_var01_yml));
			}
		}
	}	
	
	if (!empty($yfymp_name_var1) && $yfymp_name_var1 !== 'disabled') {
		if ($yfymp_name_var1 === 'sku') {
			$sku_yml = $product->get_sku();
			if (!empty($sku_yml)) {	
				$add_for_name_to_end_arr[] = $sku_yml;	
			}	 
		} else {
			$yfymp_name_var1 = (int)$yfymp_name_var1;
			$yfymp_name_var1_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var1));
			if (!empty($yfymp_name_var1_yml)) {	
				$add_for_name_to_end_arr[] = ucfirst(urldecode($yfymp_name_var1_yml));	
			}
		}
	} 
	
	if (!empty($yfymp_name_var2) && $yfymp_name_var2 !== 'disabled') {	
		if ($yfymp_name_var2 === 'sku') {
			$sku_yml = $product->get_sku();
			if (!empty($sku_yml)) {	
				$add_for_name_to_end_arr[] = $sku_yml;	
			}	 
		} else {
			$yfymp_name_var2 = (int)$yfymp_name_var2;
			$yfymp_name_var2_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var2));
			if (!empty($yfymp_name_var2_yml)) {	
				$add_for_name_to_end_arr[] = ucfirst(urldecode($yfymp_name_var2_yml));	
			}
		}
	} 

	if (!empty($yfymp_name_var3) && $yfymp_name_var3 !== 'disabled') {
		if ($yfymp_name_var3 === 'sku') {
			$sku_yml = $product->get_sku();
			if (!empty($sku_yml)) {	
				$add_for_name_to_end_arr[] = $sku_yml;	
			}
		} else {
			$yfymp_name_var3 = (int)$yfymp_name_var3;
			$yfymp_name_var3_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_name_var3));
			if (!empty($yfymp_name_var3_yml)) {	
				$add_for_name_to_end_arr[] = ucfirst(urldecode($yfymp_name_var3_yml));	
			}
		}
	} 

	$result_yml_name = trim(sprintf('%s %s %s %s %s', implode(', ', $add_for_name_to_beginning_arr), implode(', ', $add_for_name_to_beginning_simple_arr), $result_yml_name, implode(', ', $add_for_name_to_end_simple_arr), implode(', ', $add_for_name_to_end_arr)));

	/* С версии 4.2.2 */
	$params_arr = array($yfymp_name_var0, $yfymp_name_var01, $yfymp_name_var1, $yfymp_name_var2, $yfymp_name_var3);
	$result_yml_name = apply_filters('yfymp_change_name_filter', $result_yml_name, $post_id, $product, $params_arr, $feed_id);
	
	yfym_error_log('FEED № '.$feed_id.'; PRO; $result_yml_name = '.$result_yml_name.'; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
	return $result_yml_name;
 } 
 
 
 public function yfymp_add_new_taxonomies() {
	register_taxonomy('ymarket',
		array('product'), // для какого типа поста добавить
		array(
			'hierarchical' => true,
			/* true - по типу рубрик, 
			* false - по типу меток (по умолчанию) */
			'labels' => array(
				/* ярлыки, нужные при создании UI, можете
				не писать ничего, тогда будут использованы
				ярлыки по умолчанию */
				'name' => __('Categories for Yandex Market', 'yfymp'),
				'singular_name' => __('Category', 'yfymp'),
				'search_items' =>  __('Search Category', 'yfymp'),
				'popular_items' => null, // __('Популярные категории', 'yfymp'),
				'all_items' => __('All Categories', 'yfymp'),
				'parent_item' => null,
				'parent_item_colon' => null,
				'edit_item' => __('Edit Category', 'yfymp'), 
				'update_item' => __('Update Category', 'yfymp'),
				'add_new_item' => __('Add New Category', 'yfymp'),
				'new_item_name' => __('New Category Name', 'yfymp'),
				// 'separate_items_with_commas' => __('Separate items with commas', 'yfymp'),
				'add_or_remove_items' => __('Add or Remove', 'yfymp'),
				// 'choose_from_most_used' => __('Choose from most used', 'yfymp'),
				'menu_name' => __('Categories for Yandex Market', 'yfymp')
			),
		//	'public' => true, /* каждый может использовать таксономию, либо только администраторы, по умолчанию - true */
			'show_ui' => true, /* добавить интерфейс создания и редактирования */
			'publicly_queryable' => false, // нужно ли элементы данной таксономии сделать доступными для добавления в меню сайта. По умолчанию: значение аргумента public.
			'show_in_nav_menus' => false, /* добавить на страницу создания меню */
			'show_tagcloud' => false, /* нужно ли разрешить облако тегов для этой таксономии */
			'update_count_callback' => '_update_post_term_count', /* callback-функция для обновления счетчика $object_type */
			'query_var' => true, /* разрешено ли использование query_var, также можно указать строку, которая будет использоваться в качестве него, по умолчанию - имя таксономии */
			'rewrite' => array(	/* настройки URL пермалинков */
				'slug' => 'ymarket', // ярлык
				'hierarchical' => true // разрешить вложенность
			),
		)
	);	
 }
 
 public function yfymp_description_filter_func($description_yml, $post_id, $product, $feed_id = '1') {
  $yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $description_yml;}
 
  $yfym_desc = yfym_optionGET('yfym_desc', $feed_id, 'set_arr');
  if ($yfym_desc === 'post_meta') {
	$yfymp_desc_post_meta = yfym_optionGET('yfymp_desc_post_meta', $feed_id, 'set_arr');
	if (get_post_meta($post_id, $yfymp_desc_post_meta, true) !== '') {
		$description_yml = get_post_meta($post_id, $yfymp_desc_post_meta, true);
		$enable_tags = '<p>,<h3>,<ul>,<li>,<br/>,<br>';		
		$enable_tags = apply_filters('yfym_enable_tags_filter', $enable_tags, $feed_id);	
		$description_yml = strip_tags($description_yml, $enable_tags);
		$description_yml = str_replace('<br>', '<br/>', $description_yml);
		$description_yml = strip_shortcodes($description_yml);
	} else {
		$description_yml = '';
	}
  }

  $yfymp_use_del_vc = yfym_optionGET('yfymp_use_del_vc', $feed_id, 'set_arr');
  if ($yfymp_use_del_vc === 'on') {
	$description_yml = yfymp_del_visual_composer($description_yml);
  }
  $yfymp_del_tags_atr = yfym_optionGET('yfymp_del_tags_atr', $feed_id, 'set_arr');
  if ($yfymp_del_tags_atr === 'on') {
	$description_yml = preg_replace("#(</?\w+)(?:\s(?:[^<>/]|/[^<>])*)?(/?>)#ui", '$1$2', $description_yml);
  }
  return $description_yml;
 }
 
 public function yfymp_simple_url_filter_func($result_url, $product, $catid = '', $feed_id = '1') {
	$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $result_url;}
  
	$yfymp_use_utm = yfym_optionGET('yfymp_use_utm', $feed_id, 'set_arr');
	$yfymp_utm_source = stripslashes(htmlspecialchars(yfym_optionGET('yfymp_utm_source', $feed_id, 'set_arr')));
	$yfymp_utm_campaign = stripslashes(htmlspecialchars(yfym_optionGET('yfymp_utm_campaign', $feed_id, 'set_arr')));
	$yfymp_utm_campaign = str_replace('{catid}', $catid, $yfymp_utm_campaign);
	$yfymp_utm_campaign = str_replace('{productid}', $product->get_id(), $yfymp_utm_campaign);
	$yfymp_utm_content = yfym_optionGET('yfymp_utm_content', $feed_id, 'set_arr');
	$yfymp_utm_medium = stripslashes(htmlspecialchars(yfym_optionGET('yfymp_utm_medium', $feed_id, 'set_arr'))); 
	$yfymp_utm_medium = str_replace('{catid}', $catid, $yfymp_utm_medium);
	$yfymp_utm_medium = str_replace('{productid}', $product->get_id(), $yfymp_utm_medium);
  
	$yfymp_roistat = yfym_optionGET('yfymp_roistat', $feed_id, 'set_arr');
	if ($yfymp_roistat !=='') {
		$yfymp_roistat = str_replace('{catid}', $catid, $yfymp_roistat);
		$yfymp_roistat = str_replace('{productid}', $product->get_id(), $yfymp_roistat); 
		$yfymp_roistat = str_replace('{productorvarid}', $product->get_id(), $yfymp_roistat);		
	}
  
	if ($yfymp_utm_content === 'catid') {
	  $utm_content_res = $catid;
	} else {
	  $utm_content_res = $product->get_id();
	}
	
	if ($yfymp_use_utm === 'on') {
		$result_url = $result_url.'?utm_source='.$yfymp_utm_source.'&amp;utm_campaign='.$yfymp_utm_campaign.'&amp;utm_content='.$utm_content_res.'&amp;utm_medium='.$yfymp_utm_medium.'&amp;utm_term='.$product->get_id();	
		if ($yfymp_roistat !== '') {$result_url = $result_url.'&amp;rs='.$yfymp_roistat;}
	}
	$result_url = apply_filters('yfym_pro_simple_url_filter', $result_url, $product, $catid, $yfymp_use_utm, $feed_id);
	return $result_url;
 } 

 public function yfymp_variable_url_filter_func($result_url, $product, $offer, $catid = '', $feed_id = '1') {
	$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $result_url;}

	$yfymp_use_utm = yfym_optionGET('yfymp_use_utm', $feed_id, 'set_arr');
	$yfymp_utm_source = stripslashes(htmlspecialchars(yfym_optionGET('yfymp_utm_source', $feed_id, 'set_arr')));
	$yfymp_utm_campaign = stripslashes(htmlspecialchars(yfym_optionGET('yfymp_utm_campaign', $feed_id, 'set_arr')));
	$yfymp_utm_campaign = str_replace('{catid}', $catid, $yfymp_utm_campaign);
	$yfymp_utm_campaign = str_replace('{productid}', $product->get_id(), $yfymp_utm_campaign);
	$yfymp_utm_content = yfym_optionGET('yfymp_utm_content', $feed_id, 'set_arr');
	$yfymp_utm_medium = stripslashes(htmlspecialchars(yfym_optionGET('yfymp_utm_medium', $feed_id, 'set_arr'))); 
	$yfymp_utm_medium = str_replace('{catid}', $catid, $yfymp_utm_medium);
	$yfymp_utm_medium = str_replace('{productid}', $product->get_id(), $yfymp_utm_medium);
  	
	$yfymp_roistat = yfym_optionGET('yfymp_roistat', $feed_id, 'set_arr');
	if ($yfymp_roistat !=='') {	
		$yfymp_roistat = str_replace('{catid}', $catid, $yfymp_roistat);
		$yfymp_roistat = str_replace('{productid}', $product->get_id(), $yfymp_roistat); 
		$yfymp_roistat = str_replace('{productorvarid}', $offer->get_id(), $yfymp_roistat); 
	}

	if ($yfymp_utm_content === 'catid') {
	  $utm_content_res = $catid;
	} else {
	  $utm_content_res = $product->get_id();
	}
	
	if ($yfymp_use_utm === 'on') {
		if (strpos($result_url, '?') == false) {
			$result_url = $result_url.'?utm_source='.$yfymp_utm_source.'&amp;utm_campaign='.$yfymp_utm_campaign.'&amp;utm_content='.$utm_content_res.'&amp;utm_medium='.$yfymp_utm_medium.'&amp;utm_term='.$product->get_id();
			if ($yfymp_roistat !== '') {$result_url = $result_url.'&amp;rs='.$yfymp_roistat;}
		} else {
			$result_url = $result_url.'&amp;utm_source='.$yfymp_utm_source.'&amp;utm_campaign='.$yfymp_utm_campaign.'&amp;utm_content='.$utm_content_res.'&amp;utm_medium='.$yfymp_utm_medium.'&amp;utm_term='.$product->get_id();
			if ($yfymp_roistat !== '') {$result_url = $result_url.'&amp;rs='.$yfymp_roistat;}
		}
	}
	$result_url = apply_filters('yfym_pro_variable_url_filter', $result_url, $product, $offer, $catid, $yfymp_use_utm, $feed_id); /* c версии 4.1.1 добавлены $product, $offer, $catid, $yfymp_use_utm */
	return $result_url;
 }  
  
 public function yfymp_admin_notices_function() {
	$yfymp_license_status = yfymp_license_status();
	// yfym_error_log('PRO; $yfymp_license_status = '.$yfymp_license_status.'; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
 
	switch ($yfymp_license_status) {
		case "expired":
			print '<div class="notice error is-dismissible"><p>'.
			__('License expired', 'yfymp').'! '.__('Your Yml for Yandex Market Pro license has expired! The ability to update the plugin is also not available to you. Please renew your license. Do not forget to use the promo code', 'yfymp'). ' <span style="font-weight: 700;">renewlicense20yp</span> ' .__('to get a discount', 'yfymp'). '! <a href="/wp-admin/admin.php?page=yfymexport">'. __('Enter your license information', 'yfymp').'</a> '. __('or', 'yfymp'). ' <a href="https://icopydoc.ru/product/yml-for-yandex-market-pro/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=notice&utm_term=license-expired" target="_blank">'. __('purchase a new one', 'yfymp'). '</a>.</p></div>';
			break;
		case "no":
			print '<div class="notice error is-dismissible"><p>'. __('License data is invalid', 'yfymp').'! '.__('PRO version features do not work and you can not install updates', 'yfymp'). '! <a href="/wp-admin/admin.php?page=yfymexport">'. __('Enter your license information', 'yfymp').'</a> '. __('or', 'yfymp'). ' <a href="https://icopydoc.ru/product/yml-for-yandex-market-pro/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=license-err&utm_term=notice" target="_blank">'. __('purchase a new one', 'yfymp'). '</a>.</p></div>';
			break;
		case "limit":
			print '<div class="notice error is-dismissible"><p>'. __('This license cannot be used on this site. The package limit has been exceeded', 'yfymp'). '! <a href="/wp-admin/admin.php?page=yfymexport">'. __('Enter another license information', 'yfymp').'</a> '. __('or', 'yfymp'). ' <a href="https://icopydoc.ru/product/yml-for-yandex-market-pro/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=license-limit&utm_term=notice" target="_blank">'. __('purchase a new one', 'yfymp'). '</a>.</p></div>';
			break;
	}
	if (is_multisite()) {
		$yfymp_license_date = get_blog_option(get_current_blog_id(), 'yfymp_license_date');
		$yfym_version = get_blog_option(get_current_blog_id(), 'yfym_version');
	} else {
		$yfymp_license_date = get_option('yfymp_license_date');
		$yfym_version = get_option('yfym_version');
	} 
		
	if (version_compare($yfym_version, '3.7.0', '<')) { // не совпали версии

	}

	if ($yfymp_license_date !== '0') {
		$cur_date = current_time('timestamp');
		$remaining_seconds = $yfymp_license_date - $cur_date;
		$remaining_days = ceil(($remaining_seconds / (24 * 60 * 60)));
		if ($remaining_days > 0 && $remaining_days < 8 ) {
			print '<div class="notice notice-warning"><p>'. __('License', 'yfymp').' <span style="font-weight: 700;">Yml for Yandex Market Pro</span> '. __('expires in', 'yfymp').' <span style="font-weight: 700; color: red;">'.yfymp_num_decline($remaining_days, [__('day', 'yfymp'), _x('days', '2 days', 'yfymp'), _x('days', '5 days', 'yfymp')]).'</span>!'.' '.__('Please', 'yfymp').', <a href="https://icopydoc.ru/product/yml-for-yandex-market-pro/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=notice&utm_term=license-remaining" target="_blank">'. __('buy a new license', 'yfymp'). '</a>. ' .__('Do not forget to use the promo code', 'yfymp'). ' <span style="font-weight: 700;">renewlicense20yp</span> ' . __('to get a discount', 'yfymp'). '. '. __('If you have already done this, then', 'yfymp'). ' <a href="/wp-admin/admin.php?page=yfymexport">'. __('enter new license information', 'yfymp'). '</a>.</p></div>';
		}	
	}	
 }  

	public function yfymp_args_terms_arr_filter_func($args_terms_arr, $feed_id = '1') {
		$params_arr = unserialize(yfym_optionGET('yfymp_exclude_cat_arr', $feed_id));
		$yfymp_do = yfym_optionGET('yfymp_do', $feed_id, 'set_arr');
		if (empty($params_arr)) {return $args_terms_arr;}
		if ($yfymp_do == 'include') {
			// подумать над тем, как собрать еще и id-шники дочерних категорий
			// $args_terms_arr['include'] = $params_arr;
		} else {
			$args_terms_arr['exclude_tree'] = $params_arr;
		}
		return $args_terms_arr;
	}

	public function yfymp_query_arg_filter_func($args, $feed_id = '1') {
		/*
		* Функция отвечает за исключение/включение товаров по категориям
		* и по цене
		*/
		$yfymp_ls = yfymp_ls();	if ($yfymp_ls == false) {return $args;}
		$params_arr = unserialize(yfym_optionGET('yfymp_exclude_cat_arr', $feed_id));
		$yfymp_do = yfym_optionGET('yfymp_do', $feed_id, 'set_arr');
		/* $yfymp_compare = yfym_optionGET('yfymp_compare', $feed_id, 'set_arr');
		$yfymp_compare_value = yfym_optionGET('yfymp_compare_value', $feed_id, 'set_arr'); */
			
		if (empty($params_arr)) {return $args;}		
		if ($yfymp_do == 'include') {
		$args['tax_query'] = array('relation' => 'OR',
			array(
				'taxonomy' => 'product_cat',
				'field'    => 'id',
				'terms'    => $params_arr,
				'operator' => 'IN',
			),
			array(
				'taxonomy' => 'product_tag',
				'field'    => 'id',
				'terms'    => $params_arr,
				'operator' => 'IN',
			)
		);	
		} else {
		$args['tax_query'] = array('relation' => 'AND',
			array(
				'taxonomy' => 'product_cat',
				'field'    => 'id',
				'terms'    => $params_arr,
				'operator' => 'NOT IN',
			),
			array(
				'taxonomy' => 'product_tag',
				'field'    => 'id',
				'terms'    => $params_arr,
				'operator' => 'NOT IN',
			)
		);
		}
		return $args;
	}

 public function yfymp_append_simple_offer_filter_func($result_yml, $product, $feed_id = '1') {
	$yfymp_ls = yfymp_ls();	if ($yfymp_ls == false) {return $result_yml;}

	$yfymp_diagonal = yfym_optionGET('yfymp_diagonal', $feed_id, 'set_arr');
	$yfymp_diagonal_chart = yfym_optionGET('yfymp_diagonal_chart', $feed_id, 'set_arr');
	$yfymp_diagonal_chart_from = yfym_optionGET('yfymp_diagonal_chart_from', $feed_id, 'set_arr');	 
	 
	$yfymp_tester = yfym_optionGET('yfymp_tester', $feed_id, 'set_arr');		 
	
	if ($yfymp_diagonal !== 'off') {
	$yfymp_diagonal = (int)$yfymp_diagonal;
	$yfymp_diagonal_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_diagonal));
		if (!empty($yfymp_diagonal_yml)) {	
			if ($yfymp_diagonal_chart_from !== 'off') {
				$yfymp_diagonal_chart_from = (int)$yfymp_diagonal_chart_from;
				$yfymp_diagonal_chart_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_diagonal_chart_from));
				if (!empty($yfymp_diagonal_chart_yml)) {
					$result_yml .= '<param name="Размер экрана" unit="'.$yfymp_diagonal_chart_yml.'">'.$yfymp_diagonal_yml.'</param>'.PHP_EOL;
				} else {
					$result_yml .= '<param name="Размер экрана" unit="'.$yfymp_diagonal_chart.'">'.$yfymp_diagonal_yml.'</param>'.PHP_EOL;	
				}
			} else {
				$result_yml .= '<param name="Размер экрана" unit="'.$yfymp_diagonal_chart.'">'.$yfymp_diagonal_yml.'</param>'.PHP_EOL;
			}
		}
	}	

	if (!empty($yfymp_tester) && $yfymp_tester !== 'off') {	
		$yfymp_tester = (int)$yfymp_tester;
		$yfymp_tester_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_tester));
		if (!empty($yfymp_tester_yml)) {	
			$result_yml .= new YFYM_Get_Paired_Tag('param', urldecode($yfymp_tester_yml), array('name' => 'Тестер'));
		}
	}
	
	$n = '1';
	if (!defined('yfymp_PARAM_N')) {define('yfymp_PARAM_N', 15);}
	for ($i = 0; $i < yfymp_PARAM_N; $i++) {
		$yfymp_p_use = 'yfymp_p_use'.$n;
		$yfymp_p_name_s = 'yfymp_p_name_s'.$n;
		$yfymp_p_name_custom = 'yfymp_p_name_custom'.$n;
		$yfymp_p_unit_s = 'yfymp_p_unit_s'.$n;
		$yfymp_p_unit_default_s = 'yfymp_p_unit_default_s'.$n;
		$yfymp_p_unit_custom = 'yfymp_p_unit_custom'.$n;
		$yfymp_p_val_s = 'yfymp_p_val_s'.$n;
		$yfymp_p_val_custom = 'yfymp_p_val_custom'.$n;	

		$yfymp_p_use_res = yfym_optionGET($yfymp_p_use, $feed_id, 'custom_set_arr', 'p_arr'); 
		if ($yfymp_p_use_res === 'on') { // конструктов ключён
			$name_param = ''; // имя параметра
			$attr_param_arr = array(); // атрибуты параметра
			$value_param = ''; // значение параметра

			$yfymp_p_name_custom_res = yfym_optionGET($yfymp_p_name_custom, $feed_id, 'custom_set_arr', 'p_arr');
			if ($yfymp_p_name_custom_res !== '') {
				$name_param = $yfymp_p_name_custom_res;
			} else {
				$name_param = yfym_optionGET($yfymp_p_name_s, $feed_id, 'custom_set_arr', 'p_arr'); 
			}
			$attr_param_arr['name'] = $name_param;

			// unit
			$yfymp_p_unit_s_res = yfym_optionGET($yfymp_p_unit_s, $feed_id, 'custom_set_arr', 'p_arr');
			if ($yfymp_p_unit_s_res === 'disabled' || $yfymp_p_unit_s_res == '' ) {
				// без unit
			} else {				
				$yfymp_p_unit_custom_res = yfym_optionGET($yfymp_p_unit_custom, $feed_id, 'custom_set_arr', 'p_arr');
				if ($yfymp_p_unit_custom_res !== '') {
					$attr_param_arr['unit'] = $yfymp_p_unit_custom_res; // значение по умолчанию
				} else {
					$yfymp_p_unit_s_res = yfym_optionGET($yfymp_p_unit_s, $feed_id, 'custom_set_arr', 'p_arr'); 
					if ($yfymp_p_unit_s_res !== 'disabled') {
						$yfymp_p_unit_s_res = (int)$yfymp_p_unit_s_res;
						$yfymp_p_unit_s_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_p_unit_s_res));
						if (!empty($yfymp_p_unit_s_yml)) {	
							$attr_param_arr['unit'] = $yfymp_p_unit_s_yml;
						} else {
							$yfymp_p_unit_default_s_res = yfym_optionGET($yfymp_p_unit_default_s, $feed_id, 'custom_set_arr', 'p_arr');
							$attr_param_arr['unit'] = $yfymp_p_unit_default_s_res;
						}
					}
				}
			}

			$yfymp_p_val_custom_res = yfym_optionGET($yfymp_p_val_custom, $feed_id, 'custom_set_arr', 'p_arr');
			if ($yfymp_p_val_custom_res == '') {
				$yfymp_p_val_s_res = yfym_optionGET($yfymp_p_val_s, $feed_id, 'custom_set_arr', 'p_arr'); 
				$yfymp_p_val_s_res = (int)$yfymp_p_val_s_res;
				$value_param = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_p_val_s_res));				
			} else {
				$value_param = $yfymp_p_val_custom_res;
			}

			if ($name_param !=='' && $value_param !== '') {
				$result_yml .= new YFYM_Get_Paired_Tag('param', $value_param, $attr_param_arr);
			}
		}
		$n++;
	}
	return $result_yml;
 }
 
 public function yfymp_pic_simple_offer_filter_func($picture_yml, $product, $feed_id = '1') {
	$yfymp_ls = yfymp_ls();	if ($yfymp_ls == false) {return $picture_yml;}

	$num_pic = yfym_optionGET('yfymp_num_pic', $feed_id, 'set_arr'); 
	$excl_thumb = yfym_optionGET('yfymp_excl_thumb', $feed_id, 'set_arr'); 
	$num_pic = apply_filters('yfymp_num_pic_simple_filter', $num_pic, $picture_yml, $product, $feed_id); /* с версии 4.0.9 */

	/* если запрет на выгрузку миниатюры - очистим picture_yml */
	if ($excl_thumb == 'on') {$picture_yml = '';}
	if ($num_pic == 0) {return $picture_yml;} 
	
	// error_log('excl_thumb = '.$excl_thumb, 0);
	// $attachment_ids = $product->get_gallery_attachment_ids();
	$attachment_ids = $product->get_gallery_image_ids();
	$i = 1;

	$no_default_png_products = yfym_optionGET('yfym_no_default_png_products', $feed_id, 'set_arr');
	foreach($attachment_ids as $attachment_id) {
	 //if ($thumb_id == $attachment_id) {continue;}
	 $pic_gal = wp_get_attachment_image_src($attachment_id, 'full', true);
	 $pic_gal_url = $pic_gal[0]; /* урл оригинала картинки в галерее товара */	
	 
	 if ($no_default_png_products === 'on') {
		$pos = strpos($pic_gal_url, 'default.png');
		if ($pos === false) {} else {continue;}	
	 }
 
	 $picture_yml .= '<picture>'.deleteGET($pic_gal_url).'</picture>'.PHP_EOL;
	 if ($i == $num_pic) {break;}
	 $i++; 
	}

	/* с версии 4.0.4 */
	$picture_yml = apply_filters('yfymp_pic_simple_offer_filter', $picture_yml, $product, $feed_id);
	return $picture_yml; 
 }

 public function yfymp_pic_variable_offer_filter_func($picture_yml, $product, $feed_id = '1', $offer = null) {
	$yfymp_ls = yfymp_ls();	if ($yfymp_ls == false) {return $picture_yml;}
	$num_pic = yfym_optionGET('yfymp_num_pic', $feed_id, 'set_arr'); 
	$excl_thumb = yfym_optionGET('yfymp_excl_thumb', $feed_id, 'set_arr'); 
	$num_pic = apply_filters('yfymp_num_pic_variable_filter', $num_pic, $picture_yml, $product, $offer, $feed_id); /* с версии 4.0.9 */

	/* если запрет на выгрузку миниатюры - очистим picture_yml */
	if ($excl_thumb == 'on') {$picture_yml = '';}
	if ($num_pic == 0) {return $picture_yml;} 
	
	// error_log('excl_thumb = '.$excl_thumb, 0);
	// $attachment_ids = $product->get_gallery_attachment_ids();
	
	$add_attachment_ids = array(); // id доп.картинок
	if ($offer === null) {} else {$add_attachment_ids = $offer->get_gallery_image_ids();} // добавим индивидуальные картинки вариаций

	$yfymp_add_from_prod_gallery = yfym_optionGET('yfymp_add_from_prod_gallery', $feed_id, 'set_arr');
	if ($yfymp_add_from_prod_gallery === 'enabled') {		
		$add_attachment_ids = array_merge($add_attachment_ids, $product->get_gallery_image_ids());
	}
	/*
	yfym_error_log('$add_attachment_ids =; Строка: '.__LINE__, 0);
	yfym_error_log($add_attachment_ids, 0);
	*/
	if (class_exists('WooProductVariationGallery') || class_exists('WooProductVariationGalleryPro')) {
		// установлин плагин допкартинок для вариаций
		$offer_id = absint($offer->get_id());
		$offer_image_id = absint($offer->get_image_id());
		$has_variation_gallery_images = (bool)get_post_meta($offer_id, 'rtwpvg_images', true);
		if ($has_variation_gallery_images) { 
			$gallery_images = (array)get_post_meta($offer_id, 'rtwpvg_images', true);
			$attachment_ids = $gallery_images; // в приоритете галерея вариации
			foreach($add_attachment_ids as $attachment_id) {
				if (in_array($attachment_id, $attachment_ids)) {
					continue;
				} else {
					$attachment_ids[] = $attachment_id;
				}			
			}
		} else {
			$attachment_ids = $add_attachment_ids;
		}
	} else {
		$attachment_ids = $add_attachment_ids;
	}

	$i = 1;
	$no_default_png_products = yfym_optionGET('yfym_no_default_png_products', $feed_id, 'set_arr');
	foreach($attachment_ids as $attachment_id) {
		//if ($thumb_id == $attachment_id) {continue;}
		$pic_gal = wp_get_attachment_image_src($attachment_id, 'full', true);
		$pic_gal_url = $pic_gal[0]; /* урл оригинала картинки в галерее товара */	

		if ($no_default_png_products === 'on') {
			$pos = strpos($pic_gal_url, 'default.png');
			if ($pos === false) {} else {continue;}	
		}	 

		$picture_yml .= '<picture>'.deleteGET($pic_gal_url).'</picture>'.PHP_EOL;
		if ($i == $num_pic) {break;}
		$i++; 
	}

	/* с версии 4.0.4 */
	$picture_yml = apply_filters('yfymp_pic_variable_offer_filter', $picture_yml, $product, $feed_id, $offer);
	return $picture_yml; 
 } 

	public function skip_flag_f($skip_flag, $data_arr, $feed_id) {
		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $skip_flag;}
		$product = $data_arr['product'];

		$yfymp_add_only_product_ids = yfym_optionGET('yfymp_add_only_product_ids', $feed_id, 'set_arr');
		if (!empty($yfymp_add_only_product_ids)) {
			$yfymp_add_only_product_ids_arr = explode(";", $yfymp_add_only_product_ids);
			for ($i = 0; $i < count($yfymp_add_only_product_ids_arr); $i++) {
				$yfymp_add_only_product_ids_arr[$i] = trim($yfymp_add_only_product_ids_arr[$i]);
				$yfymp_add_only_product_ids_arr[$i] = (int)$yfymp_add_only_product_ids_arr[$i];
			};

			if (!in_array($product->get_id(), $yfymp_add_only_product_ids_arr)) {
				$skip_vendor_reason = sprintf('%s "%s" %s',
					__('Filtering by products ids is enabled and', 'yfymp'),
					$product->get_id(),
					__('products is not included in the list of permitted', 'yfymp')
				);
				return $skip_vendor_reason;
			}
		}
		
		if (empty(get_post_meta($product->get_id(), 'yfymp_removefromthisyml_arr', true)) || get_post_meta($product->get_id(), 'yfymp_removefromthisyml_arr', true) == '') {} else {
			$yfymp_removefromthisyml_arr = get_post_meta($product->get_id(), 'yfymp_removefromthisyml_arr', true);
			if (in_array($feed_id, $yfymp_removefromthisyml_arr)) {
				return __('Selected', 'yfymp').' "'. __('Forcefully remove product from selected YML feeds', 'yfymp').'"';
			}
		}

		if ($product->is_type('simple')) {
			$min = (int)yfym_optionGET('yfymp_stock_quantity_compare_value', $feed_id, 'set_arr');
			$max = (int)yfym_optionGET('yfymp_stock_quantity_compare_value_max', $feed_id, 'set_arr');

			if ($min > 0 || $max > 0) {
				if ($max == 0) {$max = 9999;}
				if ($product->get_manage_stock() == true) { // включено управление запасом
					$stock_quantity = (int)$product->get_stock_quantity(); // тк по дефолту тут может быть null

					if ($stock_quantity > $min && $stock_quantity < $max) {} 
					else {
						return sprintf('%1$s = %2$d. %3$s (%4$d > %2$d < %5$d)',
							__('Stock quantity', 'yfymp'),
							$stock_quantity,
							__('Condition not met', 'yfymp'),
							$min,
							$max
						);
					}
				} else {
					$yfymp_manage_stock_off = yfym_optionGET('yfymp_manage_stock_off', $feed_id, 'set_arr');
					if ($yfymp_manage_stock_off === 'on') {
						return __('Stock quantity is not set', 'yfymp');
					} // пропуск товаров для которых не включили управление запасами
					return $skip_flag;
				}
			}
		}
		if (isset($data_arr['catid'])) {
			// сюда возможно вставить фильтрацию на уровне категории
			
		}
		return $skip_flag;
	}

	public function skip_flag_variable_f($skip_flag, $data_arr, $feed_id) {
		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $skip_flag;} 
		$product = $data_arr['product'];
		$offer = $data_arr['offer'];

		$yfymp_add_only_product_ids = yfym_optionGET('yfymp_add_only_product_ids', $feed_id, 'set_arr');
		if (!empty($yfymp_add_only_product_ids)) {
			$yfymp_add_only_product_ids_arr = explode(";", $yfymp_add_only_product_ids);
			for ($i = 0; $i < count($yfymp_add_only_product_ids_arr); $i++) {
				$yfymp_add_only_product_ids_arr[$i] = trim($yfymp_add_only_product_ids_arr[$i]);
				$yfymp_add_only_product_ids_arr[$i] = (int)$yfymp_add_only_product_ids_arr[$i];
			};

			if (!in_array($product->get_id(), $yfymp_add_only_product_ids_arr)) {
				$skip_vendor_reason = sprintf('%s "%s" %s',
					__('Filtering by products ids is enabled and', 'yfymp'),
					$product->get_id(),
					__('products is not included in the list of permitted', 'yfymp')
				);
				return $skip_vendor_reason;
			}
		}

		$min = (int)yfym_optionGET('yfymp_stock_quantity_compare_value', $feed_id, 'set_arr');
		$max = (int)yfym_optionGET('yfymp_stock_quantity_compare_value_max', $feed_id, 'set_arr');

		if ($min > 0 || $max > 0) {
			if ($max == 0) {$max = 9999;}
			if ($offer->get_manage_stock() == true) { // включено управление запасом
				$stock_quantity = (int)$offer->get_stock_quantity(); // тк по дефолту тут может быть null
				if ($stock_quantity > $min && $stock_quantity < $max) {} 
				else {
					return sprintf('%1$s = %2$d. %3$s (%4$d > %2$d < %5$d)',
						__('Stock quantity', 'yfymp'),
						$stock_quantity,
						__('Condition not met', 'yfymp'),
						$min,
						$max
					);
				}
			} else if ($product->get_manage_stock() == true) {
				$stock_quantity = (int)$offer->get_stock_quantity(); // тк по дефолту тут может быть null
				if ($stock_quantity > $min && $stock_quantity < $max) {} 
				else {
					return sprintf('%1$s = %2$d. %3$s (%4$d > %2$d < %5$d)',
						__('Stock quantity', 'yfymp'),
						$stock_quantity,
						__('Condition not met', 'yfymp'),
						$min,
						$max
					);
				}
			} else {
				$yfymp_manage_stock_off = yfym_optionGET('yfymp_manage_stock_off', $feed_id, 'set_arr');
				if ($yfymp_manage_stock_off === 'on') {
					return __('Stock quantity is not set', 'yfymp');
				} // пропуск товаров для которых не включили управление запасами
				return $skip_flag;
			}
		}
		if (isset($data_arr['catid'])) {
			// сюда возможно вставить фильтрацию на уровне категории
			
		}
		return $skip_flag;
	} 

	public function simple_switchcase_default_description_f($tag_value, $data_arr, $feed_id) {
		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $tag_value;}
		$yfym_desc = $data_arr['yfym_desc'];
		$product = $data_arr['product'];
		if ($yfym_desc === 'post_meta') {
			$yfymp_desc_post_meta = yfym_optionGET('yfymp_desc_post_meta', $feed_id, 'set_arr');
			if (get_post_meta($product->get_id(), $yfymp_desc_post_meta, true) !== '') {
				$tag_value = get_post_meta($product->get_id(), $yfymp_desc_post_meta, true);
			} else {
				$tag_value = '';
			}
		}
		return $tag_value;
	}

	public function	variable_switchcase_default_description_f($tag_value, $data_arr, $feed_id) {
		$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $tag_value;}
		$yfym_desc = $data_arr['yfym_desc'];
		$product = $data_arr['product'];
		if ($yfym_desc === 'post_meta') {
			$yfymp_desc_post_meta = yfym_optionGET('yfymp_desc_post_meta', $feed_id, 'set_arr');
			if (get_post_meta($product->get_id(), $yfymp_desc_post_meta, true) !== '') {
				$tag_value = get_post_meta($product->get_id(), $yfymp_desc_post_meta, true);
			} else {
				$tag_value = '';
			}
		}
		return $tag_value;
	}

 public function yfymp_skip_flag_func($skip_flag, $post_id, $product, $feed_id) {
	$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $skip_flag;}
	if (empty(get_post_meta($post_id, 'yfymp_removefromthisyml_arr', true)) || get_post_meta($post_id, 'yfymp_removefromthisyml_arr', true) == '') {} else {
		$yfymp_removefromthisyml_arr = get_post_meta($post_id, 'yfymp_removefromthisyml_arr', true);
		if (in_array($feed_id, $yfymp_removefromthisyml_arr)) {
			yfym_error_log('FEED № '.$feed_id.'; PRO; Товар с postId = '.$post_id.' пропущен принудительно; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
			return true;
		}
	}
	if ($product->is_type('simple')) {
		$yfymp_stock_quantity_compare_value = (int)yfym_optionGET('yfymp_stock_quantity_compare_value', $feed_id, 'set_arr');
		if ($yfymp_stock_quantity_compare_value == '' || $yfymp_stock_quantity_compare_value == 0) {return $skip_flag;}
		if ($product->get_manage_stock() == true) { // включено управление запасом
			$stock_quantity = $product->get_stock_quantity();
			$yfymp_stock_quantity_compare = yfym_optionGET('yfymp_stock_quantity_compare', $feed_id, 'set_arr'); 
			if ($yfymp_stock_quantity_compare === '>') {
				if ($yfymp_stock_quantity_compare_value >= $stock_quantity) {
					return true;
				}
			} else {
				if ($yfymp_stock_quantity_compare_value <= $stock_quantity) {
					return true;
				}
			}
		} else {
			$yfymp_manage_stock_off = yfym_optionGET('yfymp_manage_stock_off', $feed_id, 'set_arr');
			if ($yfymp_manage_stock_off === 'on') {return true;} // пропуск товаров для которых не включили управление запасами
			return $skip_flag;
		}
	}
	return $skip_flag;
 }
 
 public function yfymp_skip_flag_variable_func($skip_flag, $post_id, $product, $offer, $feed_id) {
	$yfymp_ls = yfymp_ls(); if ($yfymp_ls == false) {return $skip_flag;} 
	$yfymp_stock_quantity_compare_value = (int)yfym_optionGET('yfymp_stock_quantity_compare_value', $feed_id, 'set_arr'); 
	if ($yfymp_stock_quantity_compare_value == '' || $yfymp_stock_quantity_compare_value == 0) {return $skip_flag;}
	if ($offer->get_manage_stock() == true) { // включено управление запасом
		$stock_quantity = $offer->get_stock_quantity();
		$yfymp_stock_quantity_compare = yfym_optionGET('yfymp_stock_quantity_compare', $feed_id, 'set_arr'); 
		if ($yfymp_stock_quantity_compare === '>') {
			if ($yfymp_stock_quantity_compare_value >= $stock_quantity) {
				return 'continue';
			}
		} else {	
			if ($yfymp_stock_quantity_compare_value <= $stock_quantity) {
				return 'continue';
			}
		}
	} else if ($product->get_manage_stock() == true) {
		$stock_quantity = $product->get_stock_quantity();
		$yfymp_stock_quantity_compare = yfym_optionGET('yfymp_stock_quantity_compare', $feed_id, 'set_arr'); 
		if ($yfymp_stock_quantity_compare === '>') {
			if ($yfymp_stock_quantity_compare_value >= $stock_quantity) {
				return 'continue';
			}
		} else {	
			if ($yfymp_stock_quantity_compare_value <= $stock_quantity) {
				return 'continue';
			}
		}		
	} else {
		$yfymp_manage_stock_off = yfym_optionGET('yfymp_manage_stock_off', $feed_id, 'set_arr');
		if ($yfymp_manage_stock_off === 'on') {$skip_flag = 'continue';} // пропуск товаров для которых не включили управление запасами
		return $skip_flag;
	}
	return $skip_flag;
 }  
 
 public function yfymp_append_variable_offer_filter_func($result_yml, $product, $offer, $feed_id = '1') {
	$yfymp_ls = yfymp_ls();	if ($yfymp_ls == false) {return $result_yml;}
	 
	$yfymp_diagonal = yfym_optionGET('yfymp_diagonal', $feed_id, 'set_arr'); 
	$yfymp_diagonal_chart = yfym_optionGET('yfymp_diagonal_chart', $feed_id, 'set_arr');
	$yfymp_diagonal_chart_from = yfym_optionGET('yfymp_diagonal_chart_from', $feed_id, 'set_arr');
	 
	$yfymp_tester = yfym_optionGET('yfymp_tester', $feed_id, 'set_arr');	 
	 	
	if ($yfymp_diagonal !== 'off') {
		$yfymp_diagonal = (int)$yfymp_diagonal;
		$yfymp_diagonal_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_diagonal));
		if (!empty($yfymp_diagonal_yml)) {	
			if ($yfymp_diagonal_chart_from !== 'off') {
				$yfymp_diagonal_chart_from = (int)$yfymp_diagonal_chart_from;
				$yfymp_diagonal_chart_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_diagonal_chart_from));
				if (!empty($yfymp_diagonal_chart_yml)) {
					$result_yml .= '<param name="Размер экрана" unit="'.$yfymp_diagonal_chart_yml.'">'.$yfymp_diagonal_yml.'</param>'.PHP_EOL;
				} else {
					$result_yml .= '<param name="Размер экрана" unit="'.$yfymp_diagonal_chart.'">'.$yfymp_diagonal_yml.'</param>'.PHP_EOL;	
				}
			} else {
				$result_yml .= '<param name="Размер экрана" unit="'.$yfymp_diagonal_chart.'">'.$yfymp_diagonal_yml.'</param>'.PHP_EOL;
			}
		}
	}
	
	if (!empty($yfymp_tester) && $yfymp_tester !== 'off') {	
		$yfymp_tester = (int)$yfymp_tester;
		$yfymp_tester_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_tester));
		if (!empty($yfymp_tester_yml)) {	
			$result_yml .= new YFYM_Get_Paired_Tag('param', urldecode($yfymp_tester_yml), array('name' => 'Тестер'));		
		} else {
			$yfymp_tester_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_tester));
			if (!empty($yfymp_tester_yml)) {	
				$result_yml .= new YFYM_Get_Paired_Tag('param', urldecode($yfymp_tester_yml), array('name' => 'Тестер'));
			}
		}
	}

	$n = '1';
	if (!defined('yfymp_PARAM_N')) {define('yfymp_PARAM_N', 15);}
	for ($i = 0; $i < yfymp_PARAM_N; $i++) {
		$yfymp_p_use = 'yfymp_p_use'.$n;
		$yfymp_p_name_s = 'yfymp_p_name_s'.$n;
		$yfymp_p_name_custom = 'yfymp_p_name_custom'.$n;
		$yfymp_p_unit_s = 'yfymp_p_unit_s'.$n;
		$yfymp_p_unit_default_s = 'yfymp_p_unit_default_s'.$n;
		$yfymp_p_unit_custom = 'yfymp_p_unit_custom'.$n;
		$yfymp_p_val_s = 'yfymp_p_val_s'.$n;
		$yfymp_p_val_custom = 'yfymp_p_val_custom'.$n;	

		$yfymp_p_use_res = yfym_optionGET($yfymp_p_use, $feed_id, 'custom_set_arr', 'p_arr'); 
		if ($yfymp_p_use_res === 'on') { // конструктов ключён
			$name_param = ''; // имя параметра
			$attr_param_arr = array(); // атрибуты параметра
			$value_param = ''; // значение параметра

			$yfymp_p_name_custom_res = yfym_optionGET($yfymp_p_name_custom, $feed_id, 'custom_set_arr', 'p_arr');
			if ($yfymp_p_name_custom_res !== '') {
				$name_param = $yfymp_p_name_custom_res;
			} else {
				$name_param = yfym_optionGET($yfymp_p_name_s, $feed_id, 'custom_set_arr', 'p_arr'); 
			}
			$attr_param_arr['name'] = $name_param;

			// unit
			$yfymp_p_unit_s_res = yfym_optionGET($yfymp_p_unit_s, $feed_id, 'custom_set_arr', 'p_arr');
			if ($yfymp_p_unit_s_res === 'disabled' || $yfymp_p_unit_s_res == '' ) {
				// без unit
			} else {				
				$yfymp_p_unit_custom_res = yfym_optionGET($yfymp_p_unit_custom, $feed_id, 'custom_set_arr', 'p_arr');
				if ($yfymp_p_unit_custom_res !== '') {
					$attr_param_arr['unit'] = $yfymp_p_unit_custom_res; // значение по умолчанию
				} else {
					$yfymp_p_unit_s_res = yfym_optionGET($yfymp_p_unit_s, $feed_id, 'custom_set_arr', 'p_arr'); 
					if ($yfymp_p_unit_s_res !== 'disabled') {
						$yfymp_p_unit_s_res = (int)$yfymp_p_unit_s_res;
						$yfymp_p_unit_s_yml = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_p_unit_s_res));
						if (!empty($yfymp_p_unit_s_yml)) {	
							$attr_param_arr['unit'] = $yfymp_p_unit_s_yml;
						} else {
							$yfymp_p_unit_s_yml = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_p_unit_s_res));
							if (!empty($yfymp_p_unit_s_yml)) {	
								$attr_param_arr['unit'] = $yfymp_p_unit_s_yml;
							} else {
								$yfymp_p_unit_default_s_res = yfym_optionGET($yfymp_p_unit_default_s, $feed_id, 'custom_set_arr', 'p_arr');
								$attr_param_arr['unit'] = $yfymp_p_unit_default_s_res;
							}
						}
					}
				}
			}

			$yfymp_p_val_custom_res = yfym_optionGET($yfymp_p_val_custom, $feed_id, 'custom_set_arr', 'p_arr');
			if ($yfymp_p_val_custom_res == '') {
				$yfymp_p_val_s_res = yfym_optionGET($yfymp_p_val_s, $feed_id, 'custom_set_arr', 'p_arr'); 
				$yfymp_p_val_s_res = (int)$yfymp_p_val_s_res;
				$value_param = $offer->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_p_val_s_res));	
				if (empty($value_param)) {
					$value_param = $product->get_attribute(wc_attribute_taxonomy_name_by_id($yfymp_p_val_s_res));
				}
			} else {
				$value_param = $yfymp_p_val_custom_res;
			}

			if ($name_param !=='' && $value_param !== '') {
				$result_yml .= new YFYM_Get_Paired_Tag('param', $value_param, $attr_param_arr);
			}
		}
		$n++;
	}
	
	return $result_yml;
 }
 
 public function yfymp_append_categories_filter_func($result_yml, $feed_id = '1') {
	$yfymp_ls = yfymp_ls();	if ($yfymp_ls == false) {return $result_yml;}	 

	$yfymp_tags_as_cat = yfym_optionGET('yfymp_tags_as_cat', $feed_id, 'set_arr');
	$yfymp_disabled_ymarket = yfym_optionGET('yfymp_disabled_ymarket', $feed_id, 'set_arr');

	if ($yfymp_disabled_ymarket === 'disabled') {} else {
		/* дерево категорий как на маркете */
		if (get_bloginfo('version') < '4.5') {
			$terms = get_terms('ymarket', array(
				'hide_empty' => 0,  
				'orderby' => 'name'
			));
		} else {
			$terms = get_terms(array(
				'hide_empty' => 0,  
				'orderby' => 'name',
				'taxonomy' => 'ymarket'
			));		
		}
		$count = count($terms);
		if ($count > 0) {			
			foreach ($terms as $term) {
				$result_yml .= '<category id="'.$term->term_id.'"';
				if ($term->parent !== 0) {
					$result_yml .= ' parentId="'.$term->parent.'"';
				}		
				$add_attr = '';
				$add_attr = apply_filters('yfymp_add_category_attr_filter', $add_attr, $terms, $term, $feed_id); /* c версии 4.2.6 */
				$result_yml .= $add_attr.'>'.$term->name.'</category>'.PHP_EOL;
			}			
		}	
		/* end дерево категорий как на маркете */
	}
	
	if ($yfymp_tags_as_cat !== 'off') {
		/* метки в качестве категорий */
		$args = array(
			'taxonomy' => 'product_tag',
			'hide_empty' => true, // скроем метки-таксономии без тегов
		);
		$terms_product_tag = get_terms('product_tag', $args);
		if ($terms_product_tag && ! is_wp_error($terms_product_tag) ){	
			foreach($terms_product_tag as $term ) {
				$result_yml .= '<category id="'.$term->term_id.'"'.'>'.$term->name.'</category>'.PHP_EOL;
			}
		}
	}

	$result_yml = apply_filters('yfymp_append_categories_filter', $result_yml, $feed_id); /* c версии 4.2.8 */
	return $result_yml;
 }
 
 public function yfymp_after_cat_filter_func($result_yml_cat, $post_id, $feed_id = '1') {
	$yfymp_ls = yfymp_ls();	if ($yfymp_ls == false) {return $result_yml_cat;}	 

	$yfymp_tags_as_cat = yfym_optionGET('yfymp_tags_as_cat', $feed_id, 'set_arr');
	$yfymp_disabled_ymarket = yfym_optionGET('yfymp_disabled_ymarket', $feed_id, 'set_arr');

	/* Дерево категорий для Яндекс Маркет ВСЕГДА в приоритете! */
	if ($yfymp_disabled_ymarket === 'disabled') {
		$product_tags = false;
	} else {
		$product_tags = get_the_terms($post_id, 'ymarket');
		if ($product_tags === false) {
			$catpostid = strip_tags($result_yml_cat);
			$catpostid = (int)$catpostid;
			if (get_term_meta($catpostid, 'yfymp_ymarket', true) == '') {} else {
				$yfymp_ymarket = get_term_meta($catpostid, 'yfymp_ymarket', true);
				if ($yfymp_ymarket === 'disabled') {
					$product_tags = false;
				} else {
					$result_yml_cat = '<categoryId>'.$yfymp_ymarket.'</categoryId>'.PHP_EOL;
					return $result_yml_cat;
				}
			}				
		}
	}
	if ($product_tags !== false) {
		$result_ymarket_cat = '';
		foreach($product_tags as $termin) {
			$result_ymarket_cat = '<categoryId>'.$termin->term_id.'</categoryId>'.PHP_EOL;
			break; // т.к. у товара может быть лишь 1 категория - выходим досрочно.
		}
		if ($result_ymarket_cat !== '') {
			$result_yml_cat = $result_ymarket_cat;
			return $result_yml_cat;
		}
	}
	/* end Дерево категорий для Яндекс Маркет ВСЕГДА в приоритете! */
	
	if ($yfymp_tags_as_cat == 'on_cat') {	
		// если категорий у товара нет пробуем подставить метку
		if ($result_yml_cat == '') {
			// если категорий нет, но есть метки
			$product_tags = get_the_terms($post_id, 'product_tag');
			if (is_array($product_tags)) {
				foreach($product_tags as $termin) {
					$result_yml_cat .= '<categoryId>'.$termin->term_id.'</categoryId>'.PHP_EOL;
					break; // т.к. у товара может быть лишь 1 категория - выходим досрочно.
				}
			}
		}
	} else if ($yfymp_tags_as_cat == 'on') { // теги приоритетнее категории
		$product_tags = get_the_terms($post_id, 'product_tag');
		if (is_array($product_tags)) {
			foreach($product_tags as $termin) {
				$result_yml_cat = '<categoryId>'.$termin->term_id.'</categoryId>'.PHP_EOL;
				break; // т.к. у товара может быть лишь 1 категория - выходим досрочно.
			}
		}
	}
	return $result_yml_cat;
 }

	public function yfymp_before_support_project() { 
		if (isset($_REQUEST['yfymp_submit_license_pro'])) {
			if (is_multisite()) {
				if (isset($_POST['yfymp_order_email'])) {
					update_blog_option(get_current_blog_id(), 'yfymp_order_email', sanitize_text_field($_POST['yfymp_order_email']));
				}		
				if (isset($_POST['yfymp_order_id'])) {
					update_blog_option(get_current_blog_id(), 'yfymp_order_id', sanitize_text_field($_POST['yfymp_order_id']));
				}
			} else {
				if (isset($_POST['yfymp_order_email'])) {
					update_option('yfymp_order_email', sanitize_text_field($_POST['yfymp_order_email']));
				}		
				if (isset($_POST['yfymp_order_id'])) {
					update_option('yfymp_order_id', sanitize_text_field($_POST['yfymp_order_id']));
				}	
			}
			wp_clean_plugins_cache();
			wp_clean_update_cache();
			add_filter('pre_site_transient_update_plugins', '__return_null');
			wp_update_plugins();
			remove_filter('pre_site_transient_update_plugins', '__return_null');
			print '<div class="notice notice-success is-dismissible"><p>'. __('License data has been updated', 'yfymp'). '. <a href="javascript:location.reload(true)">'. __('Refresh this page', 'yfymp'). '</a>.</p></div>';
			wp_update_plugins();
		} 
	
		if (is_multisite()) {
			$yfymp_order_id = get_blog_option(get_current_blog_id(), 'yfymp_order_id');
			$yfymp_order_email = get_blog_option(get_current_blog_id(), 'yfymp_order_email');
		} else {
			$yfymp_order_id = get_option('yfymp_order_id');
			$yfymp_order_email = get_option('yfymp_order_email');	
		}
		?><style>input.pw {-webkit-text-security: disc;}</style>
		<div class="postbox"><h2 class="hndle"><?php _e('License data', 'yfymp'); ?> PRO</h2><div class="inside">	
		<form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post" enctype="multipart/form-data">		
		<table class="form-table"><tbody>
		<tr>
			<th scope="row"><?php _e('Order ID', 'yfymp'); ?></th>	  
			<td class="overalldesc">
				<input class="pw" type="text" name="yfymp_order_id" value="<?php echo $yfymp_order_id; ?>" /><br />
				<span class="description"><a target="_blank" href="https://icopydoc.ru/kak-aktivirovat-pro-versiyu-instruktsiya/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=settings&utm_term=how-to-activate-order-id"><?php _e('Read more', 'yfymp'); ?></a></span>
			</td>
		</tr>
		<tr>
			<th scope="row"><?php _e('Order Email', 'yfymp'); ?></th>
			<td class="overalldesc">
				<input type="text" name="yfymp_order_email" value="<?php echo $yfymp_order_email; ?>" /><br />
				<span class="description"><a target="_blank" href="https://icopydoc.ru/kak-aktivirovat-pro-versiyu-instruktsiya/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=settings&utm_term=how-to-activate-order-email"><?php _e('Read more', 'yfymp'); ?></a></span>
			</td>
		</tr>
		</tbody></table>
		<input class="button-primary" type="submit" name="yfymp_submit_license_pro" value="<?php _e('Update License Data', 'yfymp'); ?>" />	 
		</form>
		</div></div><?php 
	}
 
	public function yfymp_after_whot_export_option($feed_id = '1') { 
		$yfym_whot_export = yfym_optionGET('yfym_whot_export', $feed_id, 'set_arr');
		?><option value="vygruzhat" <?php selected($yfym_whot_export, 'vygruzhat'); ?>><?php _e('Only products from YML kit', 'yfymp'); ?></option><?php
	}
 
 
	public function yfymp_append_select_yfym_desc_func($yfym_desc, $feed_id = '1') { 
		?><option value="post_meta" <?php selected($yfym_desc, 'post_meta'); ?>><?php _e('Substitute from post meta', 'yfymp'); ?></option><?php
	}

	public function yfymp_after_select_yfym_desc_func($yfym_desc, $feed_id = '1') { 
		$yfymp_desc_post_meta = yfym_optionGET('yfymp_desc_post_meta', $feed_id, 'set_arr');
		?><span class="description"><small><?php _e('If selected', 'yfymp'); ?> <span class="yfym_bold">"<?php _e('Substitute from post meta', 'yfymp'); ?>"</span> <?php _e('do not forget to fill out this field', 'yfymp'); ?>:</small></span><br /><input placeholder="<?php _e('Name post_meta', 'yfymp'); ?>" type="text" name="yfymp_desc_post_meta" id="yfymp_desc_post_meta" value="<?php echo $yfymp_desc_post_meta; ?>" /><br /><?php
	}
 
 
	public function yfymp_function_after_step_export($feed_id = '1') { 
		yfymp_export_page($feed_id);
	} // end public function yfymp_function_after_step_export

	public function yfymp_before_button_primary_submit($feed_id = '1') { ?>
		<div class="postbox"><h2 class="hndle"><?php _e('Custom parameter constructor', 'yfymp'); ?></h2>
		<div class="inside">
		<strong>&lt;param name=&quot;X&quot; unit=&quot;Y&quot;&gt;Z&lt;/param&gt;</strong>
		<br />(<a target="_blank" href="https://icopydoc.ru/custom-parameter-constructor/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=settings&utm_term=about-constructor-params"><?php _e('Read more about how this works', 'yfymp'); ?></a>)
		</div><?php
		$yfymp_settings_constructor_params_wp_list_table = new YFYMP_Settings_Constructor_Params_WP_List_Table($feed_id); 
		$yfymp_settings_constructor_params_wp_list_table->prepare_items(); 
		$yfymp_settings_constructor_params_wp_list_table->display();  
		?>
		</div><?php
	} // end public function yfymp_before_pad 

 public function yfymp_after_manufacturer_warranty($feed_id = '1') { 
	$yfymp_tags_as_cat = yfym_optionGET('yfymp_tags_as_cat', $feed_id, 'set_arr'); 
	$yfymp_disabled_ymarket = yfym_optionGET('yfymp_disabled_ymarket', $feed_id, 'set_arr');

	$yfymp_diagonal = yfym_optionGET('yfymp_diagonal', $feed_id, 'set_arr');
	$yfymp_diagonal_chart = yfym_optionGET('yfymp_diagonal_chart', $feed_id, 'set_arr');
	$yfymp_diagonal_chart_from = yfym_optionGET('yfymp_diagonal_chart_from', $feed_id, 'set_arr');
	 
	$yfymp_tester = yfym_optionGET('yfymp_tester', $feed_id, 'set_arr');
	?>	
	<tr class="yfym_tr">
		<th scope="row"><label for="yfymp_tags_as_cat"><?php _e('Use tags as categories', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_tags_as_cat" id="yfymp_tags_as_cat">
				<option value="off" <?php selected($yfymp_tags_as_cat, 'off'); ?>><?php _e('False', 'yfymp'); ?></option>
				<option value="on_cat" <?php selected($yfymp_tags_as_cat, 'on_cat'); ?>><?php _e('Yes. Priority categories', 'yfymp'); ?></option>
				<option value="on" <?php selected($yfymp_tags_as_cat, 'on'); ?>><?php _e('Yes. Priority tags', 'yfymp'); ?></option>
			</select><br />
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_disabled_ymarket"><?php _e('Categories for Yandex Market', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_disabled_ymarket" id="yfymp_disabled_ymarket">
				<option value="enabled" <?php selected($yfymp_disabled_ymarket, 'enabled'); ?>><?php _e('Enabled', 'yfymp'); ?></option>
				<option value="disabled" <?php selected($yfymp_disabled_ymarket, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>								
			</select><br />
		</td>
	</tr>
	<tr class="yfym_tr">
		<th scope="row"><label for="yfymp_diagonal"><?php _e('Diagonal', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_diagonal" id="yfymp_diagonal">
			<option value="off" <?php selected($yfymp_diagonal, 'none'); ?>><?php _e('None', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>
			<option value="<?php echo $attribute['id']; ?>" <?php selected($yfymp_diagonal, $attribute['id'] ); ?>><?php echo $attribute['name']; ?></option>	
			<?php endforeach; ?>
			</select><br />
			<small><?php _e('Required attribute', 'yfymp'); ?> <strong>unit</strong> <?php _e('substitute from', 'yfymp'); ?>:</small><br />
			<select name="yfymp_diagonal_chart_from">
			<option value="off" <?php selected($yfymp_diagonal, 'none'); ?>><?php _e('None', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected($yfymp_diagonal_chart_from, $attribute['id'] ); ?>><?php echo $attribute['name']; ?></option>	
			<?php endforeach; ?>
			</select><br />
			<small><?php _e('In the absence of a substitute', 'yfymp'); ?>:</small><br />
			<select name="yfymp_diagonal_chart">
				<option value="дюйм" <?php selected($yfymp_diagonal_chart, 'дюйм'); ?>>дюйм</option>
				<option value="INCH" <?php selected($yfymp_diagonal_chart, 'INCH'); ?>>INCH</option>
				<option value="см" <?php selected($yfymp_diagonal_chart, 'Height'); ?>>см</option>
			</select>
			<span class="description"><small><?php _e('Optional element', 'yfymp'); ?> <strong>diagonals</strong>. <?php _e('This element indicates the dimension grid', 'yfymp'); ?>.<br /><a href="//yandex.ru/support/partnermarket/guides/clothes.html#h4__diagonals" target="_blank"><?php _e('A list of possible values', 'yfymp'); ?></a>.</small></span>
		</td>		
	</tr>	
	<tr>
		<th scope="row"><label for="yfymp_tester"><?php _e('Tester', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_tester" id="yfymp_tester">
			<option value="off" <?php selected($yfymp_tester, 'none'); ?>><?php _e('None', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected($yfymp_tester, $attribute['id'] ); ?>><?php echo $attribute['name']; ?></option>	
			<?php endforeach; ?>
			</select><br />
			<span class="description"><small><?php _e('Optional element', 'yfymp'); ?>. <?php _e('May take values', 'yfymp'); ?> yes, no.<br /><a href="//yandex.ru/support/partnermarket/guides/perfumery.html" target="_blank"><?php _e('Read more on Yandex', 'yfymp'); ?></a>.</small></span>
		</td>		
	</tr>
	<?php
 } // end public function yfymp_after_manufacturer_warranty 
 
 public function yfymp_prepend_submit_action($feed_id = '1') {
 
	if (isset($_POST['yfym_num_feed_for_save'])) { 
		$feed_id = sanitize_text_field($_POST['yfym_num_feed_for_save']); 
	} else {
		$feed_id = '1';
	}

	$options_arr = array(
		'yfymp_dont_use_book' => '',
		'yfymp_min_version_yfym' => '3.0.0',	
		'yfymp_disabled_ymarket' => 'enabled',
		'yfymp_use_utm' => '',
		'yfymp_utm_source' => 'market.yandex.ru',
		'yfymp_utm_campaign' => '',
		'yfymp_utm_content' => 'catid',
		'yfymp_utm_medium' => 'cpc',
		'yfymp_roistat' => '',
		'yfymp_use_del_vc' => '',
/* ! */	'yfymp_exclude_cat_arr' => array(),	
		'yfymp_price_post_meta' => '',
		'yfymp_multiply_price_value' => '1',
		'yfymp_round_price_value' => 'hundredths',
		'yfymp_add_to_price_value' => '0',
		'yfymp_skip_vendor_names' => '',
		'yfymp_add_only_product_ids' => '',
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
		'yfymp_excl_thumb' => '',
		'yfymp_desc_post_meta' => '',
		'yfymp_one_variable' => '',
		'yfymp_del_tags_atr' => '',
		'yfymp_diagonal' => 'off',
		'yfymp_diagonal_chart' => 'ml',
		'yfymp_diagonal_chart_from' => '',
		'yfymp_tester' => 'off',	
		'yfymp_do' => 'exclude',
	);

	foreach ($options_arr as $key => $value) {
		yfymp_set_option('save', array('name' => $key, 'value' => $value), $feed_id);
	}
	
	if (isset($_GET['tab']) && $_GET['tab'] === 'filtration') {
		// сохранение данных в прошке
		if (isset($_POST['yfymp_exclude_cat_arr'])) {
			yfym_optionUPD('yfymp_exclude_cat_arr', serialize($_POST['yfymp_exclude_cat_arr']), $feed_id);
		} else {yfym_optionUPD('yfymp_exclude_cat_arr', serialize(array()), $feed_id);}	
	} else {
		if (!isset($_POST['yfymp_exclude_cat_arr']) && !isset($_GET['tab'])) {
			yfym_optionUPD('yfymp_exclude_cat_arr', serialize(array()), $feed_id, 'yes', 'set_arr');
		} else if (isset($_POST['yfymp_exclude_cat_arr'])) {
			yfym_optionUPD('yfymp_exclude_cat_arr', serialize($_POST['yfymp_exclude_cat_arr']), $feed_id);
		}
	}

	$n = '1';
	if (!defined('yfymp_PARAM_N')) {define('yfymp_PARAM_N', 15);}
	for ($i = 0; $i < yfymp_PARAM_N; $i++) {
		$yfymp_p_use = 'yfymp_p_use'.$n;
		$yfymp_p_name_s = 'yfymp_p_name_s'.$n;
		$yfymp_p_name_custom = 'yfymp_p_name_custom'.$n;
		$yfymp_p_unit_s = 'yfymp_p_unit_s'.$n;
		$yfymp_p_unit_default_s = 'yfymp_p_unit_default_s'.$n;
		$yfymp_p_unit_custom = 'yfymp_p_unit_custom'.$n;
		$yfymp_p_val_s = 'yfymp_p_val_s'.$n;
		$yfymp_p_val_custom = 'yfymp_p_val_custom'.$n;

//		$feed_id = $n;
		if (isset($_POST[$yfymp_p_use])) {
			yfym_optionUPD($yfymp_p_use, sanitize_text_field($_POST[$yfymp_p_use]), $feed_id, 'yes', 'custom_set_arr', 'p_arr');
		}  
		
		if (isset($_POST[$yfymp_p_name_s])) {
			yfym_optionUPD($yfymp_p_name_s, sanitize_text_field($_POST[$yfymp_p_name_s]), $feed_id, 'yes', 'custom_set_arr', 'p_arr');
		}
		
		if (isset($_POST[$yfymp_p_name_custom])) {
			yfym_optionUPD($yfymp_p_name_custom, sanitize_text_field($_POST[$yfymp_p_name_custom]), $feed_id, 'yes', 'custom_set_arr', 'p_arr');
		}
		
		if (isset($_POST[$yfymp_p_unit_s])) {
			yfym_optionUPD($yfymp_p_unit_s, sanitize_text_field($_POST[$yfymp_p_unit_s]), $feed_id, 'yes', 'custom_set_arr', 'p_arr');
		}
		
		if (isset($_POST[$yfymp_p_unit_default_s])) {
			yfym_optionUPD($yfymp_p_unit_default_s, sanitize_text_field($_POST[$yfymp_p_unit_default_s]), $feed_id, 'yes', 'custom_set_arr', 'p_arr');
		}
		
		if (isset($_POST[$yfymp_p_unit_custom])) {
			yfym_optionUPD($yfymp_p_unit_custom, sanitize_text_field($_POST[$yfymp_p_unit_custom]), $feed_id, 'yes', 'custom_set_arr', 'p_arr');
		} 
		
		if (isset($_POST[$yfymp_p_val_s])) {
			yfym_optionUPD($yfymp_p_val_s, sanitize_text_field($_POST[$yfymp_p_val_s]), $feed_id, 'yes', 'custom_set_arr', 'p_arr');
		} 
		
		if (isset($_POST[$yfymp_p_val_custom])) {
			yfym_optionUPD($yfymp_p_val_custom, sanitize_text_field($_POST[$yfymp_p_val_custom]), $feed_id, 'yes', 'custom_set_arr', 'p_arr');
		}  	
		$n++;
	}
 }

	public static function yfymp_get_default_set() {
		$result_arr = array(
			array('yfymp_name_var0', 'off', 'public'),
			array('yfymp_name_var1', 'off', 'public'),
			array('yfymp_dont_use_book', '', 'public'),
			array('yfymp_min_version_yfym', '3.0.0', 'public'),	
			array('yfymp_disabled_ymarket', 'enabled', 'public'),
			array('yfymp_use_utm', '', 'public'),
			array('yfymp_utm_source', 'market.yandex.ru', 'public'),
			array('yfymp_utm_campaign', '', 'public'),
			array('yfymp_utm_content', 'catid', 'public'),
			array('yfymp_utm_medium', 'cpc', 'public'),
			array('yfymp_roistat', '', 'public'),
			array('yfymp_use_del_vc', '', 'public'),
	/* ! */	array('yfymp_exclude_cat_arr', array(), 'public'),	
			array('yfymp_price_post_meta', '', 'public'),
			array('yfymp_multiply_price_value', '1', 'public'),
			array('yfymp_round_price_value', 'hundredths', 'public'),
			array('yfymp_add_to_price_value', '0', 'public'),
			array('yfymp_skip_vendor_names', '', 'public'),
			array('yfymp_add_only_product_ids', '', 'public'),
			array('yfymp_compare', '>=', 'public'),
			array('yfymp_compare_value', '', 'public'),
			array('yfymp_stock_quantity_compare', '>', 'public'),
			array('yfymp_stock_quantity_compare_value', '-1', 'public'),	
			array('yfymp_stock_quantity_compare_value_max', '9999', 'public'),	
			array('yfymp_manage_stock_off', '', 'public'),
			array('yfymp_tags_as_cat', 'off', 'public'),
			array('yfymp_name_var0', 'disabled', 'public'),
			array('yfymp_name_var01', 'disabled', 'public'),
			array('yfymp_name_var1', 'disabled', 'public'),
			array('yfymp_name_var2', 'disabled', 'public'),
			array('yfymp_name_var3', 'disabled', 'public'),
			array('yfymp_simple_name_var0', 'disabled', 'public'),
			array('yfymp_simple_name_var1', 'disabled', 'public'),
			array('yfymp_simple_name_var2', 'disabled', 'public'),
			array('yfymp_num_pic', '3', 'public'),
			array('yfymp_add_from_prod_gallery', 'enabled', 'public'),
			array('yfymp_excl_thumb', 'no', 'public'),
			array('yfymp_desc_post_meta', '', 'public'),
			array('yfymp_one_variable', '', 'public'),
			array('yfymp_del_tags_atr', '', 'public'),
			array('yfymp_size_chart_from5', '', 'public'),
			array('yfymp_diagonal', 'off', 'public'),
			array('yfymp_diagonal_chart', 'ml', 'public'),
			array('yfymp_diagonal_chart_from', '', 'public'),
			array('yfymp_tester', 'off', 'public'),	
			array('yfymp_do', 'exclude', 'public'),
		);

		return $result_arr;
	}

	public function yfymp_set_default_feed_settings_result_arr_filter_func($result_arr, $whot = 'feed') {
		$default_data_arr = self::yfymp_get_default_set();
		for ($i = 0; $i < count($default_data_arr); $i++) {
			array_push($result_arr, $default_data_arr[$i]);
		}
		return $result_arr;
	}

 /* ************** ПОЛУЧЕНИЕ ОБНОВЛЕНИЙ ************** */
 /*
 *	C версии 3.6.0
 * 	Для работы необходимы следующие данные в классе:
 *	define('yfymp_APIURL', 'https://icopydoc.ru/api/');
 *	define('yfymp_SLUG', basename(dirname(__FILE__))); // псевдоним плагина (например: sam-pro-lite)
 *	define('yfymp_PLUGIN_SLUG', plugin_basename(__FILE__)); // полный псевдоним плагина (папка плагина + имя главного файла, например: sam-pro-lite/sam-pro-lite.php)	
 *	define('yfymp_VER', '3.6.0');
 *	// вывод инфы о статусе активации
 *	add_filter('plugin_action_links', array($this, 'yfymp_plugin_action_links'), 10, 2 );
 *	// проверка наличия обновлений
 *	add_filter('pre_set_site_transient_update_plugins', array($this, 'yfymp_check_upd'), 10);
 *	// проверка информации о плагине		
 *	add_filter('plugins_api', array($this, 'yfymp_plugin_api_checkInfo'), 10, 3);
 *	// установка плагина
 *	add_filter('upgrader_package_options', array($this, 'yfymp_setUpdatePackage'));
 */  
 
 //	проверка наличия обновлений
 public function yfymp_check_upd($transient) {
	/* 
	* Сначала проверяется наличие в массиве данных наличие поля «checked». 
	* Если оно есть, это значит, что WordPress запросил и обработал данные об 
	* обновлении и сейчас самое время вставить в параметр свои данные. 
	* Если нет, значит 12 часов ещё не прошло… Ничего не делаем.
	*/
	/*
	* ["no_update"]=> array(1) { 
	*  ["best-woocommerce-feed/rex-product-feed.php"]=> 
	*  object(stdClass)#7367 (9) { 
	* 	["id"]=> string(35) "w.org/plugins/best-woocommerce-feed" 
	* 	["slug"]=> string(21) "best-woocommerce-feed" 
	* 	["plugin"]=> string(42) "best-woocommerce-feed/rex-product-feed.php" 
	* 	["new_version"]=> string(3) "3.4" 
	* 	["url"]=> string(52) "https://wordpress.org/plugins/best-woocommerce-feed/" 
	* 	["package"]=> string(68) "https://downloads.wordpress.org/plugin/best-woocommerce-feed.3.4.zip" 
	* 	["icons"]=> array(1) { 
	* 		["1x"]=> string(74) "https://ps.w.org/best-woocommerce-feed/assets/icon-128x128.jpg?rev=1737647" 
	*	} 
	* 	["banners"]=> array(1) { 
	* 		["1x"]=> string(76) "https://ps.w.org/best-woocommerce-feed/assets/banner-772x250.png?rev=1944151"
	*	} 
	* 	["banners_rtl"]=> array(0) { } 
	*  } 
	* }
	*/
	yfym_error_log('Стартовала yfymp_check_upd; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);		

	global $wp_version; 
	
	/* На время тестов строку ниже нужно раскомментировать */
	wp_clean_update_cache();
	
	if (empty($transient->checked)) {
		return $transient;
	} 

	$response = yfymp_response_to_api('basic_check');
	$response_code = wp_remote_retrieve_response_code($response);
	$response_message = wp_remote_retrieve_response_message($response);
	
	if (($response_code == 200) && $response_message == 'OK') {
		$resp = unserialize($response['body']);
		
		yfym_error_log('$response["body"] => ; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);		
		yfym_error_log($response['body'], 0); 		
//		yfym_error_log('$resp["license_status"] = '. $resp["license_status"]. '; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
		
		yfymp_license_date($resp);

		switch ($resp['license_status']) {
			case "expired":
				if (is_multisite()) { 
					update_blog_option(get_current_blog_id(), 'yfymp_license_status', 'expired');
				} else {
					update_option('yfymp_license_status', 'expired');
				}
				break;
			case "ok":
				if (is_multisite()) { 
					update_blog_option(get_current_blog_id(), 'yfymp_license_status', 'ok');
				} else {
					update_option('yfymp_license_status', 'ok');
				}
				break;
			case "limit":
				if (is_multisite()) { 
					update_blog_option(get_current_blog_id(), 'yfymp_license_status', 'limit');
				} else {
					update_option('yfymp_license_status', 'limit');
				}
				break;
			default:
				if (is_multisite()) { 
					update_blog_option(get_current_blog_id(), 'yfymp_license_status', 'no');
				} else {				
					update_option('yfymp_license_status', 'no');
				}
		}
		// Обновлений нет. Нет смысла что-то менять. Выходим.
		if (!isset($resp['upd'])) {return $transient;}		

		$plugin                 = new stdClass();		
		$plugin->slug           = $resp['slug'];
		$plugin->plugin 		= yfymp_PLUGIN_SLUG;
		$plugin->new_version 	= $resp['version'];
		$plugin->url 			= ''; // страница на WordPress.org
		$plugin->package 		= $resp['package'];
		$plugin->icons 			= $resp['icons']; // массив иконки
		$plugin->banners 		= $resp['banners']; // массив баннер
		$plugin->name           = $resp['name']; // название плагина		
		$plugin->version        = $resp['version']; // версия
		$plugin->author         = $resp['author']; // имя автора
		$plugin->last_updated   = $resp['last_updated']; // Обновление:
		$plugin->added          = $resp['last_updated'];
		$plugin->requires       = $resp['requires']; // Требуемая версия WordPress		
		$plugin->tested         = $resp['tested'];	 // совместим вполь до	
		$plugin->homepage		= $resp['homepage']; // страница плагина
		$plugin->donate_link 	= $resp['donate_link']; // сделать пожертвование		
		$plugin->active_installs= (int)$resp['active_installs']; // активные установик	
		$plugin->rating         = 100; // рейтинг в звёздах
		$plugin->num_ratings    = 5; // число голосов		
		$plugin->sections       = $resp['sections'];		
		$plugin->download_link 	= $resp['package']; // 'https://site.ru/api/pgo-plugin-demo-one.zip';
		
		$transient->response[yfymp_PLUGIN_SLUG] = $plugin;	
	} else {
		yfym_error_log('Ошибка проверки наличия обновлений. Код ошибки: '.$response_code. '; response_message: '.$response_message.'; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
	}
	return $transient;
 }

 /* запрос инфы об обнове */
 public function yfymp_plugin_api_checkInfo($result, $action, $args) {
	yfym_error_log('Стартовала yfymp_plugin_api_checkInfo; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);			 

	if (isset($args->slug) && ($args->slug === yfymp_SLUG)) {
		yfym_error_log('Это просмотр инфы YML for Yandex Market Pro Export; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
		
		$response = yfymp_response_to_api('basic_check');
		$response_code = wp_remote_retrieve_response_code($response);
		$response_message = wp_remote_retrieve_response_message($response);		

		if (($response_code == 200) && $response_message == 'OK') {	
			$resp = unserialize($response['body']);
			yfymp_license_date($resp);
			switch ($resp['license_status']) {
				case "expired":
					if (is_multisite()) { 
						update_blog_option(get_current_blog_id(), 'yfymp_license_status', 'expired');
					} else {
						update_option('yfymp_license_status', 'expired');
					}
					break;
				case "ok":
					if (is_multisite()) { 
						update_blog_option(get_current_blog_id(), 'yfymp_license_status', 'ok');
					} else {				
						update_option('yfymp_license_status', 'ok');
					}
					break;
				case "limit":
					if (is_multisite()) { 
						update_blog_option(get_current_blog_id(), 'yfymp_license_status', 'limit');
					} else {
						update_option('yfymp_license_status', 'limit');
					}
					break;
				default:
					if (is_multisite()) { 
						update_blog_option(get_current_blog_id(), 'yfymp_license_status', 'no');
					} else {				
						update_option('yfymp_license_status', 'no');
					}
			}
			if (!isset($resp['upd'])) {return false;}
			
			$plugin                 = new stdClass();	
			$plugin->slug           = $resp['slug'];
			$plugin->plugin 		= yfymp_PLUGIN_SLUG;
			$plugin->new_version 	= $resp['version'];
			$plugin->url 			= ''; // страница на WordPress.org
			$plugin->package 		= $resp['package'];
			$plugin->icons 			= $resp['icons']; // массив иконки
			$plugin->banners 		= $resp['banners']; // массив баннер
			$plugin->name           = $resp['name']; // название плагина		
			$plugin->version        = $resp['version']; // версия
			$plugin->author         = $resp['author']; // имя автора
			$plugin->last_updated   = $resp['last_updated']; // Обновление:
			$plugin->added          = $resp['last_updated'];
			$plugin->requires       = $resp['requires']; // Требуемая версия WordPress		
			$plugin->tested         = $resp['tested'];	 // совместим вполь до
			$plugin->homepage		= $resp['homepage']; // страница плагина
			$plugin->donate_link 	= $resp['donate_link']; // сделать пожертвование		
			$plugin->active_installs= (int)$resp['active_installs']; // активные установик	
			$plugin->rating         = 100; // рейтинг в звёздах
			$plugin->num_ratings    = 5; // число голосов		
			$plugin->sections       = $resp['sections'];		
			$plugin->download_link 	= $resp['package']; // 'https://icopydoc.ru/apin/pgo-plugin-demo-one.zip';

			return $plugin;		
		} else {
			yfym_error_log('Ошибка запроса инфы о плагине. Код ошибки: '.$response_code. '; response_message: '.$response_message.'; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
			return false;
		}		

	} else { // это просмотр инфы другого плагина
		yfym_error_log('Это просмотр инфы другого плагина! yfymp_SLUG = '. yfymp_SLUG .'; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
		return $result;		
	}
 } 

 /* обновление плагина */
 public function yfymp_setUpdatePackage($options) {
	/* 
	* $options = Array (
	* 	[package] => name // сюда нужна ссылка до архива
	* 	[destination] => /home/p12345/www/site.ru/wp-content/plugins 
	* 	[clear_destination] => 1 
	* 	[abort_if_destination_exists] => 1 
	* 	[clear_working] => 1 
	* 	[is_multi] => 1 
	* 	[hook_extra] => Array ( 
	* 		[plugin] => pgo-plugin-demo-one/pgo-plugin-demo-one.php 
	* 	) 
	* )  
	*/
	yfym_error_log('Стартовала yfymp_setUpdatePackage; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
	
	if (isset($options['hook_extra']['plugin'])) {
	 if ($options['hook_extra']['plugin'] === yfymp_PLUGIN_SLUG) {		
		$order_id = yfym_optionGET('yfymp_order_id');
		$order_email = yfym_optionGET('yfymp_order_email');
		$site = home_url('/');	
		$dwl_link = 'https://icopydoc.ru/serv/upd/?order_id='.$order_id.'&order_email='.$order_email.'&site='.$site.'&slug='. yfymp_SLUG .'&version='. yfymp_VER;
		$dwl_link = apply_filters('yfymp_dwl_link_filter', $dwl_link, $order_id, $order_email);		
		yfym_error_log('$dwl_link = '. $dwl_link.'; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
		
		$options['package'] = $dwl_link;
	 } else {
		yfym_error_log('Запросили обнову для другого плагина $options[hook_extra][plugin] = '.$options["hook_extra"]["plugin"].'; Файл: yml-for-yandex-market-pro.php; Строка: '.__LINE__, 0);
	 }
	}
	
	return $options;
 }  

 /* Вывод инфы о статусе активации на странице плагинов */
 public function yfymp_plugin_action_links($actions, $plugin_file) {
	if (false === strpos($plugin_file, YFYMP_PLUGIN_BASENAME)) {
		// проверка, что у нас текущий плагин
		return $actions;
	}
	$yfymp_license_status = yfymp_license_status();
	switch ($yfymp_license_status) {
		case "expired":
			$settings_link = '<span style="color: #dc3232;">'. __('License expired', 'yfymp').'</span>'; 
			break;
		case "no":
			$settings_link = '<span style="color: #dc3232;">'. __('License data is invalid', 'yfymp').'!</span>'; 
			break;
		case "limit":
			$settings_link = '<span style="color: #dc3232;">'. __('The package limit has been exceeded', 'yfymp').'</span>'; 
			break;
		case "ok":
			$settings_link = '<span style="color: green;">'. __('License is active', 'yfymp').'</span>'; 
			break;
		default:
			$settings_link = '<span style="color: #dc3232;">'. __('License data is invalid', 'yfymp').'!</span>';
	}	
	array_unshift($actions, $settings_link); 
	return $actions; 

/*	if (is_multisite()) {
		$yfym_version = get_blog_option(get_current_blog_id(), 'yfym_version');
	} else {
		$yfym_version = get_option('yfym_version');
	} 		
	if (version_compare($yfym_version, '3.7.0', '<')) { // не совпали версии

	} */
 }
 /* ************ end ПОЛУЧЕНИЕ ОБНОВЛЕНИЙ ************ */ 
} // end class YmlforYandexMarketPro 