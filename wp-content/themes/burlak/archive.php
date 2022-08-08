<?php
get_header();
$post_type = get_post_type();
$tags = get_current_tags();
?>
  <?php get_template_part('blocks/breadcrumbs') ?>
  <?php my_get_template_part('blocks/top', array(
    'title' => array(
      'text' => post_type_archive_title('', false),
    ),
    'select' => $tags ? array(
      'label' => 'Показать:',
      'items' => $tags
    ) : false
  )) ?>
  <div class="container">
    <?php get_template_part($post_type . '/list'); ?>
  </div>
<?php
get_footer();
?>