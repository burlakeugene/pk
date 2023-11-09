<?php
  $sites = getSites();
  if(count($sites) > 1):
    $active_index = array_search(1, array_column($sites, 'active'));
    $active = $sites[$active_index];
  ?>
  <button class="sites__button" data-modal="sites">
    <div class="sites__button__icon">
      <?php get_template_part('icons/location') ?>
    </div>
    <div class="sites__button__label">
    <?= $active['text'] ?>
    </div>
  </button>
  <?php
  get_template_part('sites/modal');
  endif;
?>