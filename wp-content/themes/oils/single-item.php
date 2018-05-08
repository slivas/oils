<?php get_header();
/*
    Template Name: single
*/
?>

    <div class="container">
        <div class="flex">
            <aside class="tabs__aside single__menu">
                <span class="title medium">Категории <i class="fas fa-angle-right"></i></span>
                <?php wp_nav_menu(array('Aside menu' => 'menu', 'menu_class' => 'aside__menu flex justify-between')); ?>
            </aside>
            <div class="product">
                <span class="title underline">FULLTECH 10W-60</span>
                <div class="flex product-wrapper">
                    <div class="img">
                        <img src="<?php echo get_template_directory_uri(); ?>/img/oil.png" alt="">
                    </div>
                    <div class="flex column align-center">
                        <select class="custom-select">
                            <option value="">Выберите объём</option>
                            <option value="1">1л</option>
                            <option value="2">4л</option>
                            <option value="3">10л</option>
                            <option value="4">200л</option>
                        </select>
                        <div class="btn">Добавить в корзину <i class="fas fa-shopping-cart"></i></div>
                        <p class="text-center">Для получения детальной информации, <br/><a href="" class="more">кликните по ссылке</a>.</p>
                    </div>
                </div>
                <div class="text">
                    <p>Если Вам не удается найти информацию, которую Вы ищете, или если Вам нужна дополнительная информация, пожалуйста, свяжитесь с нами.</p>
                    <a href="tel:+ +380734306034">+38(073)430-60-34</a>
                </div>
            </div>
        </div>
        <div class="flex justify-center">
            <span class="title medium">Похожие товары</span>
        </div>
        <ul class="products-other-list flex">
            <li class="item"><a href="">Oil</a></li>
            <li class="item"><a href="">Oil</a></li>
            <li class="item"><a href="">Oil</a></li>
            <li class="item"><a href="">Oil</a></li>
            <li class="item"><a href="">Oil</a></li>
            <li class="item"><a href="">Oil</a></li>
            <li class="item"><a href="">Oil</a></li>
            <li class="item"><a href="">Oil</a></li>
        </ul>

    </div>

<?php get_footer(); ?>