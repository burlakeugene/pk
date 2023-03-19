<?php
if (!function_exists('burlak_setup')) :
  function burlak_setup()
  {
      load_theme_textdomain('burlak', get_template_directory() . '/languages');
      add_theme_support('automatic-feed-links');
      add_theme_support('title-tag');
      add_theme_support('post-thumbnails');
      add_theme_support('woocommerce');
      register_nav_menus(array(
        'header' => esc_html__('Header', 'burlak'),
        'footer' => esc_html__('Footer', 'burlak'),
        'footer-2' => esc_html__('Footer 2', 'burlak'),
        'footer-3' => esc_html__('Footer 3', 'burlak'),
      ));
      add_theme_support('custom-logo');
    	add_theme_support('custom-header');
  }
endif;
add_action('after_setup_theme', 'burlak_setup');
function burlak_scripts(){
    wp_enqueue_style('burlak-style', get_stylesheet_uri());
    wp_enqueue_script('burlak-bundle', get_template_directory_uri() . '/dist/bundle.js');
    wp_enqueue_style('burlak-theme', get_template_directory_uri() . '/dist/bundle.css');
}
add_action('wp_enqueue_scripts', 'burlak_scripts');
show_admin_bar(false);

function add_fancybox($content)
{
    global $post;
    $pattern = "/<a(.*?)href=('|\")(.*?).(bmp|gif|jpeg|jpg|png)('|\")(.*?)>/i";
    $replacement = '<a$1href=$2$3.$4$5 data-fancybox="%POSTID%"$6>';
    $content = preg_replace($pattern, $replacement, $content);
    $content = str_replace("%POSTID%", $post->ID, $content);
    return $content;
}

add_filter('the_content', 'add_fancybox');

function phone_replace($string)
{
    $string = str_replace(" ", "", $string);
    $string = str_replace("-", "", $string);
    $string = str_replace("(", "", $string);
    $string = str_replace(")", "", $string);
    return $string;
}

add_image_size('lazy', 50, 50, false);
add_image_size('lazy-square', 50, 50, true);
add_image_size('lazy-square', 1450, 650, true);
add_image_size('product', 300, 240, true);
add_image_size('product-mini', 140, 140, true);
add_image_size('product-big', 820, 820, true);
add_image_size('category', 450, 450, true);
add_image_size('banner', 1400, 600, true);
add_image_size('background', 1920, 650, true);

function getMonth($month){
    $months = ['Января', 'Февраля', 'Марта', 'Апреля', 'Мая', 'Июня', 'Июля', 'Августа', 'Сентября', 'Октября', 'Ноября', 'Декабря'];
    return $months[$month - 1];
}

// function yfymp_func($args){
//   $args['yfym'] = true;
// };
// add_filter('yfym_query_arg_filter', 'yfymp_func', 15);

function my_query($query){
  $is_product_filter = $query->query['is_product_filter'];
  if($is_product_filter){
    $query->set('posts_per_page', -1);
    foreach($_GET as $key => $get){
      if(!str_starts_with($key, 'pa_')) continue;
      $query->query_vars['tax_query'][] = [
        'taxonomy'        => $key,
        'field'           => 'slug',
        'terms'           =>  explode(',', $get),
        'operator'        => 'IN',
      ];
    }
    return;
  }

  if (!is_admin() && (($query->query['post_type'] == 'product') || $query->query['product_cat'])) {
    $query->set('posts_per_page',
      $query->query['posts_per_page'] ?
        $query->query['posts_per_page'] : $_GET['posts_per_page'] ?
          $_GET['posts_per_page'] : 12
    );
    foreach($_GET as $key => $get){
      if(!str_starts_with($key, 'pa_')) continue;
      $query->query_vars['tax_query'][] = [
        'taxonomy'        => $key,
        'field'           => 'slug',
        'terms'           =>  explode(',', $get),
        'operator'        => 'IN',
      ];
    }
    return;
  }
  if (!is_admin() && (is_post_type_archive('articles') || is_post_type_archive('services'))) {
    $query->set('posts_per_page',
      $query->query['posts_per_page'] ?
        $query->query['posts_per_page'] : $_GET['posts_per_page'] ?
          $_GET['posts_per_page'] : 8
    );
    return;
  }
}
add_action('pre_get_posts', 'my_query', 1);


