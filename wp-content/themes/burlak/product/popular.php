<?php
	$array = array();
	$args = array(
		'taxonomy'     => 'product_cat',
		'orderby'      => 'name',
		'show_count'   => 0,
		'pad_counts'   => 0,
		'hierarchical' => 1,
		'title_li'     => '',
		'hide_empty'   => 1,
	);
	$categories = get_categories($args);
	array_unshift($categories, 'all');
	foreach ($categories as $cat) {
		$args = array(
			'category' => $cat != 'all' ? array($cat->slug) : array(),
			'featured' => true,
			'limit' => 8,
		);
		$products = wc_get_products($args);
		$array[] = array(
			'name' => $cat == 'all' ? 'Все' : $cat->name,
			'key'   =>  $cat == 'all' ? 'all' : $cat->slug,
			'products' => $products
		);
	}
	$popular = WC()->session->get('product')['popular'];
?>
<div class="product__popular">
	<div class="product__popular__categories">
		<?php
			foreach ($array as $category):
				if(!count($category['products'])) continue;
			?>
			<button class="product__popular__category"
				data-active="<?= $category['key'] == $popular['active'] ? 'true' : '' ?>"
				data-popular="<?= $category['key'] ?>"
				data-set-popular="<?= $category['key'] ?>"
			>
				<div><?= $category['name'] ?></div>
			</button>
			<?php
			endforeach;
		?>
	</div>
	<?php
		foreach ($array as $category):
			if(!count($category['products'])) continue;
		?>
			<div
			class="product__popular__list"
			data-active="<?= $category['key'] == $popular['active'] ? 'true' : '' ?>"
			data-popular="<?= $category['key'] ?>"
			>
				<?php
					my_get_template_part('product/list', array(
						'products' => $category['products']
					));
				?>
			</div>
		<?php
		endforeach;
	?>
</div>