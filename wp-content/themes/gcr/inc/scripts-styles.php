<?php

/**
 * Enqueue scripts and styles.
 */
function gcr_scripts() {
	wp_enqueue_style('gcr-style', get_stylesheet_uri());
	wp_enqueue_style('gcr-custom-style', get_template_directory_uri() . '/assets/css/theme.css');
	wp_enqueue_script('gcr-scripts', get_template_directory_uri() . '/assets/js/bundle.js', [], false, true);
}
add_action('wp_enqueue_scripts', 'gcr_scripts');
