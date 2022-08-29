<?php
  get_header();
  my_get_template_part('blocks/decorator_background');
  my_get_template_part('sections/section', [
    'classes' => ['decorator_background_next_top'],
    'header' => [
      'breadcrumbs' => true,
      'align' => 'right',
      'title' => [
        'text' => post_type_archive_title('', false),
      ],
    ],
    'content' => [
      'path' => 'product/page'
    ]
  ]);
  if (get_field('related')) {
    my_get_template_part('sections/section', array(
      'header' => array(
        'title' => [
          'text' => 'Также рекомендуем',
          'apperance' => ['theme', 'dark'],
          'mini' => true
        ],
      ),
      'content' => array(
        'path' => 'product/related'
      )
    ));
  }
  get_footer();