<?php
  get_template_part('blocks/breadcrumbs');
  $cookie = $_COOKIE['compare'];
  $cookie = str_replace("\\", "", $cookie);
  $cookie = json_decode($cookie, true);
  $items = array();
  $data = array();
  if($cookie){
    $products = get_posts(array(
      'numberposts' => -1,
      'post_type' => 'product',
      'post__in' => array_keys($cookie)
    ));
  }
  $type = $_GET['type'];
  $link = get_permalink(get_page_by_path('compare'));
  foreach($products as $product){
    if($product && get_class($product) == 'WP_Post') $product = new WC_Product($product->ID);
    $data[$product->get_id()]['image'] = wp_get_attachment_image_src(get_post_thumbnail_id($product->get_id()), 'product');
    $data[$product->get_id()]['title'] = $product->get_title();
    $data[$product->get_id()]['link'] = $product->get_permalink();
    $attributes = getProductAttributes($product);
    foreach($attributes as $key => $attribute){
      $data[$product->get_id()]['attributes'][$key] = $attribute;
    }
    $data[$product->get_id()]['attributes']['price'] = array(
      'label' => 'Стоимость',
      'value' => wc_price($product->price)
    );
  }
  $attributes = [];
  foreach($data as $product){
    foreach($product['attributes'] as $key => $attribute){
      if(!$attributes[$key]) $attributes[$key] = array(
        'label' => $attribute['label'],
        'key' => $key
      );
    }
  }
  if($attributes['sku']){
    $$attributes['price'] = $attributes['sku'];
    unset($attributes['sku']);
    array_unshift($attributes, $$attributes['price']);
  }
  if($attributes['price']){
    $price = $attributes['price'];
    unset($attributes['price']);
    $attributes['price'] = $price;
  }
  my_get_template_part('blocks/top', array(
    'title' => array(
      'text' => get_the_title(),
    ),
    'bottom' => array(
        array(
          'path' => 'compare/top'
        )
      ),
      'links' => array(
        'items' => array(
          array(
            'link' => $link.mergeQueryString(array(
              'type' => 'diffefences'
            )),
            'text' => 'Показать различия',
            'active' => $type == 'diffefences'
          ),
          array(
            'link' => $link.mergeQueryString(array(
              'type' => false
            )),
            'text' => 'Все характеристики',
            'active' => !$type
          ),
        )
      )
  ));
?>

<div class="container">
  <div class="compare__list"><?php if($data): ?>
    <table cellspacing="0">
      <tr>
        <td></td>
        <?php foreach($data as $key => $product): ?>
          <td>
            <div class="compare__list__item">
              <div class="compare__list__item__top">
                <button class="compare__remove" data-id="<?= $key ?>">
                  <?php get_template_part('icons/close') ?>
                </button>
              </div>
              <div class="compare__list__item__body">
                <div class="compare__list__item__image">
                  <?php if($product['image']): ?>
                    <a class="ajax" data-overlay="link" href="<?= $product['link'] ?>">
                      <img src="<?= $product['image'][0] ?>" alt="<?= $product['title'] ?>">
                    </a>
                  <?php endif; ?>
                </div>
                <div class="compare__list__item__title">
                  <a class="ajax" href="<?= $product['link'] ?>">
                    <?= $product['title'] ?>
                  </a>
                </div>
              </div>
            </div>
          </td>
        <?php endforeach; ?>
      </tr>
      <?php foreach($attributes as $attribute):
        if($type == 'diffefences'){
          $isEmpty = false;
          foreach($data as $key => $product){
            $value = $product['attributes'][$attribute['key']]['value'];
            if(!$value){
              $isEmpty = true;
            }
          }
          if($isEmpty) continue;
        }
        ?>
        <tr>
          <td>
            <?= $attribute['label'] ?>
          </td>
          <?php foreach($data as $key => $product):
            $value = $product['attributes'][$attribute['key']]['value'];
            ?>
            <td>
              <?= $value ? $value : '—' ?>
            </td>
          <?php endforeach; ?>
        </tr>
      <?php endforeach; ?>
    </table>
    <?php endif; ?></div>
  <div class="empty">
    В сравнении пусто
  </div>
</div>