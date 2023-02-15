<?php // https://2web-master.ru/wp_list_table-%E2%80%93-poshagovoe-rukovodstvo.html https://wp-kama.ru/function/wp_list_table
class YFYMP_Settings_Constructor_Params_WP_List_Table extends WP_List_Table {
	private $feed_id;

	function __construct($feed_id) {
		$this->feed_id = $feed_id;

		global $status, $page;
		parent::__construct( array(
			'plural'	=> '', 		// По умолчанию: '' ($this->screen->base); Название для множественного числа, используется во всяких заголовках, например в css классах, в заметках, например 'posts', тогда 'posts' будет добавлен в класс table.
			'singular'	=> '', 		// По умолчанию: ''; Название для единственного числа, например 'post'. 
			'ajax'		=> false,	// По умолчанию: false; Должна ли поддерживать таблица AJAX. Если true, класс будет вызывать метод _js_vars() в подвале, чтобы передать нужные переменные любому скрипту обрабатывающему AJAX события.
			'screen'	=> null, 	// По умолчанию: null; Строка содержащая название хука, нужного для определения текущей страницы. Если null, то будет установлен текущий экран.
		) );
		add_action('admin_footer', array($this, 'admin_header')); // меняем ширину колонок	
	}

	/*	Сейчас у таблицы стандартные стили WordPress. Чтобы это исправить, вам нужно адаптировать классы CSS, которые были 
	*	автоматически применены к каждому столбцу. Название класса состоит из строки «column-» и ключевого имени 
	* 	массива $columns, например «column-isbn» или «column-author».
	*	В качестве примера мы переопределим ширину столбцов (для простоты, стили прописаны непосредственно в HTML разделе head)
	*/
	function admin_header() {
/*		echo '<style type="text/css">'; 
		echo '#yfym_c_param_name, .column-yfym_c_param_name {width: 7%;}';
		echo '</style>';*/
	}

	/*	Метод get_columns() необходим для маркировки столбцов внизу и вверху таблицы. 
	*	Ключи в массиве должны быть теми же, что и в массиве данных, 
	*	иначе соответствующие столбцы не будут отображены.
	*/
	function get_columns() {
		$columns = array(
//			'cb'					=> '<input type="checkbox" />', // флажок сортировки. см get_bulk_actions и column_cb
			'yfym_c_param_switcher'	=> __('Use', 'yfymp'),
			'yfym_c_param_name'		=> 'Name (X)',
			'yfym_c_param_unit'		=> 'Unit (Y)',
			'yfym_c_param_value'	=> 'Value (Z)',
			
		);
		return $columns;
	}
	/*	
	*	Метод вытаскивает из БД данные, которые будут лежать в таблице
	*	$this->table_data();
	*/
	private function table_data() {
		$result_arr = array();

		$feed_id = $this->get_feed_id();

		$n = '1';
		if (!defined('yfymp_PARAM_N')) {define('yfymp_PARAM_N', 15);}
		for ($i = 0; $i < yfymp_PARAM_N; $i++) {
			$yfymp_p_use1 = yfym_optionGET('yfymp_p_use'.$n, $feed_id, 'custom_set_arr', 'p_arr');
		
			$yfymp_p_name_s1 = yfym_optionGET('yfymp_p_name_s'.$n, $feed_id, 'custom_set_arr', 'p_arr'); 
			$yfymp_p_name_custom1 = yfym_optionGET('yfymp_p_name_custom'.$n, $feed_id, 'custom_set_arr', 'p_arr');
		
			$yfymp_p_unit_s1 = yfym_optionGET('yfymp_p_unit_s'.$n, $feed_id, 'custom_set_arr', 'p_arr'); 
			$yfymp_p_unit_default_s1 = yfym_optionGET('yfymp_p_unit_default_s'.$n, $feed_id, 'custom_set_arr', 'p_arr');
			$yfymp_p_unit_custom1 = yfym_optionGET('yfymp_p_unit_custom'.$n, $feed_id, 'custom_set_arr', 'p_arr');
			
			$yfymp_p_val_s1 = yfym_optionGET('yfymp_p_val_s'.$n, $feed_id, 'custom_set_arr', 'p_arr'); 
			$yfymp_p_val_custom1 = yfym_optionGET('yfymp_p_val_custom'.$n, $feed_id, 'custom_set_arr', 'p_arr');

			$result_arr[] = array(
				'yfym_c_param_switcher'	=>	'<strong>&lt;param name=&quot;X&quot; unit=&quot;Y&quot;&gt;Z&lt;/param&gt;</strong>'.
											'<br/>Param '.$n.':'.$this->get_select_html_v2('yfymp_p_use'.$n, $feed_id, array(
												'disabled' => __('Disabled', 'yfymp'),
												'on' => __('Enabled')
											)),
				'yfym_c_param_name' 	=>	$this->get_select_html_v2('yfymp_p_name_s'.$n, $feed_id, array(
												'Размер' => 'Размер',
												'Обхват груди' => 'Обхват груди',
												'Обхват талии' => 'Обхват талии',
												'Обхват бедер' => 'Обхват бедер',
												'Рост' => 'Рост',
												'Длина шагового шва' => 'Длина шагового шва',
												'Обхват под грудью' => 'Обхват под грудью',
												'Размер чашки' => 'Размер чашки',
												'Размер трусов' => 'Размер трусов',
												'Обхват ладони' => 'Обхват ладони', 
												'Возраст' => 'Возраст',
												'Объем' => 'Объем',
											)).'<br />'.
											__('or specify custom value', 'yfymp').':<br />'.
											$this->get_input_html('yfymp_p_name_custom'.$n, $feed_id, 'type2'),
				'yfym_c_param_unit' 	=> 	$this->get_select_html('yfymp_p_unit_s'.$n, $feed_id, array()).'<br />'.
											__('In the absence of a substitute', 'yfymp').':<br />'.
											$this->get_select_html_v2('yfymp_p_unit_default_s'.$n, $feed_id, array(
												'AU' => 'AU',
												'DE' => 'DE',
												'EU' => 'EU',
												'FR' => 'FR',
												'Japan' => 'Japan',
												'INT' => 'INT',
												'IT' => 'IT',
												'RU' => 'RU',
												'UK' => 'UK',
												'US' => 'US',
												'INCH' => 'INCH',
												'Height' => 'Height',
												'Months' => 'Months',
												'Round' => 'Round',
												'Years' => 'Years',
												'ml' => 'ml',
												'мл' => 'мл'
											)).'<br/>'.
											__('or specify custom value', 'yfymp').':<br />'.
											$this->get_input_html('yfymp_p_unit_custom'.$n, $feed_id, 'type2'),
				'yfym_c_param_value' 	=>	$this->get_select_html('yfymp_p_val_s'.$n, $feed_id, array()).'<br/>'.
											__('or specify custom value', 'yfymp').':<br />'.
											$this->get_input_html('yfymp_p_val_custom'.$n, $feed_id, 'type2')
			);
			$n++;
		}
		return $result_arr;
	}

