<?php
  $data = $data['products'];
  $title = $data['title'];
  $list = $data['list'];

  my_get_template_part('sections/section', [
    'header' => $title ? [
      'modificators' => ['center'],
      'title' => [
        'text' => $title,
        'tag' => 'h2',
        'mini' => true,
        'apperance' => ['dark', 'theme']
      ],
    ] : null,
    'content' => [
      'path' => 'landing/blocks/products/list',
      'props' => $list
    ]
  ]);
?>