<?php
global $wp_query;
$query = get_queried_object();
$link = is_tax() ? get_term_link($query->term_id) : get_permalink(wc_get_page_id('shop'));
// orderby=menu_order&paged=1
// orderby=popularity&paged=1
// orderby=rating&paged=1
// orderby=date&paged=1
// orderby=date-asc&paged=1
// orderby=price&paged=1
// orderby=price-desc&paged=1
$post_per_page = $wp_query->query_vars['posts_per_page'];
?>

<div class="filter filter--top">
  <div class="filter__inner">
    <?php
      my_get_template_part('blocks/select', [
        'label' => 'Сортировка:',
        'items' => [
          [
            'link' => $link.mergeQueryString([
              'orderby' => false
            ]),
            'text' => 'По умолчанию',
            'active' => !$_GET['orderby']
          ],
          [
            'link' => $link.mergeQueryString([
              'orderby' => 'title'
            ]),
            'text' => 'Название (А - Я)',
            'active' => $_GET['orderby'] == 'title'
          ],
          [
            'link' => $link.mergeQueryString([
              'orderby' => 'title-desc'
            ]),
            'text' => 'Название (Я - А)',
            'active' => $_GET['orderby'] == 'title-desc'
          ],
          [
            'link' => $link.mergeQueryString([
              'orderby' => 'price'
            ]),
            'text' => 'Цена (от найменьшей)',
            'active' => $_GET['orderby'] == 'price'
          ],
          [
            'link' => $link.mergeQueryString([
              'orderby' => 'price-desc'
            ]),
            'text' => 'Цена (от наибольшей)',
            'active' => $_GET['orderby'] == 'price-desc'
          ]
        ]
      ]);

      my_get_template_part('blocks/links', [
        'label' => 'Товаров на странице:',
        'items' => [
          [
            'link' => $link.mergeQueryString([
              'posts_per_page' => '12'
            ]),
            'text' => '12',
            'active' => $post_per_page == '12'
          ],
          [
            'link' => $link.mergeQueryString([
              'posts_per_page' => '24'
            ]),
            'text' => '24',
            'active' => $post_per_page == '24'
          ],
          [
            'link' => $link.mergeQueryString([
              'posts_per_page' => '48'
            ]),
            'text' => '48',
            'active' => $post_per_page == '48'
          ]
        ]
      ]);
    ?>
  </div>
</div>