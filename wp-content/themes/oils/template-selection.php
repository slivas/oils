<?php
/*
Template Name: tabs
*/
get_header(); ?>

<div class="tabs container">
    <?php
        $tabs_name = get_field('tab-name');
        $tab_1_name = get_field('name_tab_1');
        $tab_2_name = get_field('name_tab_2');
        $tab_1_content = get_field('content_tab_1');
        $tab_2_content = get_field('content_tab_2');
        $title_tab_1 = get_field('title_tab_1');
        $title_tab_2 = get_field('title_tab_2');
    ?>
    <aside class="tabs__aside">
        <span class="title medium"><?php echo $tabs_name?> <i class="fas fa-angle-right"></i></span>
        <ul>
            <li><a href="#tabs-1"><?php echo $tab_1_name?> <i class="fas fa-angle-right"></i></a></li>
            <li><a href="#tabs-2"><?php echo $tab_2_name?> <i class="fas fa-angle-right"></i></a></li>
        </ul>
    </aside>
    <div id="tabs-1" class="text">
        <span class="title underline"><?php echo $title_tab_1?></span>
        <?php echo $tab_1_content?>
    </div>

    <div id="tabs-2" class="text">
        <span class="title underline"><?php echo $title_tab_2?></span>
        <?php echo $tab_2_content?>
    </div>
</div>


<?php get_footer(); ?>
