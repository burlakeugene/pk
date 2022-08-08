<?php
  $product_data = $product['data'];
  $id = $product['product_id'];
  $name = $product_data->get_title();
  $qty = $product['quantity'];
  $price = WC()->cart->get_product_price($product_data);
  $subtotal = WC()->cart->get_product_subtotal($product_data, $product['quantity']);
  $link = $product_data->get_permalink($product);
  $attributes = $product_data->get_attributes();
  $meta = wc_get_formatted_cart_item_data($product);
  $image = wp_get_attachment_image_src(get_post_thumbnail_id($id), 'product');
?>
<div class="product product--cart">
  <?php if($image): ?>
    <div class="product__image">
      <a data-overlay="link" href="<?= $link ?>" class="ajax" title="<?= $name ?>">
        <img src="<?= $image[0] ?>" alt="<?= $name ?>">
      </a>
    </div>
  <?php endif; ?>
  <div class="product__info">
    <div class="product__info__row">
      <div class="product__title">
        <a href="<?= $link ?>" class="ajax">
          <?= $name ?>
        </a>
      </div>
      <button class="product__remove" data-key="<?= $key ?>">
        <?php get_template_part('icons/close') ?>
      </button>
    </div>
    <div class="product__info__row">
      <div class="product__qty" data-key="<?= $key ?>">
        <span class="product__qty__label">Количество:</span>
        <?php my_get_template_part('blocks/field', array(
          'value' => $qty,
          'min' => 1,
          'step' => 1,
          'postfix' => ' шт'
        )) ?>
      </div>
      <div class="product__price">
        <?= $price ?>
      </div>
    </div>
  </div>
</div>