<?php
  $cookie = $_COOKIE['compare'];
  $cookie = str_replace("\\", "", $cookie);
  $cookie = json_decode($cookie, true);
  $count = count($cookie);
?>

<div class="compare__top">
  В вашем избранном:
  <span class="compare__count">
    <span class="compare__count__value">
      <?= $count ?>
    </span>
    <span class="compare__count__label">
      <?= declension($count) ?>
    </span>
  </span>
  <button class="compare__clear">
    Очистить Все
    <?php get_template_part('icons/clear') ?>
  </button>
</div>