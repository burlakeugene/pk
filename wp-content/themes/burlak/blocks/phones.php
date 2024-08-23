<?php
$list = get_option('phone');
$list = explode(',', $list);
?>
<div class="phones">
  <?php
  foreach($list as $index => $item):
    ?>
      <a href="tel:<?= phone_replace($item) ?>">
        <?= $item ?>
      </a>
    <?php
  endforeach;
  ?>
</div>