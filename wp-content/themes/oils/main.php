<?php
/*
Template Name: Главная
*/
get_header(); ?>
<?php if (have_rows('gallery')): ?>
    <section class="header-home-slider">
        <?php while (have_rows('gallery')):
            the_row();
            $m_img = get_sub_field('mainImage');
            $text = get_sub_field('mainText');
            ?>
            <div class="slide">
                <img src="<?php echo $m_img['url']; ?>" alt="<?php echo $m_img['title']; ?>">
            </div>
        <?php endwhile; ?>
    </section>
<?php endif;
                $args = array(
                    'taxonomy' => 'product_cat',
                    'orderby'    => 'count',
                    'order'      => 'DESC',
                    'hide_empty' => false,
                    'parent' => 0
                );

                $product_categories = get_terms( $args );?>
    <section class="our-products">
        <div class="container">
            <div class="title underline"><?php echo pll__('Product category'); ?></div>
            <ul class="flex justify-between products-list">
                <?php foreach ( $product_categories as $product_category ) :
                    //var_dump($product_category);
                    $thumbnail_id = get_woocommerce_term_meta( $product_category->term_id, 'thumbnail_id', true );
                    $image = wp_get_attachment_url( $thumbnail_id );?>
                <li class="item">
                    <a href="<?php echo get_term_link( $product_category );?>">
                        <img src="<?php echo $image;?>" alt="">
                        <span class="title medium"><?php echo $product_category->name;?></span>
                    </a>
                </li>
<?php endforeach;
wp_reset_query();?>

            </ul>
        </div>
    </section>
    <section class="selection">
        <div class="container flex justify-center">
            <a href="/selection" class="btn selection__btn">Подобрать масло<i class="fas fa-cog"></i></a>
        </div>
    </section>
<?php if (have_posts()):?>
    <section class="about">
        <div class="container">
            <?php while (have_posts()):
        the_post();?>
            <h1 class="title underline">Opet - лидер инноваций в сегменте смазочных материалов</h1>
            <?php the_content();
            endwhile;?>
        </div>
    </section>

<?php endif;
get_footer(); ?>