<?php
  $page = get_page_by_path('brands');
  $id = $page->ID;
  $fields = get_fields($id);
  $title = $fields['title_index'];
  $text = $fields['text_index'];

  $items = array_filter(array_map(function($item){
    if($item['preview']['index']) return $item;
    return null;
  }, getBrands()));

  my_get_template_part('previews/list', [
    'modificators' => ['index'],
    'text' => $text,
    'items' => $items,
  ])
?>