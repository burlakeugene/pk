<?php
  if($list):
    $inner_classes = 'slider';
    if($fullHeightSlide) $inner_classes .= ' slider--full-height-slide';
    if($classes) $inner_classes .= ' '.$classes;
  ?>
    <div class="<?= $inner_classes ?>" data-config='<?php
      echo json_encode($config);
    ?>'>
      <div class="slider__inner">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <?php foreach($list as $index => $list_item): ?>
              <div class="swiper-slide">
                <?php my_get_template_part($item['path'], [
                  'data' => $list_item,
                  'index' => $index
                ]) ?>
              </div>

              <div class="swiper-slide">
                <?php my_get_template_part($item['path'], [
                  'data' => $list_item,
                  'index' => $index
                ]) ?>
              </div>
              <div class="swiper-slide">
                <?php my_get_template_part($item['path'], [
                  'data' => $list_item,
                  'index' => $index
                ]) ?>
              </div>
              <div class="swiper-slide">
                <?php my_get_template_part($item['path'], [
                  'data' => $list_item,
                  'index' => $index
                ]) ?>
              </div>
              <div class="swiper-slide">
                <?php my_get_template_part($item['path'], [
                  'data' => $list_item,
                  'index' => $index
                ]) ?>
              </div>
            <?php endforeach; ?>
          </div>
          <?php if($buttons) get_template_part('slider/buttons') ?>
        </div>
        <?php if($pagination) get_template_part('slider/pagination') ?>
        <?php if($progressBar) my_get_template_part('slider/progressBar', [
          'start' => '01',
          'end' => count($list) < 10 ? '0'.count($list) : count($list)
        ]) ?>
      </div>
    </div>
  <?php
  endif;
?>