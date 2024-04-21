<?php
$items = getBrands();
my_get_template_part('previews/list', [
  'items' => $items,
]);
?>