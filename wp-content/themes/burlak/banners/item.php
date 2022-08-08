<?php
  $id = $data->ID;
  $fields = get_fields($id);
  $title = get_the_title($id);
  $titleArr = split_half($title);
?>

<div class="banner" style="background-image: url(<?= $fields['background']['sizes']['large'] ?>)">
  <?php if($title): ?>
    <h2 class="title">
      <?php foreach($titleArr as $titlePart): ?>
        <span><?= $titlePart ?></span>
      <?php endforeach; ?>
    </h2>
  <?php endif; ?>
  <?php if($fields['text']): ?>
    <div class="banner__text">
      <?= $fields['text'] ?>
    </div>
  <?php endif; ?>
  <?php if($fields['link']): ?>
    <div class="banner__link">
      <a <?= $fields['external'] ? '_blank' : '' ?>
        class="button button--dark <?= $fields['external'] ? '' : 'ajax' ?>"
        href="<?= $fields['link'] ?>"
      >
        Подробнее
      </a>
    </div>
  <?php endif; ?>
</div>