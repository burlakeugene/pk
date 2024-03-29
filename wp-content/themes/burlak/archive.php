<?php
get_header();
$post_type = get_queried_object()->name;
my_get_template_part('blocks/decorator_background');
my_get_template_part('sections/section', [
  'classes' => ['decorator_background_next_top'],
  'header' => [
    'breadcrumbs' => true,
    'title' => [
      'text' => post_type_archive_title('', false),
      'tag' => 'h1'
    ],
  ],
  'content' => [
    'path' => $post_type . '/list'
  ]
]);
get_footer();
?>