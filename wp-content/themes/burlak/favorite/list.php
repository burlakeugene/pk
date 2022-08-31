<?php
  $cookie = $_COOKIE['favorite'];
  $cookie = str_replace("\\", "", $cookie);
  $cookie = json_decode($cookie, true);
  $items = array();
  if($cookie){
    $items = get_posts(array(
      'numberposts' => -1,
      'post_type' => 'product',
      'post__in' => array_keys($cookie)
    ));
  }
  my_get_template_part('product/list', array(
    'items' => $items,
    'classes' => ['favorite__list', 'products--favorite'],
    'empty' => 'В избранном пусто'
  ));