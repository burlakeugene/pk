<?php
  $list = $data['list'];
  $current = $data['current'];
?>
<div class="filter__steps tabs">
  <div class="tabs__buttons">
  <?php
    $list_keys = array_column($list, 'key');
    $last_current = array_key_last($current);
    $max_index = count($list) - 1;
    $active_index = $last_current ? array_search($last_current, $list_keys) + 1 : 0;
    $active_index = $active_index > $max_index ? $max_index : $active_index;
    $active = $list[$active_index];

    foreach($list as $index => $item):
      $disabled = $index > $active_index;
      $active = $active_index == $index;
    ?>
      <button class="
        tabs__button
        button
        <?= $active ? 'button--no-pointer-events' : '' ?>
        <?= !$active ? 'button--black' : '' ?>
        <?= $disabled ? 'button--gray button--no-pointer-events' : '' ?>
      " data-tab-id="<?= $item['key'] ?>" <?= $active ? 'data-active' : '' ?>
        data-active-class="button--no-pointer-events"
        data-inactive-class="button--black <?= $disabled ? 'button--no-pointer-events' : '' ?>"
      >
        <?= $item['label'] ?>
      </button>
    <?php
    endforeach;
  ?>
  </div>
  <div class="tabs__contents">
    <?php foreach($list as $index => $tab):
      $active = $active_index == $index;
      $list_next = array_column(array_slice($list, $index + 1), 'key');
      $list_prev = array_column(array_slice($list, 0, $index), 'key');
      ?>
      <div class="tabs__content" data-tab-id="<?= $tab['key'] ?>" <?= $active ? 'data-active' : '' ?>>
      <?php
          $items = [];
          foreach($tab['list'] as $link):
            $query = get_queried_object();
            $href = $link['permalink'];
            $href = array_search('category', $list_prev) || $tab['key'] === 'category' ? $href : get_permalink(wc_get_page_id('shop'));
            $href = strtok($href, '?');
            $params = [];
            if($tab['key'] !== 'category'){
              $params[$tab['key']] = $link['value'];
            }
            foreach($list_prev as $key){
              if($key == 'category'){
                continue;
              }
              if($current[$key]){
                $params[$key] = implode(',', $current[$key]);
              }
            }
            foreach($list_next as $key){
              $params[$key] = false;
            }
            $href = $href.mergeQueryString($params);
            $preview = get_fields($link['term'])['preview'];
            $preview['link_text'] = 'Выбрать';
            $items[] = [
              'attributes' => ['data-filter-link'],
              'link' => $href,
              'preview' => $preview
            ];
          endforeach;
          my_get_template_part('previews/list', [
            'items' => $items
          ]);
        ?>
      </div>
    <?php endforeach; ?>
  </div>
</div>