	private function get_input_html($opt_name, $feed_id = '1', $type_placeholder = 'type1') {
		$opt_value = yfym_optionGET($opt_name, $feed_id, 'custom_set_arr', 'p_arr');

		switch ($type_placeholder) {
			case 'type1':
				$placeholder = __('Name post_meta', 'yfym');
				break;
			case 'type2':
				$placeholder = __('Default value', 'yfym');
				break;
			case 'type3':
				$placeholder = __('Value', 'yfym') .' / '. __('Name post_meta', 'yfym');
				break;
			case 'type4':
				$placeholder = __('Name post_meta', 'yfym'). ' '. __('for simple products', 'yfym');
				break;
			case 'type5':
				$placeholder = __('Name post_meta', 'yfym'). ' '. __('for variable products', 'yfym');
				break;
			default:
				$placeholder = __('Name post_meta', 'yfym');
		}

		return '<input type="text" maxlength="25" name="'.$opt_name.'" id="'.$opt_name.'" value="'.$opt_value.'" placeholder="'.$placeholder.'" />';
	}
	
	private function get_select_html_v2($opt_name, $feed_id = '1', $otions_arr = array()) {
		$opt_value = yfym_optionGET($opt_name, $feed_id, 'custom_set_arr', 'p_arr');

		$res = '<select name="'.$opt_name.'" id="'.$opt_name.'">';
		foreach ($otions_arr as $key => $value) {
			$res .= '<option value="'.$key.'" '.selected($opt_value, $key, false).'>'.$value.'</option>';
		}
		$res .= '</select>';
		return $res;
	}

