<?php
$items = getManufacturers();
if($items):
  my_get_template_part('previews/list', [
    'items' => $items,
    'hide_text' => true
  ]);
endif;
?>