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
        'before_widget' => '<div class="sidebar-menu">',
        'after_widget' => '</div>',
        'before_title' => '<p class="h4">',
        'after_title' => '</p>',
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

if( function_exists('acf_add_options_page') ) {

    acf_add_options_page();

}
/*Убираем количество товаров возле заголовка категории*/
add_filter( 'woocommerce_subcategory_count_html', 'woo_remove_category_products_count' );

function woo_remove_category_products_count() {
    return;
}
