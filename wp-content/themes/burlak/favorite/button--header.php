<?php
  $cookie = $_COOKIE['favorite'];
  $cookie = str_replace("\\", "", $cookie);
  $cookie = json_decode($cookie, true);
  $count = count($cookie);
?>
<a class="header__button favorite__button ajax" href="<?= esc_url(home_url('/')) ?>favorite">
  <div class="header__button__icon">
    <?php get_template_part('icons/heart') ?>
    <div class="favorite__header__counter favorite__count" data-count="<?= $count ?>">
      <div class="favorite__count__value">
        <?= $count ?>
      </div>
    </div>
  </div>
  <div class="header__button__label">
    Избранное
  </div>
</a>