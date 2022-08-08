<?php
  if($src):
  ?>
    <div class="video" style="background-image: url('<?= $preview ?>')">
      <video src="<?= $src ?>" controls></video>
      <button class="video__control">
        <?php get_template_part('icons/play') ?>
      </button>
      <?php if($text): ?>
      <div class="video__text">
        <?= $text ?>
      </div>
      <?php endif; ?>
    </div>
  <?php
  endif;
?>
