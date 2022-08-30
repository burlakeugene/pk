<?php
  $id = get_the_id();
  $product = new WC_Product($id);
  $sku = $product->get_sku();
  $quantity = 1;
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
  $attributes = getProductAttributes($product);
  $attributes_mini = array_filter($attributes, function($item){
    return $item['mini'];
  });
  $attributes = array_filter($attributes, function($item){
    return !$item['mini'];
  });

  $is_stock = $product->stock_status === 'instock' ? true : false;
?>

<div class="product product--page">
  <div class="product__main">
    <div class="product__buttons">
      <?php
        if(isAvailable('favorite')){
          my_get_template_part('favorite/button', array(
            'classes' => ['product__button'],
            'id' => $product->get_id()
          ));
        }
      ?>
      <?php
        if(isAvailable('compare')){
          my_get_template_part('compare/button', array(
            'classes' => ['product__button'],
            'id' => $product->get_id()
          ));
        }
      ?>
    </div>
    <?php if($gallery): ?>
    <div class="product__gallery">
      <div class="product__gallery__items">
        <?php
          get_template_part('slider/buttons');
        ?>
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
    </div>
    <?php endif; ?>
    <div class="product__info">
      <div class="product__info__top">
        <div class="product__title">
          <h1><?php the_title() ?></h1>
        </div>
        <?php
          my_get_template_part('product/attributes', [
            'list' => $attributes_mini,
            'mini' => true
          ]);
        ?>
        <div class="product__content content">
          <?php the_content(); ?>
        </div>
      </div>
      <div class="product__info__bottom">
        <div class="product__stock <?= !$is_stock ? 'product__stock--false' : '' ?>">
          Наличие: <span><?= $is_stock ? 'есть в наличии' : 'нет в наличии' ?></span>
        </div>
        <div class="product__price-add">
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
          <?php my_get_template_part('cart/button', array(
            'title' => $product->get_title(),
            'id' => $product->get_id()
          )) ?>
        </div>
      </div>
    </div>
  </div>
  <?php
     my_get_template_part('product/attributes', [
      'list' => $attributes,
      'title' => 'О товаре'
     ]);
  ?>
</div>