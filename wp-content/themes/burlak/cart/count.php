<?php
  $count = WC()->cart->cart_contents_count;
  if($prefix){
    echo $prefix;
  }
?>

<span class="cart__count <?= 'cart__count--'.$count ?>">
  <?= $count ?> <span><?= declension($count) ?></span>
</span>