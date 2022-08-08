<?php
  $socials = get_socials();
?>

<div class="socials">
  <?php
    foreach($socials as $key => $social):
    ?>
      <a class="social <?= 'social--'.$key ?>" target="_blank" href="<?= $social ?>">
        <?php get_template_part('icons/'.$key) ?>
      </a>
    <?php
    endforeach;
  ?>
</div>