$(document).ready(function(){

    $("input[name='phone']").mask("+38(999)999-99-99");//Проверка телефона

    if($(window).width() > 479) {
        $('.header-home-slider').slick({
            arrows: true,
            dots: true,
            nextArrow: '<i class="slick-arrow fas fa-angle-left"></i>',
            prevArrow: '<i class="slick-arrow fas fa-angle-right"></i>'
        });
    }

    $('.nav-icon').click(function(){
        $(this).toggleClass('open');
        $('.header-nav').toggleClass('open');
        $('.close-menu').toggleClass('open');
        $('body').toggleClass('hidden');
    });
    $('.close-menu').click(function () {
        $('body').removeClass('hidden');
        $(this).removeClass('open');
        $('.header-nav, .nav-icon').toggleClass('open');
    });

    $( ".page-template-template-selection .tabs" ).tabs();

    // $('.woocommerce-message').fadeTo(7000,1).fadeOut(2000);

});