<?php
  if(function_exists('bcn_display_list')):
    if(!$noContainer):
  ?>
  <div class="container">
  <?php endif; ?>
    <div class="breadcrumbs">
      <?php bcn_display_list(); ?>
    </div>
  <?php if(!$noContainer): ?>
  </div>
  <?php
    endif;
  endif;
?>