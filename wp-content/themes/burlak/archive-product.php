<?php
get_header();
get_template_part('blocks/breadcrumbs');
my_get_template_part('blocks/top', array(
    'title' => array(
      'text' => get_post_type_object(get_post_type())->labels->name,
    ),
  ));
?>
<div class="container">
  <?php get_template_part('product/categories'); ?>
</div>
<?php
get_footer();
?>