function fix_wp_get_attachment_image_svg($image, $attachment_id, $size, $icon) {
  if (is_array($image) && preg_match('/\.svg$/i', $image[0]) && $image[1] <= 1) {
    if(is_array($size)) {
      $image[1] = $size[0];
      $image[2] = $size[1];
    } elseif(($xml = simplexml_load_file($image[0])) !== false) {
      $attr = $xml->attributes();
      $viewbox = explode(' ', $attr->viewBox);
      $image[1] = isset($attr->width) && preg_match('/\d+/', $attr->width, $value) ? (int) $value[0] : (count($viewbox) == 4 ? (int) $viewbox[2] : null);
      $image[2] = isset($attr->height) && preg_match('/\d+/', $attr->height, $value) ? (int) $value[0] : (count($viewbox) == 4 ? (int) $viewbox[3] : null);
    } else {
      $image[1] = $image[2] = null;
    }
  }
  return $image;
}
add_filter( 'wp_get_attachment_image_src', 'fix_wp_get_attachment_image_svg', 10, 4 );

add_action('admin_menu', function () {
    add_options_page('Theme settings page', 'Theme settings', 'manage_options', 'theme-page', 'theme_settings_page');
});

add_action('admin_init', function () {
    register_setting('theme-page-settings', 'common_scripts');
    register_setting('theme-page-settings', 'head_additions');
    register_setting('theme-page-settings', 'theme');
    register_setting('theme-page-settings', 'instagram');
    register_setting('theme-page-settings', 'vkontakte');
    register_setting('theme-page-settings', 'whatsapp');
    register_setting('theme-page-settings', 'address');
    register_setting('theme-page-settings', 'phone');
    register_setting('theme-page-settings', 'email');
    register_setting('theme-page-settings', 'copyrights');

    // $products = wc_get_products([
    //   'return' => 'ids',
    //   'limit' => -1,
    // ]);

    // foreach($products as $id){
    //   $product = wc_get_product($id);
    //   $thumb_id = get_post_thumbnail_id($product->get_id());
    //   $galleries = $product->get_gallery_image_ids();
    //   if(!in_array($thumb_id, $galleries)){
    //     echo '_______________<br />';
    //     echo $thumb_id.'<br />';
    //     print_r($galleries);
    //     echo '<br />';
    //   }
    // }
});

function theme_settings_page()
{
    ?>
  <div class="wrap theme-settings">
    <h1>Theme settings</h1>
    <form action="options.php" method="post">
      <?php
        settings_fields('theme-page-settings');
        do_settings_sections('theme-page-settings'); ?>
      <label>
        <div>Common scripts</div>
        <textarea name="common_scripts"><?= esc_attr(get_option('common_scripts')); ?></textarea>
      </label>
      <label>
        <div>Head additions</div>
        <textarea name="head_additions"><?= esc_attr(get_option('head_additions')); ?></textarea>
      </label>
      <label>
        <div>Theme color</div>
        <input name="theme" type="text" value="<?= esc_attr(get_option('theme')); ?>">
      </label>
      <label>
        <div>Instagram</div>
        <input name="instagram" type="text" value="<?= esc_attr(get_option('instagram')); ?>">
      </label>
      <label>
        <div>Vkontakte</div>
        <input name="vkontakte" type="text" value="<?= esc_attr(get_option('vkontakte')); ?>">
      </label>
      <label>
        <div>Whatsapp</div>
        <input name="whatsapp" type="text" value="<?= esc_attr(get_option('whatsapp')); ?>">
      </label>
      <label>
        <div>Address</div>
        <input type="text" name="address" value="<?= esc_attr(get_option('address')) ?>" />
      </label>
      <label>
        <div>Phone</div>
        <input type="tel" name="phone" value="<?= esc_attr(get_option('phone')) ?>" />
      </label>
      <label>
        <div>Mail</div>
        <input type="email" name="email" value="<?= esc_attr(get_option('email')) ?>" />
      </label>
      <label>
        <div>Copyrights</div>
        <input type="text" name="copyrights" value="<?= esc_attr(get_option('copyrights')) ?>" />
      </label>
      <label>
      <?php submit_button(); ?>
    </form>
  </div>
  <style>
    .theme-settings{max-width:600px}.theme-settings input{width:100%}.theme-settings input[type=checkbox]{width:auto}.theme-settings textarea{width:100%;resize:none;height:150px}.theme-settings label{margin-bottom:10px;display:block}.theme-settings .submit{margin-top:0}.theme-settings input[type=submit]{width:auto}.theme-settings h1{margin-bottom:20px}
  </style>
<?php
}

