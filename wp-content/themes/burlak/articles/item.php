<?php
  if(!$data) $data = get_post(get_the_id());
  $id = $data->ID;
  $image = get_the_post_thumbnail_url($id, 'full');
  $fields = get_fields($id);
  $after_title = $fields['after_title'];
  if($data):
    $classes = 'article ajax';
    if($big) $classes .= ' article--big';
    if(!$image) $classes .= ' article--no-image';
?>
<a
  class="<?= $classes ?>"
  href="<?php the_permalink($id) ?>"
>
  <div class="article__image" style="background-image: url(<?= $image ?>)"></div>
  <div class="article__content">
    <div class="article__header">
      <h3 class="article__title">
        <?= $data->post_title ?>
      </h3>
      <?php
        if($after_title){
          echo ' '.$after_title;
        }
      ?>
    </div>
    <div class="article__footer">
      <div class="article__description">
        <?= $data->post_excerpt ?>
      </div>
      <div class="link link--theme">
        Перейти
      </div>
    </div>
  </div>
</a>
<?php
  endif;
?>