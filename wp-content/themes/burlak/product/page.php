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
?>

<div class="product product--page">
  <div class="product__main">
    <div class="product__gallery">

    </div>
    <div class="product__info">
      <div class="product__title">
      <h1><?php the_title() ?></h1>
      </div>
    </div>
  </div>
</div>