function declension($value = 1, $wordForms = ['товар', 'товара', 'товаров']){
    $array = [2,0,1,1,1,2];
    return $wordForms[($value%100>4&&$value%100<20)?2:$array[($value%10<5)?$value%10:5]];
}

function settings(){
  register_post_type(
    'banners',
    array(
      'label' => 'Баннер',
      'labels' => array(
        'menu_name' => 'Баннеры'
      ),
      'public' => true,
      'has_archive' => false,
      'supports' => array('title', 'custom-fields')
    )
  );
  register_post_type(
    'articles',
    array(
      'label' => 'Новости и акции',
      'labels' => array(
        'menu_name' => 'Новости и акции'
      ),
      'public' => true,
      'has_archive' => true,
      'supports' => array('title', 'editor', 'excerpt', 'thumbnail', 'custom-fields')
    )
  );
  register_post_type(
    'services',
    array(
      'label' => 'Услуги',
      'labels' => array(
        'menu_name' => 'Услуги'
      ),
      'public' => true,
      'has_archive' => true,
      'supports' => array('title', 'editor', 'excerpt', 'thumbnail', 'custom-fields')
    )
  );
}

add_action('init', 'settings');

function my_get_template_part($template, $data = array()){
  extract($data);
  require locate_template($template . '.php');
}

function load_template_part($path){
  ob_start();
  get_template_part($path);
  $result = ob_get_contents();
  ob_end_clean();
  return $result;
}

function mergeQueryString($array = []){
  $result = '';
  if(count($_GET) || count($array)) $result .= '?';
  $array = array_merge($_GET, $array);
  foreach($array as $key => $item){
    if($item) $result .= $key.'='.$item.'&';
  }
  $result = substr_replace($result,'',-1);
  return $result;
}

function get_socials(){
  $socials = array();
  if (get_option('vkontakte')) {
      $socials['vkontakte'] = get_option('vkontakte');
  }
  if (get_option('facebook')) {
    $socials['facebook'] = get_option('facebook');
  }
  if (get_option('youtube')) {
    $socials['youtube'] = get_option('youtube');
  }
  if (get_option('instagram')) {
    $socials['instagram'] = get_option('instagram');
  }
  if (get_option('telegram')) {
      $socials['telegram'] = get_option('telegram');
  }
  if(get_option('whatsapp')) {
    $socials['whatsapp'] = get_option('whatsapp');
  }
  return $socials;
}

function get_phones(){
  return explode(',', get_option('phone'));
}


function split_half($string, $center = 0.1) {
  $length2 = strlen($string) * $center;
  $tmp = explode(' ', $string);
  $index = 0;
  $result = Array('', '');
  foreach($tmp as $word) {
      if(!$index && strlen($result[0]) > $length2) $index++;
      $result[$index] .= $word.' ';
  }
  return $result;
}

// woo

function woo_settings(){
  if (!is_admin() && WC() && WC()->session) {
    WC()->session->set_customer_session_cookie(true);
    // WC()->session->set('shipping', null);
    if (!WC()->session->get('shipping')) {
      WC()->session->set('shipping', array(
        'type' => 'courier',
      ));
    }
  }

  $get_post_type = get_post_type_object('product');
  $labels = $get_post_type->labels;
  $labels->name = 'Каталог товаров';
}
add_action('init', 'woo_settings');

function custom_pre_get_posts_query($q){
  if (is_shop() && $_GET['categories']) {
    $tax_query = (array) $q->get('tax_query');
    $categories = explode(',', $_GET['categories']);
    $tax_query[] = array(
      'taxonomy' => 'product_cat',
      'field' => 'slug',
      'terms' => $categories,
      'operator' => 'IN'
    );
    $q->set('tax_query', $tax_query);
  }
}
add_action('woocommerce_product_query', 'custom_pre_get_posts_query');

