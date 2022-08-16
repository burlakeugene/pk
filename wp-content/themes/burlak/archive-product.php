<?php
$page = get_page_by_path('products');
$id = $page->ID;
$path = 'product/categories';
if($_GET){
  $path = 'product/list-wrapper';
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
        'text' => post_type_archive_title('', false),
      ],
    ],
    'content' => [
      'path' => $path
    ]
  ]);
get_footer();
?>