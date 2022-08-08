<?php
$link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$link = parse_url($link);
parse_str($link['query'], $get_array);
global $wp;
$current_url =  home_url( $wp->request );
$pos = strpos($current_url , '/page');
$link = $pos ? substr($current_url,0,$pos) : $current_url;

$count = $wp_query->query_vars['posts_per_page'];
$default_count = get_option('posts_per_page');
$order = $_GET['order'] ? $_GET['order'] : '';
$orders = array(
  "" => "По умолчанию",
  "title_asc" => "Название (А-Я)",
  "title_desc" => "Название (Я-А)",
  "price_asc" => "Цена по возрастанию",
  "price_desc" => "Цена по убыванию"
);
$counts = array(
  $default_count,
  $default_count * 2,
  $default_count * 3,
  $default_count * 4,
  $default_count * 5
);
?>

<div class="filter">
  <div class="container">
    <div class="filter-side">
      <div class="filter-select">
        <div class="filter-select-selected">
          Сортировка: <span><?= $orders[$order] ?></span>
        </div>
        <div class="filter-select-list">
          <?php foreach ($orders as $key => $item) :
            if ($key == $order) {
              continue;
            }
            $order_get_array = $get_array;
            $order_get_array['order'] = $key;
            $order_link = $link;
            $i = 0;
            foreach($order_get_array as $key => $get){
              $order_link .= ($i == 0) ? '?' : '&';
              $order_link .= $key.'='.$get;
              ++$i;
            }
            ?>
            <div class="filter-select-list-item">
              <a class="ajax" href="<?= $order_link ?>">
                <?= $item ?>
              </a>
            </div>
          <?php endforeach ?>
        </div>
      </div>
    </div>
    <div class="filter-side">
      <div class="filter-select">
        <div class="filter-select-selected">
          Показать: <span><?= $count ?></span>
        </div>
        <div class="filter-select-list">
          <?php foreach ($counts as $key => $item) :
            if ($item == $count) {
              continue;
            }
            $count_get_array = $get_array;
            $count_get_array['count'] = $item;
            $count_link = $link;
            $i = 0;
            foreach($count_get_array as $key => $get){
              $count_link .= ($i == 0) ? '?' : '&';
              $count_link .= $key.'='.$get;
              ++$i;
            }
            ?>
            <div class="filter-select-list-item">
              <a class="ajax" href="<?= $count_link ?>">
                <?= $item ?>
              </a>
            </div>
          <?php endforeach ?>
        </div>
      </div>
    </div>
  </div>
</div>