add_action('wp_enqueue_scripts', 'dequeue_woocommerce_cart_fragments', 11);
function dequeue_woocommerce_cart_fragments(){
    wp_dequeue_script('wc-cart-fragments');
}

function getFragments(){
  global $woocommerce, $woocommerce_errors;
    $result = array(
      'fragments' => array(),
      'redirect' => is_checkout() && sizeof($woocommerce->cart->cart_contents) == 0 ? esc_url(home_url('/')) : false
    );
    $result['fragments']['.cart__count'] = load_template_part('cart/count');
    $result['fragments']['.cart__list'] = load_template_part('cart/list');
    $result['fragments']['.cart__totals'] = load_template_part('cart/totals');
    return $result;
}
add_filter('woocommerce_add_to_cart_fragments', 'woocommerce_header_add_to_cart_fragment');

function woocommerce_header_add_to_cart_fragment($fragments){
    return getFragments()['fragments'];
}

add_action('wc_ajax_cart_clear', 'cart_clear');
function cart_clear($args){
    WC()->cart->empty_cart();
    exit(json_encode(getFragments()));
}
add_action('wc_ajax_cart_remove', 'cart_remove');
function cart_remove(){
    WC()->cart->remove_cart_item($_POST['key']);
    exit(json_encode(getFragments()));
}

add_action('wc_ajax_cart_qty', 'cart_qty');
function cart_qty(){
    WC()->cart->set_quantity($_POST['key'], $_POST['qty']);
    exit(json_encode(getFragments()));
}

add_action('wc_ajax_shipping_set', 'shipping_set');
function shipping_set(){
    $shipping = WC()->session->get('shipping');
    $shipping[$_POST['key']] = $_POST['value'];
    WC()->session->set('shipping', $shipping);
    $result = array(
      'data' => $shipping,
      'fragments' => array(
        '.checkout' => load_template_part('checkout/content')
      )
    );
    exit(json_encode($result));
}

add_action('wc_ajax_get_search_result', 'get_search_result');
function get_search_result(){
  $string = esc_attr($_GET['search']);

  $items_title = get_posts(array(
    'fields' => 'ids',
    'numberposts' => -1,
    'post_type' => 'product',
    's' => $string
  ));

  $items_sku = get_posts(array(
    'fields' => 'ids',
    'numberposts' => -1,
    'post_type' => 'product',
    'meta_query' => [
      [
        'key' => '_sku',
        'value' => $string,
        'compare' => 'LIKE'
      ]
    ]
  ));

  $items_unique = array_unique( array_merge( $items_title, $items_sku ) );

  $items = get_posts(array(
    'post_type' => 'product',
    'post__in' => $items_unique,
    'posts_per_page' => -1
  ));

  my_get_template_part('product/list', array(
    'items' => $items,
    'product_template' => 'product/item--search',
    'classes' => ['products--search'],
    'empty' => 'Нет результата поиска'
  ));
  die();
}

add_filter('woocommerce_enqueue_styles', '__return_empty_array');

function get_current_tags(){
    $post_type = get_post_type();
    $tags = get_tags();
    $link = get_post_type_archive_link($post_type);
    $result = $tags ? array(
    array(
      'text' => 'Все',
      'link' => $link,
      'active' => !get_queried_object()->term_id
    )
  ) : array();
    foreach ($tags as $tag) {
        $result[] = array(
          'text' => $tag->name,
          'link' => $tags_link.'?tag='.$tag->slug,
          'active' => get_queried_object()->term_id === $tag->term_id
        );
    }
    return $result;
}

