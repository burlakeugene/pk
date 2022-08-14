<?php
$items = getManufacturers();
if($items):
  ?>
  <div class="manufacturers__list">
    <?php
      foreach ($items as $item):
        my_get_template_part('manufacturers/item', $item);
      endforeach;
    ?>
  </div>
  <?php
endif;
?>