<?php
  $id = 71;
  $fields = get_fields($id);
  $background = $fields['background']['sizes']['large'];
  $image = $fields['image']['url'];
  $title = $fields['title'];
  $list = $fields['list'];
?>

<div class="promo promo--index">
  <?php if(background): ?>
  <div class="promo__background" style="background-image: url(<?= $background ?>)"></div>
  <?php endif; ?>
  <div class="promo__content">
    <div class="promo__header">
      <?php if($image): ?>
        <img src="<?= $image ?>" alt="<?= $title ?>" />
        <div class="promo__header__deliver"></div>
      <?php endif; ?>
      <?php if($title): ?>
      <div class="promo__title">
        <?php
          my_get_template_part('blocks/title', [
            'text' => $title,
            'mini' => true
          ])
        ?>
      </div>
      <?php endif; ?>
    </div>
    <?php if($list): ?>
      <div class="promo__list">
        <?php foreach($list as $item): ?>
          <div class="promo__list__item">
            <div class="promo__list__item__info">
              <?php if($item['title']): ?>
                <div class="promo__list__item__title">
                  <?= $item['title'] ?>
                </div>
              <?php endif; ?>
              <?php if($item['text']): ?>
                <div class="promo__list__item__text">
                  <?= $item['text'] ?>
                </div>
              <?php endif; ?>
            </div>
            <?php if($item['icon']):
              ?>
              <div class="promo__list__item__icon">
                <img src="<?= $item['icon']['url'] ?>" alt="<?= $item['title'] ?>">
              </div>
            <?php endif; ?>
          </div>
        <?php endforeach; ?>
      </div>
    <?php endif; ?>
  </div>
</div>