add_filter('woocommerce_checkout_fields', 'checkout_fields', 9999);
function checkout_fields($fields){
    $shipping = WC()->session->get('shipping');
    unset($fields['billing']);
    unset($fields['order']);
    unset($fields['account']);
    unset($fields['shipping']);

    $fields['shipping']['name'] = array(
      'label' => 'Ваши ФИО',
      'label_hidden' => true,
      'placeholder' => 'Ваши ФИО',
      'required' => true,
      'priority' => 0,
      'value' => $shipping['name'],
      'attrs' => array('data-set-shipping="name"')
    );
    $fields['shipping']['phone'] = array(
      'type' => 'tel',
      'label_hidden' => true,
      'label' => 'Контактный телефон',
      'placeholder' => 'Контактный телефон',
      'required' => true,
      'priority' => 0,
      'value' => $shipping['phone'],
      'attrs' => array('data-maskit="+{7}(000) 000-00-00"', 'data-set-shipping="phone"')
    );
    $fields['shipping']['email'] = array(
      'type' => 'email',
      'label_hidden' => true,
      'label' => 'Контактный email',
      'placeholder' => 'Контактный email',
      'required' => true,
      'priority' => 0,
      'value' => $shipping['email'],
      'attrs' => array('data-set-shipping="email"')
    );
    $fields['shipping']['type'] = array(
      'type' => 'radio',
      'label_hidden' => true,
      'label' => 'Способ доставки',
      'required' => true,
      'priority' => 0,
      'value' => $shipping['type'],
      'attrs' => array(
        'data-set-shipping="type"',
        'data-update-checkout="'.get_permalink(get_page_by_path('checkout')).'"'
      ),
      'options' => array(
        array(
          'label' => 'Доставка по адресу',
          'value' => 'courier'
        ),
        array(
          'label' => 'Самовывоз',
          'value' => 'self'
        )
      )
    );
    if ($shipping['type'] == 'courier') {
      $fields['shipping']['city'] = array(
        'label' => 'Город',
        'label_hidden' => true,
        'placeholder' => 'Введите город',
        'value' => $shipping['city'] ? $shipping['city'] : '',
        'priority' => 0,
        'required' => true,
        'attrs' => array('data-set-shipping="'.($shipping['type'] == 'self' ? 'store' : 'address').'"')
      );
      $fields['shipping']['address'] = array(
        'label' => 'Адрес доставки',
        'label_hidden' => true,
        'placeholder' => 'Введите адрес',
        'value' => $shipping['address'] ? $shipping['address'] : '',
        'priority' => 0,
        'required' => true,
        'attrs' => array('data-set-shipping="'.($shipping['type'] == 'self' ? 'store' : 'address').'"')
      );
    }

    $fields['shipping']['payment'] = array(
      'label' => 'Способ оплаты',
      'type' => 'radio',
      'label_hidden' => true,
      'priority' => 0,
      'value' => $shipping['payment'] ? $shipping['payment'] : 'cash',
      'attrs' => array('data-set-shipping="payment"'),
      'options' => array(
        array(
          'label' => 'Оплата наличными',
          'value' => 'cash'
        ),
        array(
          'label' => 'Оплата картой',
          'value' => 'card'
        )
      )
    );

    $fields['shipping']['comment'] = array(
      'placeholder' => 'Комментарий',
      'label_hidden' => true,
      'type' => 'textarea',
      'priority' => 0,
      'value' => $shipping['comment'],
      'attrs' => array('data-set-shipping="comment"')
    );

    $fields['shipping']['policy'] = array(
      'type' => 'checkbox',
      'priority' => 0,
      'required' => true,
      'value' => 1,
      'text' => 'Даю согласие на обработку персональных данных',
    );
    return $fields;
}

function cart_empty_redirect_to_shop() {
  global $woocommerce, $woocommerce_errors;
  if ( is_cart() && sizeof($woocommerce->cart->cart_contents) == 0) {
    wp_safe_redirect(esc_url(home_url('/')));
    exit;
  }
}
add_action( 'template_redirect', 'cart_empty_redirect_to_shop' );

add_filter('woocommerce_currency_symbol', 'change_currency_symbol', 10, 2);

function change_currency_symbol($currency_symbol, $currency) {
  switch($currency) {
    case 'RUB':
      $currency_symbol = '₽';
      break;
  }
  return $currency_symbol;
}


