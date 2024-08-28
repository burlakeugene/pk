<?php
foreach($data as $index => $block):
  my_get_template_part('landing/blocks/'.$block['type'].'/index', [
    'index' => $index,
    'data' => $block
  ]);
  endforeach;
?>