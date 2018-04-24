<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=<?php bloginfo('charset'); ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <title><?php wp_title('«', true, 'right'); ?></title>
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
        <link rel="icon" href="<?php echo get_template_directory_uri(); ?>/favicon.png" type="image/x-icon">

        <?php wp_head(); ?>
    </head>
    <body <?php body_class(); ?>>

        <div class="wrapper">
            <header>
                <div class="header-top">
                    <div class="container flex justify-between align-center">
                        <a href="/" class="item logo flex align-center" title="ПРЕМИУМ ОИЛ ЛТД">
                            <img src="<?php echo get_template_directory_uri(); ?>/img/logo.png" alt="">ПРЕМИУМ ОИЛ ЛТД
                        </a>
                        <div class="item flex align-center">
                            <ul class="header__contacts-list flex column">
                                <li class="item"><a href="tel:+380734306034"><i class="fas fa-mobile-alt"></i> +38(073)430-60-34</a></li>
                                <li class="item"><a href="mailto:ltd.premiumoil@gmail.com"><i class="far fa-envelope"></i> ltd.premiumoil@gmail.com</a></li>
                            </ul>
                            <div class="cart">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <nav class="header-nav">
                    <ul class="container flex justify-between">
                        <li><a href="">item</a></li>
                        <li><a href="">item</a></li>
                        <li><a href="">item</a></li>
                        <li><a href="">item</a></li>
                        <li><a href="">item</a></li>
                    </ul>
                </nav>
            </header>

            <main class="main">