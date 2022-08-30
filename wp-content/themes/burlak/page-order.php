<?php
  get_header();
  my_get_template_part('sections/section', [
    'content' => [
      'path' => 'checkout/order'
    ]
  ]);
  get_footer();
