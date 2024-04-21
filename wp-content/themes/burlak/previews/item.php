<?php
  $attributes = $data['attributes'] ? implode(' ', $data['attributes']) : '';
  $image = $data['preview']['logo']['sizes'];
  $text = $data['name'] ? $data['name'] : $data['preview']['text'];

  if(!$ajax && $data['ajax']){
    $ajax = $data['ajax'];
  }
?>
<a class="preview <?= $ajax ? 'ajax' : '' ?>" <?= $attributes ?> href="<?= $data['link'] ?>">
  <?php
    if($image):
  ?>
    <div class="preview__image lazy">
      <img data-lazy="<?= $image['medium'] ?>" src="<?= $image['lazy'] ?>" alt="<?= $text ?>">
    </div>
  <?php endif; ?>
  <?php if(!$hide_text && $text): ?>
    <div class="preview__text">
      <?= $text ?>
    </div>
  <?php endif; ?>
</a>