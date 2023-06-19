<?php
  $classes = 'previews '.implode(' ', $classes);
  if($modificators){
    foreach($modificators as $modificator){
      $classes.= ' previews--'.$modificator;
    }
  }
?>

<div class="<?= $classes ?>" <?= $attributes ?>>
  <?php
    if($text):
    ?>
    <div class="previews__text">
      <?= $text ?>
    </div>
    <?php
    endif;
  ?>
  <?php
  if($items):
    ?>
    <div class="previews__list">
      <?php
        foreach ($items as $item):
          my_get_template_part('previews/item', $item);
        endforeach;
      ?>
    </div>
    <?php
  endif;
  ?>
</div>