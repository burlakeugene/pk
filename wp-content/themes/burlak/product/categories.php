<?php
$categories = getCategories();
?>
<div class="products__categories">
	<?php
    foreach ($categories as $category):
			$fields = get_fields($category);
			if($index && !$fields['index']) continue;
			$url = esc_url(get_term_link($category));
			$description = term_description($category);
			$background = $fields['background'];
			$current_url = home_url($wp->request).'/';
			?>
				<div class="products__category__wrapper <?= $current_url === $url ? 'products__category--active' : '' ?>">
					<a
						class="products__category ajax"
						style="background-image: url(<?= $background['sizes']['large'] ?>)"
						href="<?= $url ?>">
						<div class="products__category__inner">
							<div class="products__category__inner__top">
								<div class="products__category__name">
									<?= $category->name ?>
								</div>
								<div class="products__category__description">
									<?= $description ?>
								</div>
								<div class="products__category__image">
									<?= woocommerce_subcategory_thumbnail($category); ?>
								</div>
							</div>
							<div class="products__category__inner__bottom">
								<div class="products__category__link">
									Перейти <?php get_template_part('icons/arrow-right') ?>
								</div>
							</div>
						</div>
					</a>
				</div>
			<?php
    endforeach;
	?>
</div>