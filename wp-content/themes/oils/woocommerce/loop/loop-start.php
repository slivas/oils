<?php
/**
 * Product Loop Start
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/loop/loop-start.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     3.3.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
?>
<span class="title underline"><?php echo pll__('Which product is right for you?');?></span>

<div class="tabs container">
<?php $args = array(
    'taxonomy' => 'product_cat',
    'orderby'    => 'count',
    'order'      => 'DESC',
    'hide_empty' => false,
    'parent' => 0
);

$product_categories = get_terms( $args );?>
    <aside class="tabs__aside">
        <span class="title medium"><?php echo pll__('Categories');?> <i class="fas fa-angle-right"></i></span>
        <ul>
<?php foreach ( $product_categories as $product_category ) :?>
            <li><a href="#tabs-<?php echo $product_category->term_id;?>">
                    <span><?php echo $product_category->name;?></span>
                    <i class="fas fa-angle-right"></i></a>
            </li>
            <?php endforeach;?>
        </ul>
    </aside>

<!--<ul class="products columns-<?php echo esc_attr( wc_get_loop_prop( 'columns' ) ); ?>">-->
