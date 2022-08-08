<?php
global $woocommerce;
?>
<div class="cart__totals">
  Итого:<span><?= $woocommerce->cart->get_cart_total() ?></span>
</div>