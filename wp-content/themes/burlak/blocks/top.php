<?php
  $title_tag = $title['tag'] ? $title['tag'] : 'h1';
  $title_text = $title['text'] ? $title['text'] : '';
?>
<?php if(!$noContainer): ?>
<div class="container">
<?php endif; ?>
  <div class="top">
    <div class="top__top">
      <div class="title">
        <<?= $title_tag ?>>
          <?= $title_text ?>
        </<?= $title_tag ?>>
      </div>
    </div>
    <?php if($bottom || $select || $links): ?>
      <div class="top__bottom">
        <?php
          if($bottom):
            foreach($bottom as $block){
              my_get_template_part($block['path'], $block['args']);
            }
          endif;
        ?>
        <?php if ($select):
          ?>
          <div class="top__select">
            <?= $select['label'] ?>
            <?php my_get_template_part('blocks/select', array(
              'items' => $select['items']
            )) ?>
          </div>
        <?php endif; ?>
        <?php if($links): ?>
          <div class="top__links">
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
<?php if(!$noContainer): ?>
</div>
<?php endif; ?>