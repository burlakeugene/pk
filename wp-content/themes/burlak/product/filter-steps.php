<?php
  $list = $data['list'];
  $current = $data['current'];
?>
<div class="filter__steps tabs">
  <div class="tabs__buttons">
  <?php
    $list_keys = array_column($list, 'key');
    $last_current = array_key_last($current);
    $max_index = count($list) - 1;
    $active_index = $last_current ? array_search($last_current, $list_keys) + 1 : 0;
    $active_index = $active_index > $max_index ? $max_index : $active_index;
    $active = $list[$active_index];

    foreach($list as $index => $item):
      $disabled = $index > $active_index;
      $active = $active_index == $index;
    ?>
      <button class="
        tabs__button
        button
        <?= $active ? 'button--no-pointer-events' : '' ?>
        <?= !$active ? 'button--black' : '' ?>
        <?= $disabled ? 'button--gray button--no-pointer-events' : '' ?>
      " data-tab-id="<?= $item['key'] ?>" <?= $active ? 'data-active' : '' ?>
        data-active-class="button--no-pointer-events"
        data-inactive-class="button--black <?= $disabled ? 'button--no-pointer-events' : '' ?>"
      >
        <?= $item['label'] ?>
      </button>
    <?php
    endforeach;
  ?>
  </div>
  <div class="tabs__contents">
    <?php foreach($list as $index => $item):
      $active = $active_index == $index;
      ?>
      <div class="tabs__content" data-tab-id="<?= $item['key'] ?>" <?= $active ? 'data-active' : '' ?>>
        <?php print_r($item); ?>
      </div>
    <?php endforeach; ?>
  </div>
</div>