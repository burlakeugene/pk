<?php
get_header();
$fields = get_fields(get_queried_object());
my_get_template_part('blocks/decorator_background', [
  'background' => $fields['decorator_background']['sizes']['large']
]);
my_get_template_part('sections/section', [
  'classes' => ['decorator_background_next'],
  'header' => [
    'breadcrumbs' => true,
    'title' => [
      'text' => get_queried_object()->name
    ]
  ],
  'content' => [
    'path' => 'product/list-wrapper'
  ]
]);
get_footer();
?>