<?php
if($data):
  $title = $data['title'];
  $link = $data['link'];
  $align = $data['align'] ? $data['align'] : '';
  $tag = $data['tag'] ? $data['tag'] : 'h2';
  if(!$data['wide']):
  ?>
  <div class="container">
  <?php endif; ?>
    <div class="section__header section__header--<?= $align ?>">
      <?php
        my_get_template_part('blocks/title', [
          'title' => $title['text'],
          'tag' => $title['tag'],
          'mini' => $title['mini'],
          'apperance' => $title['apperance'],
        ]);
        ?>
        <?php if($breadcrumbs):?>
          <?php get_template_part('blocks/breadcrumbs'); ?>
        <?php endif; ?>
        <?php if($link):
          $linkClasses = 'link';
          if($link['ajax']) $linkClasses .= ' ajax';
          if($link['modificators']){
            foreach($link['modificators'] as $modificator){
              $linkClasses .= ' link--'.$modificator;
            }
          }
          ?>
          <a class="<?= $linkClasses ?>"
            <?php if($link['blank']):?>
              target="_blank"
            <?php endif; ?>
            href="<?= $link['href'] ?>">
            <?= $link['text'] ?>
          </a>
        <?php endif; ?>
        <?php if($bottom || $select || $links): ?>
          <div class="section__header__bottom">
            <?php
              if($bottom):
                foreach($bottom as $block){
                  my_get_template_part($block['path'], $block['args']);
                }
              endif;
            ?>
            <?php if ($select):
              ?>
              <div class="section__header__select">
                <?= $select['label'] ?>
                <?php my_get_template_part('blocks/select', array(
                  'items' => $select['items']
                )) ?>
              </div>
            <?php endif; ?>
            <?php if($links): ?>
              <div class="section__header__links">
                <?php if($links['label']): ?>
                  <div><?= $links['label'] ?></div>
                <?php endif; ?>
                <?php
                  foreach($links['items'] as $link):
                  ?>
                    <a class="ajax <?= $link['active'] ? 'active' : '' ?>" href="<?= $link['link'] ?>">
                      <?= $link['text'] ?>
                    </a>
                  <?php
                  endforeach;
                ?>
              </div>
            <?php endif; ?>
          </div>
        <?php endif; ?>
    </div>
  <?php
  if(!$data['wide']):
  ?>
  </div>
  <?php
  endif;
  endif;
?>