<?php
  $images = $data['fields']['logo']['sizes'];
?>
<a class="manufacturer ajax" href="<?= $data['link'] ?>">
  <div class="lazy">
    <img data-lazy="<?= $images['medium'] ?>" src="<?= $images['lazy'] ?>" alt="<?= $data['name'] ?>">
  </div>
</a>