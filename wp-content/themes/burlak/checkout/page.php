
<div class="container container--mini">
  <div class="page page--checkout">
    <?php my_get_template_part('blocks/breadcrumbs', array(
      'noContainer' => true
    )); ?>
    <?php
      my_get_template_part('blocks/top', array(
        'noContainer' => true,
        'borderBottom' => true,
        'title' => array(
          'text' => get_the_title(),
        ),
      ));
    ?>
    <?php get_template_part('checkout/content') ?>
  </div>
</div>