<?php
  $sites = getSites();
  if($sites):
  ?>
  <div class="sites">
  <?php
    foreach($sites as $site):
    ?>
    <div class="sites__item">
    <?php
      if($site['active']):
        echo $site['text'];
      else:
        ?>
        <a href="<?= $site['link'] ?>">
          <?= $site['text'] ?>
        </a>
        <?php
      endif;
    ?>
    </div>
    <?php
    endforeach;
  ?>
  </div>
  <?php
  endif;
?>