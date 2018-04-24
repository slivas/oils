<?php

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
    wp_enqueue_script('jq1-2', "https://code.jquery.com/jquery-migrate-1.2.1.min.js");
    wp_enqueue_script('ajax', "http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js");
    wp_enqueue_script('main', get_template_directory_uri() . "/js/main.js");
    wp_enqueue_script('masked', get_template_directory_uri() . "/js/masked.js");
    wp_enqueue_script('slick', get_template_directory_uri() . "/js/slick.min.js");
}
add_action('wp_enqueue_scripts', 'enqueue_scripts');

/*add menu*/
if (function_exists('add_theme_support')) {
    add_theme_support('menus');
}

if( function_exists('acf_add_options_page') ) {

    acf_add_options_page();

}
