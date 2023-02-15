<?php if (!defined('ABSPATH')) {exit;} // Защита от прямого вызова скрипта
function yfymp_export_page($feed_id) { 
 $yfymp_one_variable = yfym_optionGET('yfymp_one_variable', $feed_id, 'set_arr'); 
 $yfymp_del_tags_atr = yfym_optionGET('yfymp_del_tags_atr', $feed_id, 'set_arr'); 
 $yfymp_do = yfym_optionGET('yfymp_do', $feed_id, 'set_arr');
 $params_arr = unserialize(yfym_optionGET('yfymp_exclude_cat_arr', $feed_id));
 $yfymp_skip_vendor_names = yfym_optionGET('yfymp_skip_vendor_names', $feed_id, 'set_arr');
 $yfymp_add_only_product_ids = yfym_optionGET('yfymp_add_only_product_ids', $feed_id, 'set_arr');
 $yfymp_compare = yfym_optionGET('yfymp_compare', $feed_id, 'set_arr');
 $yfymp_compare_value = yfym_optionGET('yfymp_compare_value', $feed_id, 'set_arr');
 $yfymp_stock_quantity_compare = yfym_optionGET('yfymp_stock_quantity_compare', $feed_id, 'set_arr');
 $yfymp_stock_quantity_compare_value = yfym_optionGET('yfymp_stock_quantity_compare_value', $feed_id, 'set_arr');
 $yfymp_stock_quantity_compare_value_max = yfym_optionGET('yfymp_stock_quantity_compare_value_max', $feed_id, 'set_arr');
 $yfymp_manage_stock_off = yfym_optionGET('yfymp_manage_stock_off', $feed_id, 'set_arr');
 $yfymp_price_post_meta = yfym_optionGET('yfymp_price_post_meta', $feed_id, 'set_arr');
 $yfymp_multiply_price_value = yfym_optionGET('yfymp_multiply_price_value', $feed_id, 'set_arr');
 $yfymp_add_to_price_value = yfym_optionGET('yfymp_add_to_price_value', $feed_id, 'set_arr');
 $yfymp_round_price_value = yfym_optionGET('yfymp_round_price_value', $feed_id, 'set_arr');

 $yfymp_num_pic = yfym_optionGET('yfymp_num_pic', $feed_id, 'set_arr');
 $yfymp_add_from_prod_gallery = yfym_optionGET('yfymp_add_from_prod_gallery', $feed_id, 'set_arr');
 $yfymp_excl_thumb = yfym_optionGET('yfymp_excl_thumb', $feed_id, 'set_arr');
 $yfymp_use_utm = yfym_optionGET('yfymp_use_utm', $feed_id, 'set_arr');
 $yfymp_utm_source = stripslashes(htmlspecialchars(yfym_optionGET('yfymp_utm_source', $feed_id, 'set_arr')));
 $yfymp_utm_campaign = stripslashes(htmlspecialchars(yfym_optionGET('yfymp_utm_campaign', $feed_id, 'set_arr')));
 $yfymp_utm_content = yfym_optionGET('yfymp_utm_content', $feed_id, 'set_arr'); 
 $yfymp_utm_medium = yfym_optionGET('yfymp_utm_medium', $feed_id, 'set_arr');
 $yfymp_roistat = yfym_optionGET('yfymp_roistat', $feed_id, 'set_arr');
 $yfymp_use_del_vc = yfym_optionGET('yfymp_use_del_vc', $feed_id, 'set_arr');

 $yfymp_name_var0 = yfym_optionGET('yfymp_name_var0', $feed_id, 'set_arr');
 $yfymp_name_var01 = yfym_optionGET('yfymp_name_var01', $feed_id, 'set_arr');
 $yfymp_name_var1 = yfym_optionGET('yfymp_name_var1', $feed_id, 'set_arr');
 $yfymp_name_var2 = yfym_optionGET('yfymp_name_var2', $feed_id, 'set_arr');
 $yfymp_name_var3 = yfym_optionGET('yfymp_name_var3', $feed_id, 'set_arr');
 $yfymp_simple_name_var0 = yfym_optionGET('yfymp_simple_name_var0', $feed_id, 'set_arr');
 $yfymp_simple_name_var1 = yfym_optionGET('yfymp_simple_name_var1', $feed_id, 'set_arr');
 $yfymp_simple_name_var2 = yfym_optionGET('yfymp_simple_name_var2', $feed_id, 'set_arr'); ?>
	<tr>
		<th scope="row"><label for="yfymp_one_variable"><?php _e('Upload only the first variation', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<input type="checkbox" name="yfymp_one_variable" id="yfymp_one_variable" <?php checked($yfymp_one_variable, 'on' ); ?>/>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_del_tags_atr"><?php _e('Remove attributes from tags', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<input type="checkbox" name="yfymp_del_tags_atr" id="yfymp_del_tags_atr" <?php checked($yfymp_del_tags_atr, 'on' ); ?>/>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_simple_name_var0"><?php _e('Add to simple product names (at the beginning)', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_simple_name_var0" id="yfymp_simple_name_var0">		
			<option value="disabled" <?php selected($yfymp_simple_name_var0, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>
			<option value="sku" <?php selected($yfymp_simple_name_var0, 'sku'); ?>><?php _e('Substitute from SKU', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected($yfymp_simple_name_var0, $attribute['id']); ?>><?php echo $attribute['name']; ?></option><?php endforeach; ?>
			</select><br />	
			<span class="description"><small><?php _e('Add the following attribute to the beginning of simple product names', 'yfymp'); ?></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_simple_name_var1"><?php _e('Add to simple product names (at the end)', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_simple_name_var1" id="yfymp_simple_name_var1">		
			<option value="disabled" <?php selected($yfymp_simple_name_var1, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>
			<option value="sku" <?php selected($yfymp_simple_name_var1, 'sku'); ?>><?php _e('Substitute from SKU', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected($yfymp_simple_name_var1, $attribute['id'] ); ?>><?php echo $attribute['name']; ?></option><?php endforeach; ?>
			</select><br />
			<select name="yfymp_simple_name_var2" id="yfymp_simple_name_var2">		
			<option value="disabled" <?php selected($yfymp_simple_name_var2, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>
			<option value="sku" <?php selected($yfymp_simple_name_var2, 'sku'); ?>><?php _e('Substitute from SKU', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected($yfymp_simple_name_var2, $attribute['id'] ); ?>><?php echo $attribute['name']; ?></option><?php endforeach; ?>
			</select><br />
			<span class="description"><small><?php _e('Adds the following attributes to the end of simple product names', 'yfymp'); ?></small></span>
		</td>
	</tr>  
	<tr>
		<th scope="row"><label for="yfymp_name_var0"><?php _e('Add to all product names (at the beginning)', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_name_var0" id="yfymp_name_var0">		
			<option value="disabled" <?php selected($yfymp_name_var0, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>
			<option value="sku" <?php selected($yfymp_name_var0, 'sku'); ?>><?php _e( 'Substitute from SKU', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected($yfymp_name_var0, $attribute['id']); ?>><?php echo $attribute['name']; ?></option><?php endforeach; ?>
			</select><br />	
			<select name="yfymp_name_var01" id="yfymp_name_var01">		
			<option value="disabled" <?php selected($yfymp_name_var01, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>
			<option value="sku" <?php selected($yfymp_name_var01, 'sku'); ?>><?php _e( 'Substitute from SKU', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected($yfymp_name_var01, $attribute['id']); ?>><?php echo $attribute['name']; ?></option><?php endforeach; ?>
			</select><br />	
			<span class="description"><small><?php _e('Add the following attribute to the beginning of all product names', 'yfymp'); ?></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_name_var1"><?php _e('Add to all product names (at the end)', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_name_var1" id="yfymp_name_var1">		
			<option value="disabled" <?php selected($yfymp_name_var1, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>
			<option value="sku" <?php selected($yfymp_name_var1, 'sku'); ?>><?php _e( 'Substitute from SKU', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected( $yfymp_name_var1, $attribute['id'] ); ?>><?php echo $attribute['name']; ?></option><?php endforeach; ?>
			</select><br />
			<select name="yfymp_name_var2" id="yfymp_name_var2">		
			<option value="disabled" <?php selected($yfymp_name_var2, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>
			<option value="sku" <?php selected($yfymp_name_var2, 'sku'); ?>><?php _e( 'Substitute from SKU', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected( $yfymp_name_var2, $attribute['id'] ); ?>><?php echo $attribute['name']; ?></option><?php endforeach; ?>
			</select><br />
			<select name="yfymp_name_var3" id="yfymp_name_var3">		
			<option value="disabled" <?php selected($yfymp_name_var3, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>
			<option value="sku" <?php selected($yfymp_name_var3, 'sku'); ?>><?php _e( 'Substitute from SKU', 'yfymp'); ?></option>
			<?php foreach (get_attributes() as $attribute) : ?>	
			<option value="<?php echo $attribute['id']; ?>" <?php selected( $yfymp_name_var3, $attribute['id'] ); ?>><?php echo $attribute['name']; ?></option><?php endforeach; ?>
			</select><br />
			<span class="description"><small><?php _e('Adds the following attributes to the end of all product names', 'yfymp'); ?></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><?php _e('Price from post_meta', 'yfymp'); ?></th>		 
		<td class="overalldesc">
			<input type="text" name="yfymp_price_post_meta" value="<?php echo $yfymp_price_post_meta; ?>" placeholder="<?php _e('Name post_meta', 'yfymp'); ?>" /><br />
			<span class="description"><small><?php _e('If you enter the name of the meta field here, the value of the price will be taken from it', 'yfymp'); ?></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><?php _e('Multiply the price', 'yfymp'); ?></th>		 
		<td class="overalldesc">
			<input min="0" step="any" type="number" name="yfymp_multiply_price_value" value="<?php echo $yfymp_multiply_price_value; ?>" /><br />
			<span class="description"><small><?php _e('Do not use it for a feed created for Yandex Market', 'yfymp'); ?>.<br /><?php _e('The product price will be multiplied by the value from this field. Leave this field blank to not change the price', 'yfymp'); ?></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><?php _e('Add to price', 'yfymp'); ?><br />(<?php _e('negative values can be used', 'yfymp'); ?>)</th>		 
		<td class="overalldesc">
			<input step="any" type="number" name="yfymp_add_to_price_value" value="<?php echo $yfymp_add_to_price_value; ?>" /><br />
			<span class="description"><small><?php _e('Do not use it for a feed created for Yandex Market', 'yfymp'); ?>.<br /><?php _e('This value will be added to the cost of the product. Leave this field blank to not change the price', 'yfymp'); ?></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_round_price_value"><?php _e('Round the price to', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_round_price_value" id="yfymp_round_price_value">		
				<option value="hundredths" <?php selected($yfymp_round_price_value, 'hundredths'); ?>><?php _e('hundredths', 'yfymp'); ?></option>
				<option value="integers" <?php selected($yfymp_round_price_value, 'integers'); ?>><?php _e('integers', 'yfymp'); ?></option>
				<option value="tens" <?php selected($yfymp_round_price_value, 'tens'); ?>><?php _e('tens', 'yfymp'); ?></option>
				<option value="hundreds" <?php selected($yfymp_round_price_value, 'hundreds'); ?>><?php _e('hundreds', 'yfymp'); ?></option>
				<option value="thousands" <?php selected($yfymp_round_price_value, 'thousands'); ?>><?php _e('thousands', 'yfymp'); ?></option>
			</select>
			<span class="description"><small></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><?php _e('Export only products', 'yfymp'); ?><select name="yfymp_compare"><option value="<" <?php selected($yfymp_compare, '<'); ?>><?php _e('cheaper', 'yfymp'); ?></option><option value=">=" <?php selected($yfymp_compare, '>='); ?>><?php _e('expensively', 'yfymp'); ?></option></select></th>
		<td class="overalldesc">
			<input min="0" step="any" type="number" name="yfymp_compare_value" value="<?php echo $yfymp_compare_value; ?>" /><br />
			<span class="description"></span>
		</td>
	</tr>
	<?php 
	$basic_plugin_file = plugin_dir_path( __DIR__ ).'yml-for-yandex-market/yml-for-yandex-market.php'; // /home/www/site.ru/wp-content/plugins/yml-for-yandex-market/yml-for-yandex-market.php';
	$get_from_headers_arr = array('ver' => 'Version', 'name' => 'Plugin Name');
	$basic_plugin_data = get_file_data($basic_plugin_file, $get_from_headers_arr);
	if (version_compare($basic_plugin_data['ver'], '3.7.13', '<')) : ?>
		<tr>
			<th scope="row"><?php _e('Export only products the stock quantity of which', 'yfymp'); ?><select name="yfymp_stock_quantity_compare"><option value="<" <?php selected($yfymp_stock_quantity_compare, '<'); ?>><?php _e('less', 'yfymp'); ?></option><option value=">" <?php selected($yfymp_stock_quantity_compare, '>'); ?>><?php _e('more', 'yfymp'); ?></option></select></th>		 
			<td class="overalldesc">
				<input min="0" type="number" name="yfymp_stock_quantity_compare_value" value="<?php echo $yfymp_stock_quantity_compare_value; ?>" /><br />
				<span class="description"><small><?php _e('This option only works for products that have the "stock management" checkbox selected', 'yfymp'); ?>. <?php _e('It is recommended to enable stock management for all products, otherwise this filter may not work correctly', 'yfymp'); ?>. <?php _e('Leave blank or set to 0 to not use this filter', 'yfymp'); ?></small></span>
			</td>
		</tr>
	<?php else : ?>
		<tr>
			<th scope="row"><?php _e('Export only products the stock quantity of which', 'yfymp'); ?>
				<select style="display: none;" name="yfymp_stock_quantity_compare"><option value="<" <?php selected($yfymp_stock_quantity_compare, '<'); ?>><?php _e('less', 'yfymp'); ?></option><option value=">" <?php selected($yfymp_stock_quantity_compare, '>'); ?>><?php _e('more', 'yfymp'); ?></option></select>
			</th>		 
			<td class="overalldesc">
				> <input style="width: 100px;" min="-1" type="number" name="yfymp_stock_quantity_compare_value" value="<?php echo $yfymp_stock_quantity_compare_value; ?>" /> и <input style="width: 100px;" min="0" type="number" name="yfymp_stock_quantity_compare_value_max" value="<?php echo $yfymp_stock_quantity_compare_value_max; ?>" /> < <br />
				<span class="description"><small><?php _e('This option only works for products that have the "stock management" checkbox selected', 'yfymp'); ?>. <?php _e('It is recommended to enable stock management for all products, otherwise this filter may not work correctly', 'yfymp'); ?>. <?php _e('Leave blank or set to 0 to not use this filter', 'yfymp'); ?></small></span>
			</td>
		</tr>
	<?php endif; ?>
	<tr>
		<th scope="row"><label for="yfymp_manage_stock_off"><?php _e('Export only products for which enable stock management', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<input type="checkbox" name="yfymp_manage_stock_off" id="yfymp_manage_stock_off" <?php checked($yfymp_manage_stock_off, 'on' ); ?>/>
		</td>
	</tr>
	<tr>
		<th scope="row"><select name="yfymp_do">
			<option value="include" <?php selected($yfymp_do, 'include'); ?>><?php _e('Export only', 'yfymp'); ?></option>
			<option value="exclude" <?php selected($yfymp_do, 'exclude'); ?>><?php _e('Exclude', 'yfymp'); ?></option>
		</select><br /><label for="yfymp_exclude_cat_arr"> <?php _e('products from these categories and tags', 'yfymp'); ?></label></th>
		<td class="overalldesc">				
		<select style="width: 100%;" id="yfymp_exclude_cat_arr" name="yfymp_exclude_cat_arr[]" size="8" multiple>
		 <optgroup label="<?php _e('Category', 'yfymp'); ?>">
		 <?php 	
			foreach (get_terms('product_cat', array('hide_empty'=>0, 'parent'=>0)) as $term) {
				echo the_cat_tree($term->taxonomy, $term->term_id, $params_arr);		
			} ?>
		 </optgroup>
		 <optgroup label="<?php _e('Tags', 'yfymp'); ?>">
		 <?php 		 
		 $args = array('taxonomy' => 'product_tag','hide_empty' => false,);
		 $terms = get_terms('product_tag', $args); $count = count($terms);
		 if ($count > 0) : foreach ($terms as $term) : $catid = $term->term_id; ?>
			<option value="<?php echo $catid; ?>"<?php if (!empty($params_arr)) { foreach ($params_arr as $value) {selected($value, $catid);}} ?>><?php echo $term->name . ' (' . $catid .')'; ?></option>
		 <?php endforeach; endif; ?>
		 </optgroup>
		</select><br />
		<span class="description"><?php /*_e('Products from these categories and tags are will not be add to the feed', 'yfymp');*/ ?></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><?php _e('Skip vendor', 'yfymp'); ?></label></th>
		<td class="overalldesc">				
			<p><textarea rows="6" cols="32" id="yfymp_skip_vendor_names" name="yfymp_skip_vendor_names" placeholder="<?php _e('Enter brand names separated by semicolons', 'yfymp'); ?>"><?php echo $yfymp_skip_vendor_names; ?></textarea></p>
			<span class="description"><small><?php _e('Products from these brands are will not be add to the feed', 'yfymp'); ?>. <?php _e('The source of brands is configured on the tab', 'yfymp'); ?> "<?php _e('Attribute settings', 'yfym'); ?>" (vendor). <a href="https://icopydoc.ru/kak-filtrovat-tovary-po-nazvaniyu-brenda-instruktsiya/?utm_source=yml-for-yandex-market-pro&utm_medium=organic&utm_campaign=in-plugin-yml-for-yandex-market-pro&utm_content=settings&utm_term=skip-vendor" target="_blank"><?php _e('Read more', 'yfymp'); ?></a></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><?php _e('Export products by id', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<p><textarea rows="6" cols="32" id="yfymp_add_only_product_ids" name="yfymp_add_only_product_ids" placeholder="<?php _e('Enter products ids separated by semicolons', 'yfymp'); ?>"><?php echo $yfymp_add_only_product_ids; ?></textarea></p>
			<span class="description"><small><?php _e('Only products from these ids are will be add to the feed', 'yfymp'); ?>.</small></span>
		</td>
	</tr>
	<tr class="yfym_tr">
		<th scope="row"><label for="yfymp_use_utm"><?php _e('Add UTM', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<input type="checkbox" id="yfymp_use_utm" name="yfymp_use_utm" <?php checked($yfymp_use_utm, 'on' ); ?>/><br />
			<span class="description"><small><?php _e('Add UTM tags to products URL', 'yfymp'); ?></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_utm_source"><?php _e('Referral source', 'yfymp'); ?></label></th>
			<td class="overalldesc">
			<input maxlength="20" type="text" name="yfymp_utm_source" id="yfymp_utm_source" value="<?php echo $yfymp_utm_source; ?>" /><br />
			<span class="description"><small><?php _e('UTM tag', 'yfymp'); ?> <strong>utm_source</strong></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_utm_campaign"><?php _e('The name of the advertising campaign', 'yfymp'); ?></label></th>
			<td class="overalldesc">
			<input maxlength="50" type="text" name="yfymp_utm_campaign" id="yfymp_utm_campaign" value="<?php echo $yfymp_utm_campaign; ?>" /><br />
			<span class="description"><small><?php _e('UTM tag', 'yfymp'); ?> <strong>utm_campaign</strong>. <?php _e('You can add category ID by adding', 'yfymp'); ?> <code>{catid}</code> <?php _e('and product ID', 'yfymp'); ?><code>{productid}</code></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_utm_content"><?php _e('Additional information', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_utm_content" id="yfymp_utm_content">
			<option value="catid" <?php selected($yfymp_utm_content, 'catid'); ?>><?php _e('Category ID', 'yfymp'); ?></option>
			<option value="productid" <?php selected($yfymp_utm_content, 'productid'); ?>><?php _e('Product ID', 'yfymp'); ?></option>
			</select><br />
			<span class="description"><small><?php _e('UTM tag', 'yfymp'); ?> <strong>utm_content</strong></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_utm_medium"><?php _e('Traffic type', 'yfymp'); ?></label></th>
			<td class="overalldesc">
			<input maxlength="50" type="text" name="yfymp_utm_medium" id="yfymp_utm_medium" value="<?php echo $yfymp_utm_medium; ?>" /><br />
			<span class="description"><small><?php _e('UTM tag', 'yfymp'); ?> <strong>utm_medium</strong>. <?php _e('You can add category ID by adding', 'yfymp'); ?> <code>{catid}</code> <?php _e('and product ID', 'yfymp'); ?><code>{productid}</code></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_roistat"><?php _e('Roistat', 'yfymp'); ?></label></th>
			<td class="overalldesc">
			<input style="width: 100%;" maxlength="100" type="text" name="yfymp_roistat" id="yfymp_roistat" value="<?php echo $yfymp_roistat; ?>" /><br />
			<span class="description"><small><?php _e('Roistat tag', 'yfymp'); ?> <strong>rs</strong>. <?php _e('You can add category ID by adding', 'yfymp'); ?> <code>{catid}</code>, <?php if (defined('yfym_VER')) : if (version_compare(yfym_VER, '3.3.13', '>')) : ?><?php _e('product ID or variation ID', 'yfymp'); ?> <code>{productorvarid}</code> <?php endif; endif;?><?php _e('and product ID', 'yfymp'); ?><code>{productid}</code></small></span>
		</td>
	</tr>
	<tr class="yfym_tr">
		<th scope="row"><label for="yfymp_use_del_vc"><?php _e('Remove VC tags', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<input type="checkbox" id="yfymp_use_del_vc" name="yfymp_use_del_vc" <?php checked($yfymp_use_del_vc, 'on' ); ?>/><br />
			<span class="description"><small><?php _e('Remove the Visual Composer tags from the description', 'yfymp'); ?></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_num_pic"><?php _e('Number of images', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<input min="0" type="number" id="yfymp_num_pic" name="yfymp_num_pic" value="<?php echo $yfymp_num_pic; ?>" /><br />
			<span class="description"><?php _e('The maximum number of images that will be displayed in the feed from the product gallery', 'yfymp'); ?> <strong><small><?php _e('Maximum 9', 'yfymp'); ?></strong></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_add_from_prod_gallery"><?php _e('Add images from the general gallery', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<select name="yfymp_add_from_prod_gallery" id="yfymp_add_from_prod_gallery">
			<option value="disabled" <?php selected($yfymp_add_from_prod_gallery, 'disabled'); ?>><?php _e('Disabled', 'yfymp'); ?></option>
			<option value="enabled" <?php selected($yfymp_add_from_prod_gallery, 'enabled'); ?>><?php _e('Enabled', 'yfymp'); ?></option>
			</select><br />
			<span class="description"><small><?php _e('Add images from the general gallery to the images of variations', 'yfymp'); ?></small></span>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="yfymp_excl_thumb"><?php _e('Do not unload the image of the main product', 'yfymp'); ?></label></th>
		<td class="overalldesc">
			<input type="checkbox" id="yfymp_excl_thumb" name="yfymp_excl_thumb" <?php checked($yfymp_excl_thumb, 'on' ); ?>/><br />
			<span class="description"><small><?php _e("The image specified as the product's main image will not be included in the feed", "yfymp"); ?></small></span>
		</td>
	</tr>
<?php
} /* end функция настроек yfymp_export_page */