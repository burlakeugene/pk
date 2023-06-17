<div class="products__with-filters">
  <?php
  my_get_template_part('product/filter-steps');
  my_get_template_part('product/filter-top');
  my_get_template_part('product/filter');
  my_get_template_part('product/list', [
    'classes' => ['products--archive']
  ]);
  ?>
</div>