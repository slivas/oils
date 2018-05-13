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
        <?php $mapia = get_field('mapia');
        if (!empty($mapia)):?>
        <div class="item map" id="map"></div>

        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAyPDxPiOp8rBprU5B_hdobbip3ps5KuOM"></script>
        <script>
            function initMap() {
                var myLatLng = {lat: <?php echo $mapia['lat'];?>, lng: <?php echo $mapia['lng'];?>};
                var myLatLngCenter = {lat: <?php echo $mapia['lat'];?>, lng: <?php echo $mapia['lng'];?>};
                if (document.documentElement.clientWidth <= '768') {
                    myLatLngCenter = myLatLng;
                }
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 17,
                    center: myLatLngCenter,
                    scrollwheel: false,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                });

                var marker = new google.maps.Marker({
                    animation: google.maps.Animation.DROP,
                    position: myLatLng,
                    map: map,
                    title: '',
                    draggable: false,
                    icon: {
                        path: 'M13.7,5c-0.1-0.3-0.2-0.6-0.3-0.8C12,1.1,9.2,0,6.9,0C3.8,0,0.5,2,0,6.2v0.9			c0,0,0,0.4,0,0.5c0.3,2,1.8,4.1,3,6.1C4.4,15.8,5.7,17.9,7,20c0.8-1.4,1.6-2.8,2.4-4.1c0.2-0.4,0.5-0.8,0.7-1.2			c0.1-0.2,0.4-0.5,0.5-0.7c1.3-2.3,3.3-4.6,3.3-6.9V6.2C14,5.9,13.7,5,13.7,5z M7,9.3c-0.9,0-1.9-0.4-2.4-1.7C4.5,7.4,4.5,7,4.5,7			V6.4c0-1.6,1.3-2.3,2.5-2.3c1.4,0,2.6,1.1,2.6,2.6C9.6,8.1,8.4,9.3,7,9.3z',
                        fillColor: "#004983",
                        strokeColor: "#004983",
                        fillOpacity: 1,
                        strokeWeight: 1,
                        scale: 1.7,
                        size: new google.maps.Size(0, 0),
                        origin: new google.maps.Point(0, 0),
                        anchor: new google.maps.Point(12, 13),
                        scaledSize: new google.maps.Size(0, 0)
                    }
                });

            }

            initMap();
        </script>
        <?php endif;?>
    </div>
</div>


<?php get_footer(); ?>