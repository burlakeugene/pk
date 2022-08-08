<?php
  $cart = WC()->cart->get_cart();
  my_get_template_part('product/list', array(
    'classes' => ['products--cart', 'cart__list', !count($cart) ? 'cart__list--empty' : ''],
    'isCart' => true,
    'product_template' => 'product/item--cart',
    'items' => $cart,
    'empty' => 'Корзина пуста'
  ));
?>