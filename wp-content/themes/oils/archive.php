<?php get_header(); ?>
    <h1 class="title">Наши <span><?php echo the_archive_title( '', false ); ?></span></h1>
    <div class="works__menu"></div>
    <section class="container">
        <div class="categories-wrapper">

            <?php
            while (have_posts()) {
                the_post();
                ?>
                <div class="item">
                    <a href="<?php echo get_permalink(); ?>">
                        <div class="img">
                            <?php the_post_thumbnail()?>
                        </div>
                        <div class="category-name"><span><?php the_title(); ?></span></div>
                    </a>
                </div>
            <?php
            }
            wp_reset_postdata();
            ?>
        </div>
    </section>
<?php get_footer(); ?>