function my_checkout(){
    $cart = WC()->cart;
    $checkout = WC()->checkout();
    $order_id = $checkout->create_order(array());
    $order = wc_get_order($order_id);

    $shipping = new WC_Order_Item_Shipping();
    $shipping->set_method_title($_POST['type'] === 'courier' ? 'Доставка по адресу' : 'Самовывоз');
    $shipping->set_method_id($_POST['type']);
    $order->add_item($shipping);

    $city = $_POST['city'];
    $address = $_POST['address'];
    if($_POST['type'] === 'self' && $address){
      $address = get_field('address', $address);
    }
    $order->set_shipping_city($city);
    $order->set_shipping_address_1($address);
    $order->set_billing_first_name($_POST['name']);
    $order->set_billing_phone($_POST['phone']);
    $order->set_billing_email($_POST['email']);

    if($_POST['payment']){
      $payment = $_POST['payment'];
      if($payment == 'cash') $payment = 'Наличными';
      if($payment == 'card') $payment = 'Картой';
      $order->add_order_note('Оплата: '.$payment);
    }

    if($_POST['comment']) $order->add_order_note("Комментарий:\n".$_POST['comment']);

    $order->calculate_totals();
    $order->payment_complete();
    $cart->empty_cart();
    exit(json_encode(array(
      'notification' => array(
        'message' => 'Заказ успешно создан',
        'type' => 'success',
        'delay' => 5000
      ),
      'order' => array(
        'id' => $order->get_id()
      ),
      'redirect' => esc_url(home_url('/order?id='.$order->get_id()))
    )));
}
add_action('wc_ajax_my_checkout', 'my_checkout');

function getCategories(){
  $args = array(
    'taxonomy'     => 'product_cat',
    'orderby'      => 'name',
    'show_count'   => 0,
    'pad_counts'   => 0,
    'hierarchical' => 1,
    'title_li'     => '',
    'hide_empty'   => 1,
  );
  $categories = get_categories($args);
  return $categories;
}

function getProductAttributes($product){
  $result = [];
  $attributes = $product->get_attributes();

  $sku = $product->get_sku();
  if($sku){
    $result['sku'] = array(
      'label' => 'Артикул',
      'value' => $sku
    );
  }

  $weight = $product->get_weight();
  if($weight){
    $result['weight'] = array(
      'label' => 'Вес',
      'value' => $weight.' кг'
    );
  }

  $length = $product->get_length();
  $width = $product->get_width();
  $height = $product->get_height();

  if($length && $width && $height) {
    $result['gabarite'] = array(
      'label' => 'Габариты упаковки',
      'value' => $length.'x'.$width.'x'.$height.' см ('.$length * $width * $height / pow(100, 3).' м3)'
    );
  }

  foreach($attributes as $attribute){
    $result[$attribute->get_name()] = array(
      'label' => wc_attribute_label($attribute->get_name()),
      'value' => $product->get_attribute($attribute->get_name())
    );
  }
  if($result['pa_model']){
    $result['pa_model']['mini'] = true;
  }
  if($result['pa_manufacturer']){
    $result['pa_manufacturer']['mini'] = true;
  }

  return $result;
}

add_filter( 'body_class','my_body_classes' );
function my_body_classes($classes) {
  if(is_home()){
    $classes[] = 'home';
  }
  return $classes;
}

function isAvailable($type){
  $settings = [
    'favorite' => true,
    'compare' => false
  ];
  return $settings[$type];
}

function getBrands(){
  $items = get_terms('pa_brand');
  return array_map(function($item){
    $fields = get_fields($item);
    return [
      'link' => get_permalink(wc_get_page_id('shop')).'?pa_brand='.$item->slug,
      'fields' => $fields,
      'name' => $item->name
    ];
  }, $items);
}

function getManufacturers(){
  $items = get_terms('pa_manufacturer');
  return array_map(function($item){
    $fields = get_fields($item);
    return [
      'link' => get_permalink(wc_get_page_id('shop')).'?pa_manufacturer='.$item->slug,
      'fields' => $fields,
      'name' => $item->name
    ];
  }, $items);
}

function getProductAlt($product){
  $result = $product->get_title();
  $category = get_the_terms($product->id, 'product_cat')[0];
  if($category){
    $result .= ' - '.$category->name;
  }
  $brand = wc_get_product_terms($product->id, 'pa_brand')[0]->name;
  if($brand){
    $result .= ' - '.$brand;
  }
  $model = wc_get_product_terms($product->id, 'pa_model')[0]->name;
  if($model){
    $result .= ' - '.$model;
  }
  return $result;
}