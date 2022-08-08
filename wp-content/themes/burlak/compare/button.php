<?php
  if($classes){
    $classes = implode(' ', $classes);
  }
  $cookie = $_COOKIE['compare'];
  $cookie = str_replace("\\", "", $cookie);
  $cookie = json_decode($cookie, true);
?>
<button data-id="<?= $id ?>" class="compare__add <?= $cookie[$id] ? 'compare__add--active' : '' ?> <?= $classes ?>">
  <?php get_template_part('icons/compare') ?>
</button>