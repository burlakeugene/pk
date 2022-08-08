<?php
  get_header();
  get_template_part('blocks/breadcrumbs');
  get_template_part('product/page');
  my_get_template_part('sections/section', array(
    'delivers' => true,
    'id' => 'attributes',
    'header' => array(
      'title' => 'Параметры товара',
      'mini' => true
    ),
    'content' => array(
      'path' => 'product/attributes'
    )
  ));
  if (get_field('related')) {
    my_get_template_part('sections/section', array(
      'header' => array(
        'title' => 'Похожие товары',
        'mini' => true
      ),
      'content' => array(
        'path' => 'product/related'
      )
    ));
  }
  get_footer();
