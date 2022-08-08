
<?php
  if($type):
    $args = array(
      'theme_location' => $type,
    );
    if($items_wrap){
      $args['items_wrap'] = $items_wrap;
    }
  ?>
    <div class="navigation navigation--<?= $type ?>">
      <?php
        wp_nav_menu($args);
      ?>
    </div>
  <?php
  endif;
?>