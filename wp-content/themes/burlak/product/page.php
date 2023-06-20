<?php
  $id = get_the_id();
  $product = new WC_Product($id);
  $sku = $product->get_sku();
  $quantity = 1;
  $gallery = $product->get_gallery_image_ids();
  if($gallery){
    foreach($gallery as $index => $item){
      $image = get_post($item);
      $gallery[$index] = [
        'alt' => get_post_meta( $image->ID, '_wp_attachment_image_alt', true ),
        'title' => $image->post_title,
        'caption' => $item['item']['caption'],
        'src' => wp_get_attachment_image_url($image->ID, 'full'),
        'preview' => wp_get_attachment_image_url($image->ID, 'product-mini'),
        'preview-big' =>  wp_get_attachment_image_url($image->ID, 'product-big'),
      ];
    }
  }
  $galleryActiveIndex = 0;
  $attributes = getProductAttributes($product);
  $attributes_mini = array_filter($attributes, function($item){
    return $item['mini'];
  });
  if($sku){
    array_unshift($attributes_mini , [
      'label' => 'Артикул',
      'value' => $sku
    ]);
  }
  $attributes = get_field('attributes');

  $is_stock = $product->stock_status === 'instock' ? true : false;
  $alt = getProductAlt($product);
  $is_featured = $product->is_featured();
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
      <?php my_get_template_part('product/featured', $is_featured); ?>
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
              <a
                data-fancybox="product"
                href="<?= $item['src'] ?>"
                data-alt="<?= $alt ?>"
                title="<?= $alt ?>"
                data-title="<?= $alt ?>"
              >
                <img
                  src="<?= $item['preview-big'] ?>"
                  alt="<?= $alt ?>"
                />
              </a>
          </div>
        <?php endforeach; ?>
      </div>
      <div class="product__gallery__thumbs">
        <?php foreach($gallery as $index => $item): ?>
          <div
            class="product__gallery__thumb"
            data-index="<?= $index ?>"
            <?= $galleryActiveIndex == $index ? 'data-active' : '' ?>>
            <img src="<?= $item['preview'] ?>" alt="<?= $alt ?>">
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
          <!-- Наличие: <span><?= $is_stock ? 'есть в наличии' : 'нет в наличии' ?></span> -->
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
          <button
            class="button button--black"
            data-callback="Быстрый заказ: <?= $product->get_title() ?> #<?= $product->get_id() ?> "
          >
            Быстрый заказ
          </button>
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