<?php
  $list = $data['list'];
  $current = $data['current'];
  $current_url = (empty($_SERVER['HTTPS']) ? 'http' : 'https') . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
  $hidePanel = (is_tax() && !$_GET['pa_brand']) || (!$_GET['pa_brand'] && $_GET['pa_manufacturer']);
  if(!$hidePanel):
?>
<div class="filter__steps">
    <?php
      my_get_template_part('blocks/title', [
        'text' => 'Визуальный подбор',
        'mini' => true,
        'apperance' => ['', 'dark'],
      ])
    ?>
    <div class="filter__steps__buttons">
      <?php
        $list_keys = array_column($list, 'key');

        $last_current = array_key_last($current);

        $max_index = count($list) - 1;
        $active_index = $last_current ? array_search($last_current, $list_keys) + 1 : 0;
        $active_index = $active_index > $max_index ? $max_index : $active_index;

        $active_data = $list[$active_index];

        foreach($list as $index => $item):
          $disabled = $index > $active_index;
          $active = $active_index == $index;

          $list_next = array_column(array_slice($list, $index + 1), 'key');
          $list_prev = array_column(array_slice($list, 0, $index), 'key');
          $href = in_array('category', $list_prev) ? $actual_link : get_permalink(wc_get_page_id('shop'));
          $href = strtok($href, '?');

          $params = [];

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

          $params[$item['key']] = false;

          $href = $href.mergeQueryString($params);
        ?>
        <a class="
        button
        <?= $active ? 'button--no-pointer-events' : '' ?>
        <?= !$active ? 'button--black' : '' ?>
        <?= $disabled ? 'button--gray button--no-pointer-events' : '' ?>
        "
        href="<?= $href ?>"
        data-filter-link="false"
        >
          <?= $item['label'] ?>
        </a>
      <?php endforeach; ?>
    </div>

    <div class="filter__step">
      <?php
        $items = [];
        $list_next = array_column(array_slice($list, $active_index + 1), 'key');
        $list_prev = array_column(array_slice($list, 0, $active_index), 'key');

        foreach($active_data['list'] as $link):
          $href = $link['permalink'];
          $href = in_array('category', $list_prev) || $active_data['key'] === 'category' ? $href : get_permalink(wc_get_page_id('shop'));
          $href = strtok($href, '?');
          $params = [];
          if($active_data['key'] !== 'category'){
            $params[$active_data['key']] = $link['value'];
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
          $items[] = [
            'attributes' => ['data-filter-link="false"'],
            'link' => $href,
            'preview' => $preview,
            'name' => $link['label']
          ];
        endforeach;
        my_get_template_part('previews/list', [
          'items' => $items
        ]);
      ?>
    </div>
</div>
<?php
  endif;
?>