<?php
global $wp_query;
$attr_query = [
  'status'    => 'publish',
  'limit'     => -1,
//   'tax_query'      => array( array(
//     'taxonomy'        => 'pa_model',
//     'field'           => 'slug',
//     'terms'           =>  array('passat'),
//     'operator'        => 'IN',
// ) )
];

$category = $wp_query->query['product_cat'];

if($category){
  $attr_query['category'] = [$category];
}

$data = array();
foreach( wc_get_products($attr_query) as $product ){
    foreach( $product->get_attributes() as $taxonomy => $attribute ){
        $attribute_name = wc_attribute_label( $taxonomy );
        if(!$data[$taxonomy]){
          $data[$taxonomy] = [
            'label' => $attribute_name,
            'key' => $taxonomy,
            'list' => []
          ];
        }
        foreach ( $attribute->get_terms() as $term ){
          if(!$data[$taxonomy]['list'][$term->slug]){
            $data[$taxonomy]['list'][$term->slug] = [
              'label' => $term->name,
              'value' => $term->slug,
              'count' => 1,
              'id' => $term->term_id
            ];
          }
          else{
            ++$data[$taxonomy]['list'][$term->slug]['count'];
          }
        }
    }
}

foreach($data as $key => $item){
  if(!$item['list']) unset($data[$key]);
}

// Raw output (testing)
echo '<pre>'; print_r($data); echo '</pre>';
?>