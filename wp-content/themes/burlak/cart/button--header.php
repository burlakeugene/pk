<button class="header__button cart__button">
  <div class="header__button__icon">
    <?php get_template_part('icons/cart') ?>
    <?php my_get_template_part('cart/count') ?>
  </div>
  <div class="header__button__label">
    Корзина
  </div>
</button>

<?php get_template_part('cart/popup') ?>