<?php
global $wp_query;
$attr_query = [
  'status'    => 'publish',
  'is_product_filter' => 1
];

$category = $wp_query->query['product_cat'];

if($category){
  $attr_query['category'] = [$category];
}

$products = wc_get_products($attr_query);

$query = get_queried_object();
$link = is_tax() ? get_term_link($query->term_id) : get_permalink(wc_get_page_id('shop'));

$current = [];
foreach($_GET as $key => $get){
  if(!str_starts_with($key, 'pa_')) continue;
  $current[$key] = explode(',', $get);
}

$filters = [];
foreach($products as $product){

  //categories
  if(!$filters['category']){
    $filters['category'] = [
      'label' => 'Категория',
      'key' => 'category',
      'type' => 'list',
      'list' => []
    ];
  }
  $terms = get_the_terms($product->id, 'product_cat');
  foreach ($terms as $term) {
    if(!$filters['category']['list'][$term->slug]){
      $is_active = $query->term_id === $term->term_id;
      if($is_active){
        $current['category'] = [$term->slug];
      }
      $category_link = $is_active ? get_permalink(wc_get_page_id('shop')) : get_term_link($term->term_id);
      $filters['category']['list'][$term->slug] = [
        'label' => $term->name,
        'value' => $term->slug,
        'count' => 1,
        'active' => $is_active,
        'link' => $category_link.mergeQueryString()
      ];
    }
    else{
      ++$filters['category']['list'][$term->slug]['count'];
    }
  }

  //attributes
  foreach( $product->get_attributes() as $taxonomy => $attribute ){
    $attribute_name = wc_attribute_label( $taxonomy );
    if(!$filters[$taxonomy]){
      $filters[$taxonomy] = [
        'label' => $attribute_name,
        'key' => $taxonomy,
        'type' => 'list',
        'list' => []
      ];
    }
    foreach($attribute->get_terms() as $term){
      if(!$filters[$taxonomy]['list'][$term->slug]){
        $is_active = in_array($term->slug, $current[$taxonomy]);
        $next = $current[$taxonomy] ? $current[$taxonomy] : [];
        if($is_active){
          $index = array_search($term->slug, $next);
          unset($next[$index]);
        }
        else{
          array_push($next, $term->slug);
        }
        $next = implode(',', $next);
        $filters[$taxonomy]['list'][$term->slug] = [
          'label' => $term->name,
          'value' => $term->slug,
          'count' => 1,
          'active' => $is_active,
          'link' => $link.mergeQueryString([
            'pa_model' => $taxonomy === 'pa_brand' && $is_active ? false : implode(',', $current['pa_model']),
            $taxonomy => $next,
          ])
        ];
      }
      else{
        ++$filters[$taxonomy]['list'][$term->slug]['count'];
      }
    }
  }
}

foreach($filters as $key => $item){
  if(!$item['list']) unset($filters[$key]);
}

if(!$current['pa_brand']){
  unset($filters['pa_model']);
}

usort($filters, function ($a, $b){
  $sort = [
    'pa_brand' => 4,
    'pa_model' => 3,
    'pa_yearmodel' => 2,
    'category' => 1,
  ];
  return $sort[$b['key']] > $sort[$a['key']] ? 1 : -1;
});

?>

<button
  class="button filter__toggle"
  data-active-text="Свернуть фильтр"
  data-inactive-text="Развернуть фильтр"
>
  Развернуть фильтр
</button>

<div class="filter">
  <?php if($current):
    $link = get_permalink(wc_get_page_id('shop'));
    ?>
  <div class="filter__header">
    <a class="ajax button button--black" href="<?= $link ?>">
      Очистить фильтр
    </a>
    <div class="filter__header__buttons">
      <?php
        foreach($current as $key => $items):
          foreach($items as $item):
            $filters_index = array_search($key, array_column($filters, 'key'));
            $filter = $filters[$filters_index];
          ?>
              <a class="ajax filter__header__button" href="<?= $filter['list'][$item]['link'] ?>">
                <?= $filter['label'] ?>: <?= $filter['list'][$item]['label'] ?>
                <?php get_template_part('icons/clear') ?>
              </a>
          <?php
          endforeach;
        endforeach;
      ?>
    </div>
  </div>
  <?php endif; ?>
  <?php
    $COUNT_LIMIT = 5;
    foreach($filters as $filter):
    if($filter['type'] === 'list'):
      $count = count($filter['list']);
    ?>
      <div class="filter__block">
        <div class="filter__block__label">
          <?= $filter['label'] ?>
        </div>
        <div class="filter__block__list">
          <?php
          $index = 0;
          foreach($filter['list'] as $item):
            ?>
            <a
              class="filter__block__list__item ajax <?= $item['active'] ? 'filter__block__list__item--active' : '' ?> <?= $index >= $COUNT_LIMIT ? 'filter__block__list__item--hidden' : '' ?>"
              href="<?= $item['link'] ?>"
            >
              <span class="filter__block__list__item__label"><?= $item['label'] ?></span>
              <span class="filter__block__list__item__count"><?= $item['count'] ?></span>
            </a>
          <?php
          $index++;
        endforeach; ?>
        </div>
        <?php if($COUNT_LIMIT < $count): ?>
          <div class="filter__block__button">
            <button class="button" data-next-text="Скрыть все">
              Показать все
            </button>
          </div>
        <?php endif; ?>
      </div>
    <?php
    endif;
    endforeach;
  ?>
</div>