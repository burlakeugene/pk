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
        'href' => get_permalink(get_page_by_path('categories')->ID),
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
  my_get_template_part('sections/section', [
    'content' => [
      'path' => 'promo/index'
    ]
  ]);
  my_get_template_part('manufacturers/index');
  my_get_template_part('sections/section', [
    'header' => [
      'title' => [
        'text' => get_post_type_object('articles')->labels->name,
        'apperance' => ['dark', 'theme'],
        'mini' => true,
      ],
      'modificators' => ['center']
    ],
    'content' => [
      'path' => 'articles/index'
    ],
  ]);
  get_template_part('contacts/block');
  get_footer();
?>