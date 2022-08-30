
<?php
  my_get_template_part('blocks/decorator_background');
  my_get_template_part('sections/section', [
    'classes' => ['decorator_background_next_top'],
    'header' => [
      'breadcrumbs' => true,
      'title' => [
        'text' => get_the_title(),
        'tag' => 'h1'
      ],
    ],
    'content' => [
      'path' => 'checkout/content'
    ]
  ])
?>