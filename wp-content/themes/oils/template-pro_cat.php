<?php
/*
  * Template name: Категории товаров
  */
get_header(); ?>

    <span class="title underline">КАКОЙ ПРОДУКТ ВАМ ПОДХОДИТ?</span>

    <div class="tabs container">

        <aside class="tabs__aside">
            <span class="title medium">Категории <i class="fas fa-angle-right"></i></span>
            <ul>
                <li><a href="#tabs-1"><span>Масла для легковых и лёгких коммерческих авто</span> <i class="fas fa-angle-right"></i></a></li>
                <li><a href="#tabs-2"><span>Масла для грузовых автомобилей</span> <i class="fas fa-angle-right"></i></a></li>
                <li><a href="#tabs-3"><span>Масла для легковых и лёгких коммерческих авто</span> <i class="fas fa-angle-right"></i></a></li>
                <li><a href="#tabs-4"><span>Индустриальные и прочие смазочные материалы</span> <i class="fas fa-angle-right"></i></a></li>
            </ul>
        </aside>
        <div id="tabs-1" class="items-wrapper">
            <a class="item" href="/subcategory">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/drop.png" alt=""></div>
                <div class="text flex justify-center align-center">Моторные масла</div>
            </a>
            <a class="item" href="">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/drop.png" alt=""></div>
                <div class="text flex justify-center align-center">Трансмиссионные масла и Масла для автоматических трансмиссий</div>
            </a>
            <a class="item" href="">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/drop.png" alt=""></div>
                <div class="text flex justify-center align-center">Моторные масла</div>
            </a>
            <a class="item" href="">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/drop.png" alt=""></div>
                <div class="text flex justify-center align-center">Моторные масла</div>
            </a>
            <a class="item" href="">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/drop.png" alt=""></div>
                <div class="text flex justify-center align-center">Моторные масла</div>
            </a>
        </div>
        <div id="tabs-2" class="items-wrapper">

        </div>
        <div id="tabs-3" class="items-wrapper">

        </div>
        <div id="tabs-4" class="items-wrapper">

        </div>
    </div>

<?php get_footer(); ?>