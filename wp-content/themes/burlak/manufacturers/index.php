<?php
$page = get_page_by_path('manufacturers');
$id = $page->ID;
$fields = get_fields($id);
$title = $fields['title_index'];
$text = $fields['text_index'];

$items = array_filter(array_map(function($item){
  if($item['fields']['index']) return $item;
  return null;
}, getManufacturers()));

?>

<section class="manufacturers manufacturers--index" style="background-image: url(<?= $fields['background']['sizes']['large'] ?>);">
  <div class="container">
    <?php my_get_template_part('blocks/title', [
      'text' => $title,
      'mini' => true,
      'apperance' => ['gray', 'gray']
    ]) ?>
    <?php
      if($text):
      ?>
      <div class="manufacturers__text">
        <?= $text ?>
      </div>
      <?php
      endif;
    ?>
    <div class="manufacturers__list">
      <?php
        if($items):
          my_get_template_part('slider/slider', [
            'fullHeightSlide' => true,
            'buttons' => true,
            'list' => $items,
            'item' => [
              'path' => 'manufacturers/item'
            ],
            'config' => [
              'slidesPerView' => 3,
              'grid' => [
                'rows' => 2,
                'fill' => 'row'
              ],
              'spaceBetween' => 20,
            ]
            ]);
        endif;
      ?>
      <div class="manufacturers__link">
        <a href="<?php the_permalink($id) ?>" class="link ajax">
          Все производители
        </a>
      </div>
    </div>
  </div>
</section>