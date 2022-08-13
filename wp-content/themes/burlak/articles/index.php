<?php
  $post_info = get_post_type_object('articles');
  $args = array(
    'numberposts' => 5,
    'post_type' => $post_info->name,
    'orderby' => 'date',
    'order' => 'DESC'
  );
  $articles = get_posts($args);
  $first = array_shift($articles);
  if($first || $articles):
  ?>
    <div class="articles articles--index">
      <?php
        my_get_template_part('articles/item', [
          'big' => true,
          'data' => $first
        ]);
        if($articles){
          my_get_template_part('articles/list', [
            'list' => $articles
          ]);
        }
      ?>
    </div>
    <div class="buttons">
      <a class="button ajax" href="<?= get_post_type_archive_link('articles') ?>">
        Посмотреть все
      </a>
    </div>
  <?php
  endif;
?>