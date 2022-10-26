<?php
  get_header();
  global $post;
  $slug = $post->post_name;
  $path = 'page/content';

  if(locate_template($slug.'/page.php')){
    $path = $slug.'/page';
  }
  my_get_template_part('blocks/decorator_background', [
    'background' => get_field('decorator_background')['sizes']['background']
  ]);
  my_get_template_part('sections/section', [
    'classes' => ['decorator_background_next'],
    'header' => [
      'breadcrumbs' => true,
      'title' => [
        'text' => get_the_title(),
        'tag' => 'h1'
      ],
    ],
    'content' => [
      'path' => $path
    ]
  ]);
  get_footer();
