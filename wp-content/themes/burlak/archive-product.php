<?php
get_header();
  my_get_template_part('sections/header', array(
    'title' => array(
      'text' => get_post_type_object(get_post_type())->labels->name,
    ),
    'breadcrumbs' => true
  ));
?>
<div class="container">
  <?php get_template_part('product/categories'); ?>
</div>
<?php
get_footer();
?>