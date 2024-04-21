<?php
  if($product && get_class($product) == 'WP_Post') $product = new WC_Product($product->ID);
  if(!$product) $product = new WC_Product(get_the_id());
  $image_lazy = wp_get_attachment_image_src(get_post_thumbnail_id($product->get_id()), 'lazy-square');
  $image = wp_get_attachment_image_src(get_post_thumbnail_id($product->get_id()), 'product');
  $size = $product->get_weight();
  $title = $product->get_title();
?>

<div class="product product--search">
  <?php
      if($image):
    ?>
    <div class="product__image">
      <a data-overlay="link" title="<?= getProductAlt($product) ?>" class="ajax" href="<?= $product->get_permalink() ?>">
        <img src="<?= $image[0] ?>" alt="<?= getProductAlt($product) ?>" />
      </a>
    </div>
    <?php
    endif;
  ?>
  <div class="product__info">
    <div class="product__title">
      <a class="ajax" href="<?= $product->get_permalink() ?>" title="<?= $title ?>">
        <?= mb_strimwidth($title, 0, 30, "..."); ?>
      </a>
    </div>
    <div class="product__prices">
      <?php if($product->price): ?>
        <div class="product__price product__price--current">
          <?= wc_price($product->price) ?>
        </div>
      <?php endif; ?>
      <?php if($product->price != $product->regular_price): ?>
        <div class="product__price product__price--old">
          <?= wc_price($product->regular_price) ?>
        </div>
      <?php endif; ?>
    </div>
  </div>
</div>