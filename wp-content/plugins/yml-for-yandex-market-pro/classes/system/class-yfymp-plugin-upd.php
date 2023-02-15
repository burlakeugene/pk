<?php if (!defined('ABSPATH')) {exit;}
/**
 * Plugin Updates
 *
 * @package			YML for Yandex Market Pro
 * @subpackage		
 * @since			4.3.2
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
 *					constants:	YFYMP_PLUGIN_SLUG
 *								YFYMP_PLUGIN_BASENAME
 *					options:	
 *
 */

final class YFYMP_Plugin_Upd {
	private $pref = 'yfymp'; // префикс плагина
	private $slug; // псевдоним плагина (например: oop-wp)
	private $plugin_slug; // полный псевдоним плагина (папка плагина + имя главного файла, например: oop-wp/oop-wp.php)
	private $plugin_ver; // номер версии плагина
	private $order_id;
	private $order_email;
	private $basic_version; // номер базовой версии плагина

	public function __construct($args = array()) {	
		if (isset($args['pref'])) {
			$this->pref = $args['pref'];
		}

		if (isset($args['slug'])) {
			$this->slug = $args['slug'];
		} else {
			$this->slug = YFYMP_PLUGIN_SLUG; // yfymp_SLUG
		}

		if (isset($args['plugin_slug'])) {
			$this->plugin_slug = $args['plugin_slug'];
		} else {
			$this->plugin_slug = YFYMP_PLUGIN_BASENAME; // yfymp_PLUGIN_SLUG
		}

		if (isset($args['plugin_ver'])) {
			$this->plugin_ver = $args['plugin_ver'];
		} else {
			$opt_name_version = $this->get_pref().'_version';
			if (is_multisite()) {
				$v = get_blog_option(get_current_blog_id(), $opt_name_version);
			} else {
				$v = get_option($opt_name_version);
			}
			$this->plugin_ver = $v;
		}

		if (isset($args['order_id'])) {
			$this->order_id = $args['order_id'];
		} else {
			$opt_name_order_id = $this->get_pref().'_order_id';
			if (is_multisite()) {
				$v = get_blog_option(get_current_blog_id(), $opt_name_order_id);
			} else {
				$v = get_option($opt_name_order_id);
			}
			$this->order_id = $v;
		}

		if (isset($args['order_email'])) {
			$this->order_email = $args['order_email'];
		} else {
			$opt_name_order_email = $this->get_pref().'_order_email';
			if (is_multisite()) {
				$v = get_blog_option(get_current_blog_id(), $opt_name_order_email);
			} else {
				$v = get_option($opt_name_order_email);
			}
			$this->order_email = $v;
		}

		if (isset($args['basic_version'])) {
			$this->basic_version = $args['basic_version'];
		} else {
			$opt_name_basic_version = $this->get_pref().'_version';
			if (is_multisite()) {
				$v = get_blog_option(get_current_blog_id(), $opt_name_basic_version);
			} else {
				$v = get_option($opt_name_basic_version);
			}
			$this->basic_version = $v;
		}

		$this->hook();
	}

	/**
	* Set up Wordpress filters to hook into WP's update process.
	*
	* @uses add_filter()
	*
	* @return void
	*/
	private function hook() {
		add_filter('pre_set_site_transient_update_plugins', array($this, 'check_upd_func'), 10); // проверка наличия обновлений
		add_filter('plugins_api', array($this, 'plugin_api_check_info_func'), 10, 3); // проверка информации о плагине
		add_filter('upgrader_package_options', array($this, 'set_update_package_func')); // установка плагина
	}

	private function get_pref() {
		return $this->pref;
	}

	private function get_opt_name_l_stat() {
		return $this->get_pref().'_sto'; // $this->get_pref().'_l_stat'
	}

	private function save_l_stat($arg) {
		if (is_multisite()) { 
			update_blog_option(get_current_blog_id(), $this->get_opt_name_l_stat(), $arg);
		} else {
			update_option($this->get_opt_name_l_stat(), $arg);
		}
	}
	
