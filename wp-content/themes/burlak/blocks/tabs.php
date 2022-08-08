<?php
  $active = $active ? $active : 0;
  if($items): ?>
    <div class="tabs">
      <div class="tabs__buttons">
        <?php foreach($items as $index => $tab): ?>
          <a data-tab-id="<?= $index ?>" class="tabs__button" <?= $index == $active ? 'data-active' : '' ?>>
            <?= $tab['label'] ?>
          </a>
        <?php endforeach; ?>
      </div>
      <div class="tabs__contents">
        <?php foreach($items as $index => $tab):?>
          <div data-tab-id="<?= $index ?>" class="tabs__content" <?= $index == $active ? 'data-active' : '' ?>>
            <?= $tab['content'] ?>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
<?php
  endif;
?>