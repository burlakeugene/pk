<?php
$items = getManufacturers();
if($items):
  ?>
  <div class="manufacturers__list">
    <?php
      foreach ($items as $item):
        my_get_template_part('previews/item', [
          'data' => $item,
          'type' => 'mini'
        ]);
      endforeach;
    ?>
  </div>
  <?php
endif;
?>