<?php
  $id = get_the_id();
  $product = new WC_Product($id);
  $sku = $product->get_sku();
  $quantity = 1;
  $image_id = get_post_thumbnail_id($id);
  $gallery = get_field('gallery');
  if($gallery){
    foreach($gallery as $key => $item){
      $type = $item['item']['type'];
      $result = array(
        'preview' => $item['preview'] ? $item['preview']['sizes']['product-mini'] : $item['item']['sizes']['product-mini'],
        'preview-big' => $item['preview'] ? $item['preview']['sizes']['product-big'] : $item['item']['sizes']['product-big'],
        'src' => $item['item']['url'],
        'type' => $type,
        'alt' => $item['item']['caption'] ? $item['item']['caption'] : $item['item']['title']
      );
      $gallery[$key] = $result;
    }
  }
  $galleryActiveIndex = 0;
?>
<div class="container">
  <div class="product product--page">
    <div class="product__gallery">
      <div class="product__gallery__thumbs">
        <?php foreach($gallery as $index => $item): ?>
          <div
            class="product__gallery__thumb"
            data-type="<?= $item['type'] ?>"
            data-index="<?= $index ?>"
            <?= $galleryActiveIndex == $index ? 'data-active' : '' ?>>
            <?php if($item['type'] == 'video'): ?>
              <button class="video__control">
                <?php get_template_part('icons/play') ?>
              </button>
            <?php endif; ?>
            <img src="<?= $item['preview'] ?>" alt="<?= $item['alt'] ?>">
          </div>
        <?php endforeach; ?>
      </div>
      <div class="product__gallery__items">
        <?php foreach($gallery as $index => $item): ?>
          <div
            data-index="<?= $index ?>"
            <?= $galleryActiveIndex == $index ? 'data-active' : '' ?>
            class="product__gallery__item">
              <?php if($item['type'] == 'video'): ?>
                <?php
                  my_get_template_part('blocks/video', array(
                    'src' => $item['src'],
                    'preview' => $item['preview-big']
                  ))
                ?>
              <?php else: ?>
                <a data-fancybox="product" href="<?= $item['src'] ?>">
                  <img src="<?= $item['preview-big'] ?>" alt="<?= $item['alt'] ?>">
                </a>
              <?php endif; ?>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
    <div class="product__info">
      <div class="product__title">
        <h1><?php the_title() ?></h1>
      </div>
      <?php
        if($sku):
        ?>
        <div class="product__sku">
          Артикул: <?= $sku ?>
        </div>
        <?php
        endif;
      ?>
      <div class="deliver"></div>
      <div class="product__prices">
        <div class="product__price product__price--current">
          <?= wc_price($product->price) ?>
        </div>
        <?php if($product->price != $product->regular_price): ?>
          <div class="product__price product__price--old">
            <?= wc_price($product->regular_price) ?>
          </div>
        <?php endif; ?>
      </div>
      <div class="product__cart">
        <?php my_get_template_part('blocks/field', array(
          'value' => $quantity,
          'min' => 1,
          'step' => 1,
          'postfix' => ' шт.'
        )) ?>
        <?php my_get_template_part('cart/button', array(
          'classes' => ['product__button', 'product__button--cart'],
          'title' => $product->get_title(),
          'id' => $product->get_id()
        )) ?>
        <?php my_get_template_part('favorite/button', array(
          'classes' => ['product__button'],
          'id' => $product->get_id()
        )) ?>
        <?php my_get_template_part('compare/button', array(
          'classes' => ['product__button'],
          'id' => $product->get_id()
        )) ?>
      </div>
      <div class="deliver"></div>
      <div class="product__content">
        <div class="content">
          <?php the_content() ?>
        </div>
      </div>
    </div>
  </div>
</div>