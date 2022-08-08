<?php
  if($product && get_class($product) == 'WP_Post') $product = new WC_Product($product->ID);
  if(!$product) $product = new WC_Product(get_the_id());
  $image_lazy = wp_get_attachment_image_src(get_post_thumbnail_id($product->get_id()), 'lazy-square');
  $image = wp_get_attachment_image_src(get_post_thumbnail_id($product->get_id()), 'product');
  $size = $product->get_weight();
?>

<div class="product product--inventory">
  <?php
      if($image):
    ?>
    <div class="product__image">
      <a data-overlay="link" title="<?= $product->get_title() ?>" class="ajax" href="<?= $product->get_permalink() ?>">
        <img src="<?= $image[0] ?>"/>
      </a>
    </div>
    <?php
    endif;
  ?>
  <div class="product__title">
    <a class="ajax" href="<?= $product->get_permalink() ?>">
      <?= $product->get_title() ?>
    </a>
  </div>
</div>