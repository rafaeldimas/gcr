<?php

/**
 * Include primary navigation menu
 */
function gcr_nav_init() {
	register_nav_menus([
	    'menu-1' => 'Primary Menu',
    ]);
}
add_action('init', 'gcr_nav_init');

function add_class_column_in_menu($classes, $item) {
    $classes[] = 'column';
    return $classes;
}
add_filter('nav_menu_css_class' , 'add_class_column_in_menu', 10, 2);
