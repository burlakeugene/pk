<?php
  $classes = 'section '.implode(' ', $classes);
  if($modificators){
    foreach($modificators as $modificator){
      $classes.= ' section--'.$modificator;
    }
  }

  if($background){
    $classes.= ' section--imaged';
  }

  if(!$render || $render === 1):
?>
<section
<?= $id ? 'id="'.$id.'"' : '' ?> class="<?= $classes ?>"
<?php if($background) echo 'style="background-image: url('.$background.')"'; ?>
>
    <?php
      my_get_template_part('sections/header', $header);
    ?>
    <?php if($content): ?>
      <?php if(!$content['wide']): ?>
      <div class="container">
      <?php endif; ?>
        <?php if($content['path']) my_get_template_part($content['path'], $content['props']) ?>
      <?php if(!$content['wide']): ?>
      </div>
      <?php endif; ?>
    <?php endif; ?>
</section>
<?php
  endif;
?>