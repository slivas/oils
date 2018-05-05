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
<?php endif; ?>

    <section class="our-products">
        <div class="container">
            <div class="title underline">Категории продуктов</div>
            <ul class="flex justify-between products-list">
                <li class="item">
                    <a href="">
                        <img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt="">
                        <span class="title medium">Масла для легковых и лёгких коммерческих авто</span>
                    </a>
                </li>
                <li class="item">
                    <a href="">
                        <img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt="">
                        <span class="title medium">Масла для грузовых автомобилей</span>
                    </a>
                </li>
                <li class="item">
                    <a href="">
                        <img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt="">
                        <span class="title medium">Масла для сельскохозяйственной и садовой техники</span>
                    </a>
                </li>
                <li class="item">
                    <a href="">
                        <img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt="">
                        <span class="title medium">Индустриальные и прочие смазочные материалы</span>
                    </a>
                </li>
            </ul>
        </div>
    </section>
    <section class="selection">
        <div class="container flex justify-center">
            <a href="<?php echo get_template_directory_uri(); ?>/selection" class="btn selection__btn">Подобрать масло<i class="fas fa-cog"></i></a>
        </div>
    </section>
    <section class="about">
        <div class="container">
            <h1 class="title underline">Opet - лидер инноваций в сегменте смазочных материалов</h1>
            <p>Одна из крупнейших компаний-дистрибьюторов топлива в Турции - OPET - делает шаги по дальнейшему развитию сегмента смазочных материалов, создав новую серию масел "Full Series".</p>
            <p>Получив многочисленные награды за рубежом и внутри страны за свою канистру особого дизайна, Моторные Масла серии Full Series соответствуют всем требованиям автомобилей с высокими эксплуатационными характеристиками, выпускаемых современной автомобильной промышленностью по новейшим разработкам. В соответствии с этим моторные масла Full Series, выпускаемых под брендом OPET, одобренные производителями автомобилей, такими как Mercedes-Benz, МАН, ВОЛЬВО и Форд.</p>
            <p>Действуя по принципу «постоянного развития и перемен», OPET создает продукты, отвечающие ожиданиям рынка для применения в любой сфере, где требуется использование смазочных материалов. Продемонстрировано сферы применения этих продуктов и каталог, где показано уровне эксплуатационных показателей этих продуктов при их использовании.</p>
        </div>
    </section>

<?php get_footer(); ?>