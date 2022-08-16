<?php
my_get_template_part('product/filter-top');
my_get_template_part('product/filter');
my_get_template_part('product/list', array(
  'classes' => ['products--archive']
));