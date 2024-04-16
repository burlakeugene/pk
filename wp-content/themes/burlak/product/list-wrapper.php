<div class="products__with-filters">
  <?php
  $filters = getFilters();
  ?>
  <div style="display: none;"><?php print_r($filters); ?></div>
  <?php
  my_get_template_part('product/filter-steps', $filters);
  my_get_template_part('product/filter-top');
  my_get_template_part('product/filter', $filters);
  my_get_template_part('product/list', [
    'classes' => ['products--archive']
  ]);
  ?>
</div>