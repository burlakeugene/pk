<?php
  $value = $value ? $value : 1;
  $min = $min ? $min : false;
  $max = $max ? $max : false;
  $step = $step ? $step : 1;
  $postfix = $postfix ? $postfix : '';
?>
<div class="field" data-postfix="<?= $postfix ?>" data-step="<?= $step ?>" data-min="<?= $min ?>" data-max="<?= $max ?>" data-value="<?= $value ?>">
  <button data-direction="-1" class="field__button field__button--minus" <?php if($min && $value <= $min)  echo 'disabled'; ?>>
    <?php get_template_part('icons/minus') ?>
  </button>
  <div class="field__input">
    <?= $value ?><?= $postfix ?>
  </div>
  <button data-direction="1" class="field__button field__button--plus" <?php if($max && $value >= $max)  echo 'disabled'; ?>>
    <?php get_template_part('icons/plus') ?>
  </button>
</div>