<?php
  $list = $data['list'];
  $current = $data['current'];
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
    <a class="button button--black" href="<?= $link ?>" data-filter-link>
      Очистить фильтр
    </a>
    <div class="filter__header__buttons">
      <?php
        foreach($current as $key => $items):
          foreach($items as $item):
            $list_index = array_search($key, array_column($list, 'key'));
            $filter = $list[$list_index];
          ?>
              <a class="filter__header__button" href="<?= $filter['list'][$item]['link'] ?>" data-filter-link>
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
    foreach($list as $item):
    if($item['type'] === 'list'):
      $count = count($item['list']);
    ?>
      <div class="filter__block">
        <div class="filter__block__label">
          <?= $item['label'] ?>
        </div>
        <div class="filter__block__list">
          <?php
          $index = 0;
          foreach($item['list'] as $link):
            ?>
            <a
              class="filter__block__list__item <?= $link['active'] ? 'filter__block__list__item--active' : '' ?> <?= $index >= $COUNT_LIMIT ? 'filter__block__list__item--hidden' : '' ?>"
              href="<?= $link['href'] ?>"
              data-filter-link
            >
              <span class="filter__block__list__item__label"><?= $link['label'] ?></span>
              <span class="filter__block__list__item__count"><?= $link['count'] ?></span>
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