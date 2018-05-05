			<div class="footer-content-block"></div>
		</main>
	</div>   <!--end wrapper-->
	<footer>
        <div class="container">
            <div class="flex justify-between align-center footer__nav-wrap">
                <a href="/" class="item logo flex align-center" title="">
                    <img src="<?php echo get_template_directory_uri(); ?>/img/logo.png" alt="ПРЕМИУМ ОИЛ ЛТД">
                </a>
                <nav class="footer-nav desktop">
                    <?php wp_nav_menu(array('menu' => 'menu', 'menu_class' => 'header__menu flex justify-between')); ?>
                </nav>
            </div>
            <div class="flex justify-center align-center">
                <p class="copyright">© 2018 Премиум Оил ЛТД. Все права защищены.</p>
            </div>
        </div>
	</footer>
    <div class="close-menu"></div>

	<?php wp_footer(); ?>

</body>
</html>