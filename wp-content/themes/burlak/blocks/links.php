<?php
if($items):
?>
<div class="links">
  <?php if($label): ?>
    <div class="links__label">
      <?= $label ?>
    </div>
  <?php endif; ?>
  <div class="links__list">
    <?php foreach($items as $key => $item):
      $attributes = $item['attributes'] ? implode(' ', $item['attributes']) : '';
      $ajax = $item['ajax'];
      ?>
      <a class="<?= $ajax ? 'ajax' : '' ?> <?= $item['active'] ? 'active' : '' ?>" href="<?= $item['link'] ?>" <?= $attributes ?>>
        <?= $item['text'] ?>
      </a><?= $items[$key + 1] ? ', ' : ''; ?>
    <?php endforeach; ?>
  </div>
</div>
<?php endif; ?>