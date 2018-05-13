<?php
function setup()
{
    add_theme_support('woocommerce');
    add_theme_support('title-tag');

    add_theme_support('post-thumbnails');

    /*add_image_size('Menu', 280, 300, true);
    add_image_size('about', 570, 660, false);
    add_image_size('small_cart', 50, 50, false);*/

    register_nav_menus(array(
        'main-menu' => 'Main',
        'footer_menu' => 'Footer',

    ));
}

add_action('after_setup_theme', 'setup');


function widgets_init()
{
    register_sidebar(array(
        'name' => 'Sidebar',
        'id' => 'sidebar-1',
        'before_widget' => '<aside class="tabs__aside"><span class="title medium">Categories <i class="fas fa-angle-right"></i></span><ul>',
        'after_widget' => '<ul></aside>',
        'before_title' => '<li>',
        'after_title' => '<i class="fas fa-angle-right"></i></a></li>',
    ));


}

add_action('widgets_init', 'widgets_init');

function enqueue_styles() {
    wp_enqueue_style('reset', get_template_directory_uri() . "/css/reset.css");
    wp_enqueue_style('style', get_template_directory_uri() . "/style.css");
    wp_enqueue_style('slick', get_template_directory_uri() . "/css/slick.css");
    wp_register_style('font-style', 'https://fonts.googleapis.com/css?family=Open+Sans:300,400,700');
    wp_enqueue_style( 'font-style');
    wp_register_style('font-awesome', 'https://use.fontawesome.com/releases/v5.0.10/css/all.css');
    wp_enqueue_style( 'font-awesome');
}
add_action('wp_enqueue_scripts', 'enqueue_styles');

function enqueue_scripts () {
    wp_register_script( 'jquery', 'http://code.jquery.com/jquery-2.0.2.min.js');
//    wp_enqueue_script('jq1-2', "https://code.jquery.com/jquery-migrate-1.2.1.min.js");
    wp_enqueue_script('ajax', "http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js");

    wp_enqueue_script('jqueryui',"https://code.jquery.com/ui/1.12.1/jquery-ui.js");

    wp_enqueue_script('main', get_template_directory_uri() . "/js/main.js");
    wp_enqueue_script('masked', get_template_directory_uri() . "/js/masked.js");
    wp_enqueue_script('slick', get_template_directory_uri() . "/js/slick.min.js");
}
add_action('wp_enqueue_scripts', 'enqueue_scripts');

/*add menu*/
/*
if (function_exists('add_theme_support')) {
    add_theme_support('menus');
}*/

function my_acf_init()
{

    acf_update_setting('google_api_key', 'AIzaSyAyPDxPiOp8rBprU5B_hdobbip3ps5KuOM');
}

add_action('acf/init', 'my_acf_init');

if( function_exists('acf_add_options_page') ) {

    acf_add_options_page();

}
/*Убираем количество товаров возле заголовка категории*/
add_filter( 'woocommerce_subcategory_count_html', 'woo_remove_category_products_count' );

function woo_remove_category_products_count() {
    return;
}

add_action('woocommerce_before_subcategory', 'setTempleteCategory');
function setTempleteCategory($category) {
    //var_dump($category);
    $thumbnail_id = get_woocommerce_term_meta( $category->term_id, 'thumbnail_id', true );
    $image = wp_get_attachment_url( $thumbnail_id );
    $term_link = get_term_link($category->term_id, 'product_cat');?>

        <a class="item" href="<?php echo $term_link;?>">
            <div class="img"><img src="<?php echo $image;?>" alt=""></div>
            <div class="text flex justify-center align-center"><?php echo $category->name?></div>
        </a>

<?php }

add_action('woocommerce_before_shop_loop_item', 'setTempleteProducts');
function setTempleteProducts() {
    //var_dump($category);
    //$thumbnail_id = get_woocommerce_term_meta( $category->term_id, 'thumbnail_id', true );
   // $image = wp_get_attachment_url( $thumbnail_id );
    //$term_link = get_term_link($category->term_id, 'product_cat');

    $thumb_id = get_post_thumbnail_id();
    $thumb_url = wp_get_attachment_image_src($thumb_id,'thumbnail-size', true);

    ?>

    <a class="item" href="<?php echo get_the_permalink();?>">
        <div class="img"><img src="<?php echo $thumb_url[0];?>" alt=""></div>
        <div class="text flex justify-center align-center"><?php echo get_the_title();?></div>
    </a>

<?php }
/*
add_action('woocommerce_single_product_summary', 'setTempleteSingleProducts');
function setTempleteSingleProducts() {
    $thumb_id_p = get_post_thumbnail_id();
    $thumb_url_p = wp_get_attachment_image_src($thumb_id_p,'thumbnail-size', true);?>
<span class="title underline"><?php echo get_the_title();?></span>
                <div class="flex product-wrapper">
                    <div class="img">
                        <img src="<?php echo $thumb_url_p[0];?>" alt="">
                    </div>
                    <div class="flex column align-center">
                        <select class="custom-select">
                            <option value="">Выберите объём</option>
                            <option value="1">1л</option>
                            <option value="2">4л</option>
                            <option value="3">10л</option>
                            <option value="4">200л</option>
                        </select>
                        <div class="btn">Добавить в корзину <i class="fas fa-shopping-cart"></i></div>
                        <p class="text-center">Для получения детальной информации, <br/><a href="" class="more">кликните по ссылке</a>.</p>
                    </div>
                </div>
<?php }
*/
