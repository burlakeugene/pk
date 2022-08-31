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
  if ($banners):
    ?>
    <div class="decorator_background">
    <?php
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
          'parallax' => true,
          // 'loop' => true,
          'slidesPerView' => 'auto',
          'spaceBetween' => 20,
          'pagination' => [
            'dynamicBullets' => true
          ],
          'autoplay' => [
            'delay' => 5000
          ],
          'breakpoints' => [
            992 => [
              'spaceBetween' => 60,
            ]
          ]
        ]
      ]);
    ?>
    </div>
    <?php
  endif;
  ?>