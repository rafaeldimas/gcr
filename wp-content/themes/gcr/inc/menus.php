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
