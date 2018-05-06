<?php
/*
Template Name: contacts
*/
get_header(); ?>


<?php
    $company_name = get_field('company_name');
    $territory = get_field('territory');
    $main_address = get_field('main_address');
    $actual_address = get_field('actual_address');
    $phone = get_field('phone');
    $email = get_field('email');
    $contact = get_field('contact');
?>
<div class="container">
    <span class="title underline">Контакты</span>
    <ul class="flex column align-center contacts__header">
        <li class="title medium"><?php echo $company_name ?></li>
        <li><?php echo $territory ?></li>
    </ul>
    <div class="flex contacts">
        <div class="item">
            <ul class="flex column contacts__list">
                <li><b>Главный офис: </b><?php echo $main_address ?></li>
                <li><b>Фактический адрес: </b><?php echo $actual_address ?></li>
                <li>
                    <b>Телефон: </b><a href="tel:<?php  echo $phone ?>"><?php echo $phone ?></a>
                </li>
                <li>
                    <b>Email: </b><a href="mailto:<?php  echo $email ?>"><?php echo $email ?></a>
                </li>
                <li><b>Контактное лицо: </b><?php echo $contact ?></li>
            </ul>
        </div>
        <div class="item map"></div>
    </div>
</div>


<?php get_footer(); ?>