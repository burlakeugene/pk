<?php
  $classes = 'section '.implode(' ', $classes);
  if($modificators){
    foreach($modificators as $modificator){
      $classes.= ' section--'.$modificator;
    }
  }
  if(!$render || $render === 1):
?>
<section <?= $id ? 'id="'.$id.'"' : '' ?> class="<?= $classes ?>">
  <div class="container">
    <?php if($header):
      $title = $header['title'];
      $link = $header['link'];
      $align = $header['align'] ? $header['align'] : 'center';
      $tag = $header['tag'] ? $header['tag'] : 'h2';
      ?>
      <div class="section__header section__header--<?= $align ?> <?= $header['uppercase'] ? 'section__header--uppercase' : ''?> <?= $header['line'] ? 'section__header--line' : ''?> <?= $header['mini'] ? 'section__header--mini' : '' ?>">
        <?php if($title): ?>
          <<?= $tag ?>><?= $title ?></<?= $tag ?>>
        <?php endif; ?>
        <?php if($link):
          $buttonsClasses = 'button';
          if($link['ajax']) $buttonsClasses .= ' ajax';
          if($link['modificators']){
            foreach($link['modificators'] as $modificator){
              $buttonsClasses .= ' button--'.$modificator;
            }
          }
          ?>
          <a class="<?= $buttonsClasses ?>" href="<?= $link['href'] ?>">
            <?= $link['text'] ?>
          </a>
        <?php endif; ?>
      </div>
    <?php endif; ?>
  </div>
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