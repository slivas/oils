<?php get_header(); ?>

<div class="container">
    <span class="title underline"><?php echo the_title();?></span>
    <div class="tabs">
        <aside class="tabs__aside">
            <span class="title medium">Категории <i class="fas fa-angle-right"></i></span>
            <ul>
                <li><a href="#tabs-1"><span></span> <i class="fas fa-angle-right"></i></a></li>
                <li><a href="#tabs-2"><span></span> <i class="fas fa-angle-right"></i></a></li>
                <li><a href="#tabs-3"><span></span> <i class="fas fa-angle-right"></i></a></li>
                <li><a href="#tabs-4"><span></span> <i class="fas fa-angle-right"></i></a></li>
            </ul>
        </aside>
        <div id="tabs-1" class="items-wrapper">
            <a class="item" href="">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.jpg" alt=""></div>
                <div class="text flex justify-center align-center">Моторные масла</div>
            </a>
            <a class="item" href="">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.jpg" alt=""></div>
                <div class="text flex justify-center align-center">Трансмиссионные масла и Масла для автоматических трансмиссий</div>
            </a>
            <a class="item" href="">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.jpg" alt=""></div>
                <div class="text flex justify-center align-center">Моторные масла</div>
            </a>
            <a class="item" href="">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.jpg" alt=""></div>
                <div class="text flex justify-center align-center">Моторные масла</div>
            </a>
            <a class="item" href="">
                <div class="img"><img src="<?php echo get_template_directory_uri(); ?>/img/oil.jpg" alt=""></div>
                <div class="text flex justify-center align-center">Моторные масла</div>
            </a>
        </div>
    </div>
</div>

<?php get_footer(); ?>