<?php

require __DIR__.'/bulma-navwalker.php';

/**
 * Include primary navigation menu
 */
function gcr_nav_init() {
	register_nav_menus([
	    'main-menu' => 'Primary Menu',
    ]);
}
add_action('init', 'gcr_nav_init');
