<?php
$related = get_field('related');
my_get_template_part('product/list', array(
	'classes' => ['products--related'],
	'items' => $related
));