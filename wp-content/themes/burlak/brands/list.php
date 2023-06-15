<?php
if($data):
  ?>
  <div class="brands__list">
    <?php
      foreach ($data as $item):
        my_get_template_part('brands/item', $item);
      endforeach;
    ?>
  </div>
  <?php
endif;
?>