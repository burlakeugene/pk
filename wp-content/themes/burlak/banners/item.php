<?php
  $id = $data->ID;
  $fields = get_fields($id);
  $title = get_the_title($id);
?>

<div class="banner" style="background-image: url(<?= $fields['background']['sizes']['large'] ?>)">
  <div data-swiper-parallax="-100">
    <?php
      my_get_template_part('blocks/title', [
        'title' => $title,
        'apperance' => ['theme', 'light']
      ]);
    ?>
  </div>
  <?php if($fields['text']): ?>
    <div class="banner__text" data-swiper-parallax="-200">
      <?= $fields['text'] ?>
    </div>
  <?php endif; ?>
  <?php if($fields['link']): ?>
    <div class="banner__link" data-swiper-parallax="-300">
      <a <?= $fields['external'] ? '_blank' : '' ?>
        class="button button--dark <?= $fields['external'] ? '' : 'ajax' ?>"
        href="<?= $fields['link'] ?>"
      >
        Подробнее
      </a>
    </div>
  <?php endif; ?>
</div>