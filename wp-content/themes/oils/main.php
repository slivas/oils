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

    <section class="our-products container">
        <div class="title">Категории продуктов</div>
        <ul class="flex justify-between products-list">
            <li>
                <a href="">
                    <img src="" alt="">
                    <span class="text">Масла для легковых и лёгких коммерческих авто</span>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="" alt="">
                    <span class="text">Масла для грузовых автомобилей</span>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="" alt="">
                    <span class="text">Масла для сельскохозяйственной и садовой техники</span>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="" alt="">
                    <span class="text">Индустриальные и прочие смазочные материалы</span>
                </a>
            </li>
        </ul>
    </section>
<!--    <iframe src="http://www.opetoil.com.tr/fullmatch/Default.aspx?Lang=eng&isKioskMode=0" frameborder="0" width="100%"></iframe>-->

<?php get_footer(); ?>