<?php
/*
Template Name: Главная
*/
get_header(); ?>
    <?php if (have_rows('gallery')): ?>
        <div class="header-home-slider">
            <?php while (have_rows('gallery')):
                the_row();
                $m_img = get_sub_field('mainImage');
                $text = get_sub_field('mainText');
                ?>
                <div class="slide">
                    <img src="<?php echo $m_img['url']; ?>" alt="<?php echo $m_img['title']; ?>">
                </div>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>


<?php get_footer(); ?>