<?php
  get_header();
  get_template_part('blocks/breadcrumbs');
  my_get_template_part('blocks/top', array(
    'title' => array(
      'text' => get_the_title(),
    ),
  ));
  get_template_part('page/content');
  get_footer();
