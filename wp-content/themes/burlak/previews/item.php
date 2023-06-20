<?php
  $link_text = $data['preview']['link_text'];
  if(!$link_text) $link_text = 'Перейти';
  $attributes = $data['attributes'] ? implode(' ', $data['attributes']) : '';
  $logo = $data['preview']['logo']['sizes'];
  if(!$ajax && $data['ajax']){
    $ajax = $data['ajax'];
  }
  if(!$type && $data['type']){
    $type = $data['type'];
  }
  $mini = $type === 'mini';
?>
<a class="preview <?= $type ? 'preview--'.$type : '' ?> <?= $ajax ? 'ajax' : '' ?>" <?= $attributes ?> href="<?= $data['link'] ?>">
  <?php if($mini): ?>
    <div class="lazy">
      <img data-lazy="<?= $logo['medium'] ?>" src="<?= $logo['lazy'] ?>" alt="<?= $data['name'] ?>">
    </div>
  <?php else: ?>
    <div
      class="preview__image"
      style="background-image: url(<?= $data['preview']['background']['sizes']['medium'] ?>)">
    </div>
    <?php if($data['preview']['text']): ?>
      <div class="preview__text">
        <?= $data['preview']['text'] ?>
      </div>
    <?php elseif($logo): ?>
      <div class="preview__logo">
        <img src="<?= $logo['medium'] ?>" alt="<?= $data['name'] ?>">
      </div>
    <?php endif; ?>
    <div class="preview__footer link link--dark">
      <?= $link_text ?>
    </div>
  <?php endif; ?>
</a>