	private function get_select_html($opt_name, $feed_id = '1', $otions_arr = array()) {
		$opt_value = yfym_optionGET($opt_name, $feed_id, 'custom_set_arr', 'p_arr');

		$res = '<select name="'.$opt_name.'" id="'.$opt_name.'">
					<option value="disabled" '.selected($opt_value, 'disabled', false).'>'. __('Disabled', 'yfym').'</option>';

					if (isset($otions_arr['products_id'])) {
						$res .= '<option value="products_id" '.selected($opt_value, 'products_id', false).'>'. __('Add from products ID', 'yfym').'</option>';
					}			

					if (isset($otions_arr['yes'])) {
						$res .= '<option value="yes" '.selected($opt_value, 'yes', false).'>'. __('Yes', 'yfym').'</option>';
					}

					if (isset($otions_arr['no'])) {
						$res .= '<option value="no" '.selected($opt_value, 'no', false).'>'. __('No', 'yfym').'</option>';
					}

					if (isset($otions_arr['true'])) {
						$res .= '<option value="true" '.selected($opt_value, 'true', false).'>'. __('True', 'yfym').'</option>';
					}

					if (isset($otions_arr['false'])) {
						$res .= '<option value="false" '.selected($opt_value, 'false', false).'>'. __('False', 'yfym').'</option>';
					}
	
					if (isset($otions_arr['alltrue'])) {
						$res .= '<option value="alltrue" '.selected($opt_value, 'alltrue', false).'>'. __('Add to all', 'yfym').' true</option>';
					}

					if (isset($otions_arr['allfalse'])) {
						$res .= '<option value="allfalse" '.selected($opt_value, 'allfalse', false).'>'. __('Add to all', 'yfym').' false</option>';
					}

					if (isset($otions_arr['sku'])) {
						$res .= '<option value="sku" '. selected($opt_value, 'sku', false).'>'. __('Substitute from SKU', 'yfym').'</option>';
					}

					if (isset($otions_arr['post_meta'])) {
						$res .= '<option value="post_meta" '. selected($opt_value, 'post_meta', false).'>'. __('Substitute from post meta', 'yfym').'</option>';
					}

					if (isset($otions_arr['default_value'])) {
						$res .= '<option value="default_value" '.selected($opt_value, 'default_value', false).'>'. __('Default value from field', 'yfym').' "'.__('Default value', 'yfym').'"</option>';
					}

					if (class_exists('WooCommerce_Germanized')) {
						if (isset($otions_arr['germanized'])) {
							$res .= '<option value="germanized" '. selected($opt_value, 'germanized', false).'>'. __('Substitute from', 'yfym'). 'WooCommerce Germanized</option>';
						}
					}	
					
					if (isset($otions_arr['brands'])) {
						if (is_plugin_active('perfect-woocommerce-brands/perfect-woocommerce-brands.php') || is_plugin_active('perfect-woocommerce-brands/main.php') || class_exists('Perfect_Woocommerce_Brands')) {
							$res .= '<option value="sfpwb" '. selected($opt_value, 'sfpwb', false).'>'. __('Substitute from', 'yfym'). 'Perfect Woocommerce Brands</option>';
						}
						if (is_plugin_active('premmerce-woocommerce-brands/premmerce-brands.php')) {
							$res .= '<option value="premmercebrandsplugin" '. selected($opt_value, 'premmercebrandsplugin', false).'>'. __('Substitute from', 'yfym'). 'Premmerce Brands for WooCommerce</option>';
						}
						if (is_plugin_active('woocommerce-brands/woocommerce-brands.php')) {
							$res .= '<option value="woocommerce_brands" '. selected($opt_value, 'woocommerce_brands', false).'>'. __('Substitute from', 'yfym'). 'WooCommerce Brands</option>';
						}
						if (class_exists('woo_brands')) {
							$res .= '<option value="woo_brands" '. selected($opt_value, 'woo_brands', false).'>'. __('Substitute from', 'yfym'). 'Woocomerce Brands Pro</option>';
						}	
					}

					foreach (yfym_get_attributes() as $attribute) {
						$res .= '<option value="'.$attribute['id'].'" '.selected($opt_value, $attribute['id'], false).'>'.$attribute['name'].'</option>';
					}
		$res .= '</select>';
		return $res;
	}
	/*
	*	prepare_items определяет два массива, управляющие работой таблицы:
	*	$hidden определяет скрытые столбцы https://2web-master.ru/wp_list_table-%E2%80%93-poshagovoe-rukovodstvo.html#screen-options
	*	$sortable определяет, может ли таблица быть отсортирована по этому столбцу.
	*
	*/
	function prepare_items() {
		$columns = $this->get_columns();
		$hidden = array();
		$sortable = $this->get_sortable_columns(); // вызов сортировки
		$this->_column_headers = array($columns, $hidden, $sortable);
		// блок пагинации пропущен
		$this->items = $this->table_data();
	}
	/*
	* 	Данные таблицы.
	*	Наконец, метод назначает данные из примера на переменную представления данных класса — items.
	*	Прежде чем отобразить каждый столбец, WordPress ищет методы типа column_{key_name}, например, function column_yfym_c_param_unit. 
	*	Такой метод должен быть указан для каждого столбца. Но чтобы не создавать эти методы для всех столбцов в отдельности, 
	*	можно использовать column_default. Эта функция обработает все столбцы, для которых не определён специальный метод:
	*/ 
	function column_default($item, $column_name) {
		switch($column_name) {
			case 'yfym_c_param_switcher':
			case 'yfym_c_param_name':
			case 'yfym_c_param_unit':
			case 'yfym_c_param_value':
				return $item[$column_name];
			default:
				return print_r($item, true) ; // Мы отображаем целый массив во избежание проблем
		}
	}
	// Флажки для строк должны быть определены отдельно. Как упоминалось выше, есть метод column_{column} для отображения столбца. cb-столбец – особый случай:
/*	function column_cb($item) {
		return sprintf(
			'<input type="checkbox" name="checkbox_xml_file[]" value="%s" />', $item['yfym_c_param_name']
		);
	}*/

	private function get_feed_id() {
		return $this->feed_id;
	}
}