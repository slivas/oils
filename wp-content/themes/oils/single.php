<?php get_header(); ?>

    <h1 class="title">Наши услуги <span><?php echo get_field('title')?></span></h1>

    <div class="container">
        <div class="text top">
            <?php echo get_field('serviceDesc')?>
        </div>
    </div>

    <?php while (have_rows('serviceInfo')) : the_row(); ?>
        <h3>
            <?php echo get_sub_field('infoTitle')?>
        </h3>
        <div class="container">
            <div class="text">
                <?php echo get_sub_field('serviceContent')?>
            </div>
        </div>
    <?php endwhile; ?>

    <?php if (have_rows('portfolio')): ?>
        <section class="portfolio services-portfolio">
            <p class="global-title">Галерея</p>
            <div class="portfolio__slider">
                <?php while (have_rows('portfolio')):
                    the_row();
                    $portfolioImg = get_sub_field('portfolioImage'); ?>
                    <div class="slide">
                        <img src="<?php echo $portfolioImg['url']; ?>" alt="<?php echo $portfolioImg['title']; ?>">
                    </div>
                <?php endwhile; ?>
            </div>
        </section>
    <?php endif; ?>

    <?php get_template_part('include/advantages'); ?>

    <div class="question-form work-process">
        <div class="container work-process-block">
            <p class="global-title small">Задать вопрос нашему менеджеру</p>
            <p>Менеджер АртБудИнвест готов ответить на все Ваши вопросы</p>
            <div class="phones">
                <a href="tel:+380667816444">(066) 781-64-44</a>
                <span>|</span>
                <a href="tel:+380975339181">(097) 533-91-81</a>
            </div>
            <?php
            echo do_shortcode('[contact-form-7 id="339" title="question"]');
            ?>
        </div>
    </div>

    <?php get_template_part('include/clients'); ?>


    <?php while (have_rows('serviceInfo')) : the_row(); ?>
        <div class="container service-text">
            <div class="jcf-scrollable">
                <?php echo get_field('serviceText');?>
            </div>
        </div>
    <?php endwhile; ?>

<?php get_footer(); ?>