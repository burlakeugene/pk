<?php
  get_header();
  my_get_template_part('banners/index');
  my_get_template_part('sections/section', [
    'classes' => ['decorator_background_next'],
    'header' => [
      'title' => [
        'text' => get_post_type_object('product')->labels->name,
        'mini' => true,
        'apperance' => ['light', 'theme'],
      ],
      'link' => [
        'text' => 'Все категории',
        'ajax' => true,
        'href' => get_permalink(wc_get_page_id('shop')),
      ]
    ],
    'content' => [
      'path' => 'product/categories',
      'props' => [
        'index' => true
      ]
    ]
  ]);
  my_get_template_part('brands/index');
  get_footer();
?>