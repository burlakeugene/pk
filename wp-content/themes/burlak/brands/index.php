<?php
  $page = get_page_by_path('brands');
  $id = $page->ID;
  $fields = get_fields($id);
  $title = $fields['title_index'];
  $text = $fields['text_index'];

  $items = array_filter(array_map(function($item){
    if($item['fields']['index']) return $item;
    return null;
  }, getBrands()));

?>

<div class="brands brands--index">
  <div class="brands__content">
    <?php
      my_get_template_part('blocks/title', [
        'text' => $title,
        'apperance' => ['dark', 'theme'],
        'mini' => true
      ])
    ?>
    <?php
      if($text):
      ?>
      <div class="brands__text">
        <?= $text ?>
      </div>
      <?php
      endif;
    ?>
    <a class="link link--dark ajax" href="<?php the_permalink($id) ?>">
      Все бренды
    </a>
  </div>
  <?php
    if($items):
      my_get_template_part('slider/slider', [
        'classes' => 'brands',
        'fullHeightSlide' => true,
        'buttons' => true,
        'pagination' => true,
        'list' => $items,
        'item' => [
          'path' => 'brands/item'
        ],
        'config' => [
          'slidesPerView' => 'auto',
          'spaceBetween' => 40,
        ]
        ]);
    endif;
  ?>
</div>