	private function save_l_date($resp_arr) {
		if (isset($resp_arr['license_date'])) {
			$opt_name_license_date = $this->get_pref().'_license_date';
			if (is_multisite()) {
				update_blog_option(get_current_blog_id(), $opt_name_license_date, $resp_arr['license_date']);
			} else {
				update_option($opt_name_license_date, $resp_arr['license_date']);
			}
		}
		return;
	}
	
	//	проверка наличия обновлений
	public function check_upd_func($transient) {
		/* 
		* Сначала проверяется наличие в массиве данных наличие поля «checked». Если оно есть, это значит, что WordPress запросил 
		* и обработал данные об обновлении и сейчас самое время вставить в параметр свои данные. 
		* Если нет, значит 12 часов ещё не прошло. Ничего не делаем.
		*/
		/*
		* ["no_update"]=> array(1) { 
		*	["best-woocommerce-feed/rex-product-feed.php"]=> 
		*		object(stdClass)#7367 (9) { 
		*			["id"]=> string(35) "w.org/plugins/best-woocommerce-feed" 
		*			["slug"]=> string(21) "best-woocommerce-feed" 
		*			["plugin"]=> string(42) "best-woocommerce-feed/rex-product-feed.php" 
		*			["new_version"]=> string(3) "3.4" 
		*			["url"]=> string(52) "https://wordpress.org/plugins/best-woocommerce-feed/" 
		*			["package"]=> string(68) "https://downloads.wordpress.org/plugin/best-woocommerce-feed.3.4.zip" 
		*			["icons"]=> array(1) { 
		*				["1x"]=> string(74) "https://ps.w.org/best-woocommerce-feed/assets/icon-128x128.jpg?rev=1737647" 
		*			} 
		*			["banners"]=> array(1) { 
		*				["1x"]=> string(76) "https://ps.w.org/best-woocommerce-feed/assets/banner-772x250.png?rev=1944151"
		*			} 
		*			["banners_rtl"]=> array(0) { } 
		*		} 
		* }
		*/
		global $wp_version; 
		
		/* На время тестов строку ниже нужно раскомментировать */
		wp_clean_update_cache();
		
		if (empty($transient->checked)) {
			return $transient;
		} 

		$response = $this->response_to_api('basic_check');
		$response_code = wp_remote_retrieve_response_code($response);
		$response_message = wp_remote_retrieve_response_message($response);
	
		if (($response_code == 200) && $response_message == 'OK') {
			$resp = unserialize($response['body']);
			
			$this->save_l_date($resp);

			switch ($resp['license_status']) {
				case "expired":
					$this->save_l_stat('expired');
					break;
				case "ok":
					$this->save_l_stat('ok');
					break;
				case "limit":
					$this->save_l_stat('limit');
					break;
				default:
					$this->save_l_stat('no');
			}

//			error_log(get_array_as_string($resp), 0);

			// Обновлений нет. Нет смысла что-то менять. Выходим.
			if (!isset($resp['upd'])) {return $transient;}		

			$plugin                 = new stdClass();		
			$plugin->slug           = $resp['slug'];
			$plugin->plugin 		= $this->plugin_slug;
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
			$plugin->num_ratings    = 16; // число голосов		
			$plugin->sections       = $resp['sections'];		
			$plugin->download_link 	= $resp['package']; // 'https://site.ru/api/pgo-plugin-demo-one.zip';
			
			$transient->response[$this->plugin_slug] = $plugin;	
		} else {
			error_log('Ошибка проверки наличия обновлений. Код ошибки: '.$response_code. '; response_message: '.$response_message.'; Файл: class_plugin_upd.php; Строка: '.__LINE__, 0);
		}
		return $transient;
	}

