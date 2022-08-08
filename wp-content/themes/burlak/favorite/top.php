<?php
  $cookie = $_COOKIE['favorite'];
  $cookie = str_replace("\\", "", $cookie);
  $cookie = json_decode($cookie, true);
  $count = count($cookie);
?>

<div class="favorite__top">
  В вашем избранном:
  <span class="favorite__count">
    <span class="favorite__count__value">
      <?= $count ?>
    </span>
    <span class="favorite__count__label">
      <?= declension($count) ?>
    </span>
  </span>
  <button class="favorite__clear">
    Очистить Все
    <?php get_template_part('icons/clear') ?>
  </button>
</div>