
<?php if($value): ?>
<div class="date">
  <?php get_template_part('icons/calendar') ?>
  <span>
    <?php
      $date = date_parse($value);
      echo $date['day'].' '.getMonth($date['month']).' '.$date['year'];
    ?>
  </span>
</div>
<?php endif; ?>