<?php
  $data = $data['title'];
  $banner = $data['banner']['sizes']['background'];
  $title = $data['text'];

  my_get_template_part('blocks/decorator_background', [
    'background' => $banner
  ]);

  my_get_template_part('sections/section', [
    'classes' => ['decorator_background_next'],
    'header' => [
      'title' => [
        'text' => $title,
        'tag' => 'h1'
      ],
    ]
  ]);
?>