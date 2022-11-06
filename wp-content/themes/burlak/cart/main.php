<div class="cart">
  <div class="cart__header">
    <h2>Корзина</h2>
    <div>В вашей корзине <?php get_template_part('cart/count') ?></div>
  </div>
  <?php get_template_part('cart/list') ?>
  <div class="cart__footer">
    <?php get_template_part('cart/totals') ?>
    <div class="cart__buttons">
      <a class="button button--black" href="<?= get_permalink(get_page_by_path('checkout')) ?>" class="ajax">Оформить заказ</a>
    </div>
  </div>
</div>