<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=<?php bloginfo('charset'); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title><?php wp_title('«', true, 'right'); ?></title>
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>"/>
    <link rel="icon" href="<?php echo get_template_directory_uri(); ?>/favicon.png" type="image/x-icon">

    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>

<div class="wrapper">
    <header>
        <div class="header-top">
            <div class="container flex justify-between align-center">
                <a href="/" class="item logo flex align-center" title="ПРЕМИУМ ОИЛ ЛТД">
                    <img src="<?php echo get_template_directory_uri(); ?>/img/logo.png" alt="ПРЕМИУМ ОИЛ ЛТД">
                </a>
                <div class="item item-right flex align-center">
                    <ul class="header__contacts-list flex desktop">
                        <li class="item"><a href="tel:+380734306034"><i class="fas fa-mobile-alt"></i> +38(073)430-60-34</a>
                        </li>
                        <li class="item"><a href="mailto:ltd.premiumoil@gmail.com"><i class="far fa-envelope"></i>
                                ltd.premiumoil@gmail.com</a></li>
                    </ul>
                    <?php
                    $languages = pll_the_languages(array(
                        'raw' => 1,
                        'show_flags'=>0,
                        'show_names'=>1,
                        'hide_current'=>1));
                    foreach ($languages as $lang) :?>
                    <a href="<?php echo $lang['url'];?>" class="language btn desktop"><?php echo $lang['name'];?></a>
                    <?php endforeach;
                    $count = WC()->cart->get_cart_contents_count(); ?>

                    <div class="cart-wrapper">
                        <a class="header__cart" href="/cart/">
                            <i class="fas fa-shopping-cart"></i>
                        </a>
                        <span class="cart__sum"><?php echo $count;?></span>
                    </div>
                    <div class="nav-icon mobile">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
        <nav class="header-nav">
            <div class="container menu-container">
                <?php wp_nav_menu(array('menu' => 'menu', 'menu_class' => 'header__menu flex justify-between')); ?>
            </div>
            <ul class="header__contacts-list flex column mobile">
                <li class="item"><a href="tel:+380734306034"><i class="fas fa-mobile-alt"></i> +38(073)430-60-34</a>
                </li>
                <li class="item"><a href="mailto:ltd.premiumoil@gmail.com"><i class="far fa-envelope"></i>
                        ltd.premiumoil@gmail.com</a></li>
            </ul>
            <a href="" class="language btn mobile"><?php echo pll_current_language(); ?></a>
        </nav>
    </header>

    <main class="main">