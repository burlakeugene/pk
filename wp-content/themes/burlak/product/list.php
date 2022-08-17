<?php
  global $wp_query;
  $total_pages = $wp_query->max_num_pages;
  $current_page = $wp_query->query['paged'] ? $wp_query->query['paged'] : 1;
	if(!$product_template) $product_template = 'product/item';
	if(!$empty) $empty = 'Товары не найдены';
	if($classes){
		$classes = implode(' ', $classes);
	}
	$is_array = is_array($items);
?>
<div class="products <?= $classes ?>">
	<?php if(!$is_array): ?>
	<div class="load-more">
	<?php endif; ?>
	<div class="list <?= !$is_array ? 'load-more__list' : '' ?>"><?php
		if($items):
			foreach ($items as $key => $item):
				my_get_template_part($product_template, array(
					'product' => $item,
					'key' => $key
				));
			endforeach;
			elseif (!$is_array && have_posts()) :
				while (have_posts()) : the_post();
					get_template_part($product_template);
				endwhile;
			endif;
		?></div>
	<?php
		my_get_template_part('blocks/empty', array(
			'text' => $empty
		));
	?>
	<?php if(!$is_array): ?>
		<div class="load-more__pagination">
			<div class="load-more__pagination__col">
				<?php
					if($current_page < $total_pages):
					?>
					<button class="button button--black button--loader load-more__pagination__button">
						Загрузить еще
						<?php get_template_part('icons/loading') ?>
					</button>
					<?php
					endif;
				?>
			</div>
			<div class="load-more__pagination__col">
				<?php the_posts_pagination() ?>
			</div>
		</div>
	</div>
	<?php endif; ?>
</div>