	/* запрос инфы об обнове */
	public function plugin_api_check_info_func($result, $action, $args) {
		if (isset($args->slug) && ($args->slug === $this->slug)) {			
			$response = $this->response_to_api('basic_check');
			$response_code = wp_remote_retrieve_response_code($response);
			$response_message = wp_remote_retrieve_response_message($response);

			if (($response_code == 200) && $response_message == 'OK') {	
				$resp = unserialize($response['body']);
				$this->save_l_date($resp);
				switch ($resp['license_status']) {
					case "expired":
						$this->save_l_stat('expired');
						break;
					case "ok":
						$this->save_l_stat('ok');
						break;
					case "limit":
						$this->save_l_stat('limit');
						break;
					default:
						$this->save_l_stat('no');
				}
				if (!isset($resp['upd'])) {return $result;} // return false;
				
				$plugin                 = new stdClass();	
				$plugin->slug           = $resp['slug'];
				$plugin->plugin 		= $this->plugin_slug;
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
				error_log('Ошибка запроса инфы о плагине. Код ошибки: '.$response_code. '; response_message: '.$response_message.'; Файл: class_plugin_upd.php; Строка: '.__LINE__, 0);
				return $result; // return false;
			}		

		} else { // это просмотр инфы другого плагина
			return $result;		
		}
	} 

	/* обновление плагина */
	public function set_update_package_func($options) {
		/* 
		* $options = Array (
		*	[package] => name // сюда нужна ссылка до архива
		*	[destination] => /home/p12345/www/site.ru/wp-content/plugins 
		*	[clear_destination] => 1 
		*	[abort_if_destination_exists] => 1 
		*	[clear_working] => 1 
		*	[is_multi] => 1 
		*	[hook_extra] => Array ( 
		* 		[plugin] => pgo-plugin-demo-one/pgo-plugin-demo-one.php 
		* 	) 
		* )  
		*/		
		if (isset($options['hook_extra']['plugin'])) {
			if ($options['hook_extra']['plugin'] === $this->plugin_slug) {
				$order_id = $this->order_id;
				$order_email = $this->order_email;
				$site = home_url('/');
				$dwl_link = 'https://icopydoc.ru/serv/upd/?order_id='.$order_id.'&order_email='.$order_email.'&site='.$site.'&slug='.$this->slug.'&version='.$this->plugin_ver;
				$dwl_link = apply_filters('yfymp_dwl_link_filter', $dwl_link, $order_id, $order_email);
				
				error_log('$dwl_link: '.$dwl_link, 0);

				$options['package'] = $dwl_link;
			} else {

			}
		}

		return $options;
	}

	public function response_to_api($action) {
		global $wp_version;
		$args = array(
			'slug' => $this->slug,
			'version' => $this->plugin_ver, 
			'basic_version' => $this->basic_version,
			'order_id' => $this->order_id,
			'order_email' => $this->order_email,
		);	

//		error_log(get_array_as_string($args), 0);
/*
		error_log('$args[slug]: '.$args['slug'], 0);
		error_log('$args[version]: '.$args['version'], 0);
		error_log('$args[basic_version]: '.$args['basic_version'], 0);
		error_log('$args[order_id]: '.$args['order_id'], 0);
		error_log('$args[order_email]: '.$args['order_email'], 0);
*/
		$args = apply_filters('yfymp_resp_args_filter', $args);
	   
		if ($action == 'basic_check') {
			$request_string = array(
					'body' => array(
						'action' => 'basic_check',
						'request' => serialize($args),
						'api-key' => md5(get_bloginfo('url')),
						'order_id' => $this->order_id,
						'order_email' => $this->order_email,
						'order_home_url' => home_url('/')
					),
					'user-agent' => 'WordPress/' . $wp_version . '; ' . get_bloginfo('url')
			);
			
			$request_string = apply_filters('yfymp_request_string_filter', $request_string);
			$url = 'https://icopydoc.ru/serv';
			$url = apply_filters('yfymp_url_link_filter', $url);
			$response = wp_remote_post(esc_url_raw($url), $request_string);
		} else {
			$response = false;
		}
		return $response;
	}
}

final class YFYMP_Plugin_Form_Activate {
	private $pref = 'yfymp';
	private $submit_name;
	private $opt_name_order_id;
	private $opt_name_order_email;

	public function __construct() {
		$this->submit_name = $this->get_pref().'_submit_license_pro';
		$this->opt_name_order_id = $this->get_pref().'_order_id';
		$this->opt_name_order_email = $this->get_pref().'_order_email';

		$this->save_form();
		$this->the_form();
	}

