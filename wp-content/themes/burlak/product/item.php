<?php
  if($product && get_class($product) == 'WP_Post') $product = new WC_Product($product->ID);
  if(!$product) $product = new WC_Product(get_the_id());
  $image_lazy = wp_get_attachment_image_src(get_post_thumbnail_id($product->get_id()), 'lazy-square');
  $image = wp_get_attachment_image_src(get_post_thumbnail_id($product->get_id()), 'product');
  $size = $product->get_weight();
?>

<div class="product product--regular">
  <div class="product__image <?= !$image[0] ? 'product__image--empty' : '' ?>">
    <div class="product__buttons">
      <?php
        if(isAvailable('favorite')){
          my_get_template_part('favorite/button', array(
            'classes' => ['product__button'],
            'id' => $product->get_id()
          ));
        }
      ?>
      <?php
        if(isAvailable('compare')){
          my_get_template_part('compare/button', array(
            'classes' => ['product__button'],
            'id' => $product->get_id()
          ));
        }
      ?>
    </div>
    <?php if($image[0]): ?>
      <a data-overlay="link" title="<?= $product->get_title() ?>" class="ajax" href="<?= $product->get_permalink() ?>">
        <div class="lazy">
          <img alt="<?= $product->get_title() ?>" src="<?= $image_lazy[0] ?>" data-lazy="<?= $image[0] ?>"/>
        </div>
      </a>
    <?php endif; ?>
  </div>
  <div class="product__body">
    <div class="product__title">
      <a class="ajax" href="<?= $product->get_permalink() ?>">
        <?= $product->get_title() ?>
      </a>
    </div>
    <div class="product__footer">
      <div class="product__prices">
        <div class="product__price product__price--current">
          <?= wc_price($product->price) ?>
        </div>
        <?php if($product->price != $product->regular_price): ?>
          <div class="product__price product__price--old">
            <?= wc_price($product->regular_price) ?>
          </div>
        <?php endif; ?>
      </div>
      <?php my_get_template_part('cart/button', array(
        'title' => $product->get_title(),
        'id' => $product->get_id()
      )) ?>
    </div>
  </div>
</div>