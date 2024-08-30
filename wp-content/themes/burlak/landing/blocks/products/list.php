<?php
if($data){
  my_get_template_part('slider/slider', [
    'buttons' => true,
    'fullHeightSlide' => true,
    'list' => $data,
    'item' => [
      'path' => 'landing/blocks/products/item',
    ],
    'config' => [
      'slidesPerView' => 1,
      'spaceBetween' => 20,
      'breakpoints' => [
        991 => [
          'slidesPerView' => 4,
        ],
        768 => [
          'slidesPerView' => 3,
        ],
        500 => [
          'slidesPerView' => 2,
        ]
      ]
    ]
  ]);
}
?>