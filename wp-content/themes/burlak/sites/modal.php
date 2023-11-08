<?php
  global $sites_modal_rendered;

  if(!$sites_modal_rendered){
    my_get_template_part('blocks/modal', array(
      'title' => 'Выбрать город',
      'content' => array(
        'path' => 'sites/list',
      ),
      'id' => 'sites'
    ));
    $sites_modal_rendered = true;
  }
?>