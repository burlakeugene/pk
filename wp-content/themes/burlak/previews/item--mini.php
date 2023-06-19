<?php
  $images = $data['preview']['logo']['sizes'];
?>
<a class="preview preview--mini <?= $data['ajax'] ? 'ajax' : '' ?>" href="<?= $data['link'] ?>">
  <div class="lazy">
    <img data-lazy="<?= $images['medium'] ?>" src="<?= $images['lazy'] ?>" alt="<?= $data['name'] ?>">
  </div>
</a>