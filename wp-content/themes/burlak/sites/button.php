<?php
  $sites = getSites();
  if(count($sites) > 1):
  ?>
  <button class="sites__button" data-modal="sites">
    <div class="sites__button__icon">
      <?php get_template_part('icons/location') ?>
    </div>
    <div class="sites__button__label">
    <?= get_option('name') ?>
    </div>
  </button>

  <?php
  get_template_part('sites/modal');
  endif;
?>