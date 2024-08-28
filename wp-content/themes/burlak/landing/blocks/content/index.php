<?php
  $data = $data['content'];
  $background = $data['background']['sizes']['background'];
  $title = $data['title'];
  $type = $data['type'];
  $dark = $data['dark'];

  my_get_template_part('sections/section', [
    'modificators' => [$dark ? 'dark': 'light'],
    'background' => $background,
    'header' => [
      'modificators' => ['center'],
      'title' => [
        'text' => $title,
        'tag' => 'h2',
        'mini' => true,
        'apperance' => $dark ? ['light', 'light'] : ['dark', 'dark']
      ],
    ],
    'content' => [
      'path' => 'landing/blocks/content/'.$type,
      'props' => [
        'data' => $data[$type],
        'dark' => $dark
      ]
    ]
  ]);
?>