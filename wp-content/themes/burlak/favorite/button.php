<?php
  if($classes){
    $classes = implode(' ', $classes);
  }
  $cookie = $_COOKIE['favorite'];
  $cookie = str_replace("\\", "", $cookie);
  $cookie = json_decode($cookie, true);
?>
<button data-id="<?= $id ?>" class="favorite__add <?= $cookie[$id] ? 'favorite__add--active' : '' ?> <?= $classes ?>">
  <?php get_template_part('icons/favorite') ?>
</button>