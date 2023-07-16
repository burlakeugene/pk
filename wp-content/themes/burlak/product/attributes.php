<?php
  if($list):
    $classes = 'attributes';
    if($mini) $classes .=' attributes--mini';
  ?>
  <div class="<?= $classes ?>">
    <?php if($title): ?>
      <div class="attributes__title">
        <?= $title ?>
      </div>
    <?php endif; ?>
    <div class="attributes__list">
      <?php
        foreach($list as $key => $item):
        ?>
        <div class="attribute">
          <div class="attribute__label">
            <?= $item['label'] ?>:
          </div>
          <div class="attribute__value <?= $item['select'] ? 'allow-select' : '' ?>">
            <?= $item['value']  ?>
          </div>
        </div>
        <?php
        endforeach;
      ?>
    </div>
  </div>
  <?php
  endif;
?>