<?php
$target_page = get_page_by_path('products');
$path = 'product/list-wrapper';

get_header();
  my_get_template_part('blocks/decorator_background', [
    'background' => get_field('decorator_background', $target_page->ID)['sizes']['background']
  ]);
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
      'path' => $path
    ]
  ]);
get_footer();
?>