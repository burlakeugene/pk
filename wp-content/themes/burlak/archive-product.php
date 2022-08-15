<?php
$page = get_page_by_path('products');
$id = $page->ID;
$path = 'product/categories';
if($_GET){
  $path = 'product/list';
}

get_header();
  my_get_template_part('blocks/decorator_background', [
    'background' => get_field('decorator_background', $id)['sizes']['large']
  ]);
  my_get_template_part('sections/section', [
    'classes' => ['decorator_background_next'],
    'header' => [
      'breadcrumbs' => true,
      'title' => [
        'text' => get_post_type_object(get_post_type())->labels->name,
      ],
    ],
    'content' => [
      'path' => $path
    ]
  ]);
get_footer();
?>