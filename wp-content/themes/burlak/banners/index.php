<?php
  $post_info = get_post_type_object('banners');
  $args = array(
    'numberposts' => -1,
    'post_type' => $post_info->name,
    // 'meta_query'	=> array(
    //       'relation'		=> 'AND',
    //       array(
    //           'key'	 	=> 'slider',
    //           'value'	  	=> '1',
    //           'compare' 	=> '=',
    //       ),
    //   ),
  );
  $banners = get_posts($args);
  if ($banners){
    my_get_template_part('slider/slider', [
      'classes' => 'banners',
      'fullHeightSlide' => true,
      'buttons' => true,
      'pagination' => true,
      'progressBar' => true,
      'list' => $banners,
      'item' => [
        'path' => 'banners/item'
      ],
      'config' => [
        'slidesPerView' => 'auto',
        'spaceBetween' => 60,
        'pagination' => [
          'dynamicBullets' => true
        ],
        'autoplay' => [
          'delay' => 5000
        ]
      ]
    ]);
  }
?>