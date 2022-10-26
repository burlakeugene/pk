<?php
get_header();
$fields = get_fields(get_queried_object());
my_get_template_part('blocks/decorator_background', [
  'background' => $fields['decorator_background']['sizes']['background']
]);
my_get_template_part('sections/section', [
  'classes' => ['decorator_background_next'],
  'header' => [
    'breadcrumbs' => true,
    'title' => [
      'text' => get_the_title(),
      'tag' => 'h1'
    ]
  ],
  'content' => [
    'path' => 'product/categories'
  ]
]);
get_footer();
?>