	private function get_pref() {
		return $this->pref;
	}

	private function get_submit_name() {
		return $this->submit_name;
	}

	private function get_opt_name_order_id() {
		return $this->opt_name_order_id;
	}

	private function get_opt_name_order_email() {
		return $this->opt_name_order_email;
	}

	public function the_form() {		
		if (is_multisite()) {
			$order_id = get_blog_option(get_current_blog_id(), $this->get_opt_name_order_id());
			$order_email = get_blog_option(get_current_blog_id(), $this->get_opt_name_order_email());
		} else {
			$order_id = get_option($this->get_opt_name_order_id());
			$order_email = get_option($this->get_opt_name_order_email());	
		}
		?><div class="postbox"><h2 class="hndle"><?php _e('License data', $this->get_pref()); ?> PRO</h2><div class="inside">	
			<form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post" enctype="multipart/form-data">		
				<table class="form-table"><tbody>
				<tr>
					<th scope="row"><?php _e('Order ID', $this->get_pref()); ?></th>
					<td class="overalldesc">
						<input type="password" name="<?php echo $this->get_opt_name_order_id(); ?>" value="<?php echo $order_id; ?>" /><br />
						<span class="description"><a target="_blank" href="https://icopydoc.ru/kak-aktivirovat-pro-versiyu-instruktsiya/?utm_source=yml-for-yandex-market-rozetka-export&utm_medium=organic&utm_campaign=yml-for-yandex-market-pro&utm_content=settings&utm_term=how-to-activate-order-id"><?php _e('Read more', $this->get_pref()); ?></a></span>
					</td>
				</tr>
				<tr>
					<th scope="row"><?php _e('Order Email', $this->get_pref()); ?></th>
					<td class="overalldesc">
						<input type="text" name="<?php echo $this->get_opt_name_order_email(); ?>" value="<?php echo $order_email; ?>" /><br />
						<span class="description"><a target="_blank" href="https://icopydoc.ru/kak-aktivirovat-pro-versiyu-instruktsiya/?utm_source=yml-for-yandex-market-rozetka-export&utm_medium=organic&utm_campaign=yml-for-yandex-market-pro&utm_content=settings&utm_term=how-to-activate-order-email"><?php _e('Read more', $this->get_pref()); ?></a></span>
					</td>
				</tr>
				</tbody></table>
				<input class="button-primary" type="submit" name="<?php echo $this->get_submit_name(); ?>" value="<?php _e('Update License Data', $this->get_pref()); ?>" />	 
		 	</form>
		</div></div><?php
	}

	private function save_form() {
		if (isset($_REQUEST[$this->get_submit_name()])) {
			if (is_multisite()) {
				if (isset($_POST[$this->get_opt_name_order_id()])) {
					update_blog_option(get_current_blog_id(), $this->get_opt_name_order_id(), sanitize_text_field($_POST[$this->get_opt_name_order_id()]));
				}
				if (isset($_POST[$this->get_opt_name_order_email()])) {
					update_blog_option(get_current_blog_id(), $this->get_opt_name_order_email(), sanitize_text_field($_POST[$this->get_opt_name_order_email()]));
				}
			} else {
				if (isset($_POST[$this->get_opt_name_order_id()])) {
					update_option($this->get_opt_name_order_id(), sanitize_text_field($_POST[$this->get_opt_name_order_id()]));
				}
				if (isset($_POST[$this->get_opt_name_order_email()])) {
					update_option($this->get_opt_name_order_email(), sanitize_text_field($_POST[$this->get_opt_name_order_email()]));
				}	
			}	
			wp_clean_plugins_cache();
			wp_clean_update_cache();
			add_filter('pre_site_transient_update_plugins', '__return_null');
			wp_update_plugins();
			remove_filter('pre_site_transient_update_plugins', '__return_null');
			print '<div class="notice notice-success is-dismissible"><p>'. __('License data has been updated', $this->get_pref()). '. <a href="javascript:location.reload(true)">'. __('Refresh this page', $this->get_pref()). '</a>.</p></div>';		
			wp_update_plugins();	 
	   }
	}
}