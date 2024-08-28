<?php if($data):  ?>
  <div class="content content--no-padding content--no-background <?= $dark ? 'content--white-text' : '' ?>">
    <?php
      echo apply_filters('the_content', $data);
    ?>
  </div>
<?php endif; ?>