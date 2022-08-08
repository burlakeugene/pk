<?php
  $count = WC()->cart->cart_contents_count;
?>

<span class="cart__count <?= 'cart__count--'.$count ?>">
  <?= $count ?> <span><?= declension($count) ?></span>
</span>