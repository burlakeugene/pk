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
  <?php
    if($text):
    ?>
    <div class="brands__text">
      <?= $text ?>
    </div>
    <?php
    endif;
  ?>
  <?php
    my_get_template_part('brands/list', $items);
  ?>
</div>