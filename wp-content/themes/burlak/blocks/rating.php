
<?php if($value):
  $percent = 100 / 5 * $value;
  ?>
<div class="rating">
  <div class="rating__layer">
    <?php drawStars(); ?>
  </div>
  <div class="rating__layer__value" style="width: <?= $percent ?>%">
    <div class="rating__layer rating__layer--active">
      <?php drawStars(); ?>
    </div>
  </div>
</div>
<?php endif; ?>