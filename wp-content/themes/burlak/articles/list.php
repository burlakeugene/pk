
<?php
  global $wp_query;
  $total_pages = $wp_query->max_num_pages;
  $current_page = $wp_query->query['paged'] ? $wp_query->query['paged'] : 1;
?>
<div class="load-more">
  <div class="articles__list load-more__list">
    <?php
      if ($list):
        foreach ($list as $key => $item):
          my_get_template_part('articles/item', $item);
        endforeach;
      elseif (have_posts()) :
        while (have_posts()) : the_post();
          my_get_template_part('articles/item');
        endwhile;
      else:
        get_template_part('blocks/empty');
      endif;
    ?>
  </div>
  <?php
      if($total_pages > 1):
    ?>
    <div class="load-more__pagination">
      <div class="load-more__pagination__col">
        <?php
          if($current_page < $total_pages):
          ?>
          <button class="button button--loader load-more__pagination__button">
            Загрузить еще
            <?php get_template_part('icons/loading') ?>
          </button>
          <?php
          endif;
        ?>
      </div>
      <div class="load-more__pagination__col">
        <?php the_posts_pagination() ?>
      </div>
    </div>
  <?php endif; ?>
</div>
