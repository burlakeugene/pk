<?php
  get_template_part('blocks/breadcrumbs');
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
  my_get_template_part('blocks/top', array(
    'title' => array(
      'text' => get_the_title(),
    ),
    'bottom' => array(
      array(
        'path' => 'favorite/top'
      ),
    )
  ));
?>
<div class="container">
  <?php
    my_get_template_part('product/list', array(
      'items' => $items,
      'classes' => ['favorite__list', 'products--archive', 'products--favorite'],
      'empty' => 'В избранном пусто'
    ));
  ?>
</div>
