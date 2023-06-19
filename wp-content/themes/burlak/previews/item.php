<?php
  $link_text = $data['preview']['link_text'];
  if(!$link_text) $link_text = 'Перейти';
  $attributes = $data['attributes'] ? implode(' ', $data['attributes']) : '';
?>
<a class="preview <?= $ajax ? 'ajax' : '' ?>" <?= $attributes ?> href="<?= $data['link'] ?>">
  <div
    class="preview__image"
    style="background-image: url(<?= $data['preview']['background']['sizes']['medium'] ?>)">
  </div>
  <?php if($data['preview']['text']): ?>
    <div class="preview__text">
      <?= $data['preview']['text'] ?>
    </div>
  <?php elseif($data['preview']['logo']): ?>
    <div class="preview__logo">
      <img src="<?= $data['preview']['logo']['sizes']['medium'] ?>" alt="<?= $data['name'] ?>">
    </div>
  <?php endif; ?>
  <div class="preview__footer link link--dark">
    <?= $link_text ?>
  </div>
</a>