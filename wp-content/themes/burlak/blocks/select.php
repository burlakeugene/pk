<?php
$items_active_index = array_search('1', array_column($items, 'active'));
if ($items_active_index || strval($items_active_index) == '0') {
  $items_active =  $items[$items_active_index];
}
if($items):
?>
<div class="select">
  <div class="select__current">
    <?php if($label): ?>
      <div class="select__current__label">
        <?= $label ?>
      </div>
    <?php endif; ?>
    <div class="select__current__value">
      <?= $items_active ? $items_active['text'] : '' ?>
    </div>
    <?php get_template_part('icons/arrow-bottom') ?>
  </div>
  <div class="select__list">
    <?php foreach ($items as $key => $item):
      if ($key === $items_active_index) {
          continue;
      }
      $attributes = $item['attributes'] ? implode(' ', $item['attributes']) : '';
      $ajax = $item['ajax'];
      ?>
      <a class="select__list__item <?= $ajax ? 'ajax' : '' ?>" href="<?= $item['link'] ?>" <?= $attributes ?>>
        <?= $item['text'] ?>
      </a>
    <?php endforeach; ?>
  </div>
</div>
<?php endif; ?>