<?php
$items = getBrands();
if($items):
  ?>
  <div class="brands__list">
    <?php
      foreach ($items as $item):
        my_get_template_part('brands/item', $item);
      endforeach;
    ?>
  </div>
  <?php
endif;
?>