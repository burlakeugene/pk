<?php
  if(!$id) $id = get_the_id();
  $product = new WC_Product($id);
  $attributes = getProductAttributes($product);
?>

<div class="product__attributes <?= count($attributes) % 2 == 0 ? 'product__attributes--even' : 'product__attributes--odd' ?>">
  <?php
    foreach($attributes as $key => $attribute):
    ?>
    <div class="product__attribute">
      <div class="product__attribute__label">
        <?= $attribute['label'] ?>
      </div>
      <div class="product__attribute__value">
        <?= $attribute['value']  ?>
      </div>
    </div>
    <?php
    endforeach;
  ?>
</div>