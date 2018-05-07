<?php get_header();
/*
    Template Name: subcategory
*/
?>

    <div class="container">
        <span class="title underline">Название подкатегории</span>
        <div class="tabs flex">
            <aside class="tabs__aside">
                <span class="title medium">Категории <i class="fas fa-angle-right"></i></span>
                <ul>
                    <li><a href="#tabs-1"><span>Моторные масла</span> <i class="fas fa-angle-right"></i></a></li>
                    <li><a href="#tabs-2"><span>Трансмиссионные масла и Масла для автоматических трансмиссий</span> <i class="fas fa-angle-right"></i></a></li>
                    <li><a href="#tabs-3"><span>Тормозные жидкости</span> <i class="fas fa-angle-right"></i></a></li>
                    <li><a href="#tabs-4"><span>Антифризы</span> <i class="fas fa-angle-right"></i></a></li>
                </ul>
            </aside>
            <div id="tabs-1" class="items-wrapper">
                <a class="item" href="">
                    <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt=""></div>
                    <div class="text flex justify-center align-center">FULLTECH 10W-60</div>
                </a>
                <a class="item" href="">
                    <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt=""></div>
                    <div class="text flex justify-center align-center">FULLTECH 10W-60</div>
                </a>
                <a class="item" href="">
                    <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt=""></div>
                    <div class="text flex justify-center align-center">FULLTECH 10W-60</div>
                </a>
                <a class="item" href="">
                    <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt=""></div>
                    <div class="text flex justify-center align-center">FULLTECH 10W-60</div>
                </a>
                <a class="item" href="">
                    <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt=""></div>
                    <div class="text flex justify-center align-center">FULLTECH 10W-60</div>
                </a>
            </div>
        </div>
    </div>

<?php get_footer(); ?>