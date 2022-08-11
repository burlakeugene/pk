<?php
if($text):
  $slices = split_half($text);
  $tag = $tag ? $tag : 'h2';
  $apperance = $apperance ? $apperance : ['light', 'theme'];
  ?>
  <<?=$tag?> class="title <?= $mini ? 'title--mini' : '' ?>">
    <?php foreach($slices as $index => $slice): ?>
      <span class="title__<?= $apperance[$index] ?>"><?= $slice ?></span>
    <?php endforeach; ?>
  </<?=$tag?>>
  <?php
endif;
?>