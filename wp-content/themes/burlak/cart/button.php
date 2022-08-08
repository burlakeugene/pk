<?php
  if($classes){
    $classes = implode(' ', $classes);
  }
?>
<button class="cart__add <?= $classes ?>" data-product_id="<?= $id ?>" data-product_title="<?= $title ?>">
  <div class="cart__add__default">
    <?php get_template_part('icons/cart') ?>
    В корзину
  </div>
  <div class="cart__add__active">
    <?php get_template_part('icons/success') ?>
    В корзине
  </div>
  <div class="cart__add__loading">
    <?php get_template_part('icons/loading') ?>
  </div>
</button>