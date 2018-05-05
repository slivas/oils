<?php
/*
Template Name: page
*/
get_header(); ?>

<div class="container text">
    <?php while ( have_posts() ) : the_post(); ?>
        <?php the_content(); ?>
    <?php endwhile; // end of the loop. ?>

</div>



<?php get_footer(); ?>