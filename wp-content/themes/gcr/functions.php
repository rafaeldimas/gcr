<?php
/**
 * Functions and definitions
 *
 */

/*
 * Let WordPress manage the document title.
 */
add_theme_support('title-tag');

/*
 * Enable support for Post Thumbnails on posts and pages.
 */
add_theme_support('post-thumbnails');

/*
 * Switch default core markup for search form, comment form, and comments
 * to output valid HTML5.
 */
add_theme_support('html5', [
	'search-form',
	'comment-form',
	'comment-list',
	'gallery',
	'caption',
]);

/**
 * Include primary navigation menu
 */
function gcr_nav_init() {
	register_nav_menus([
	    'menu-1' => 'Primary Menu',
    ]);
}
add_action('init', 'gcr_nav_init');

/**
 * Enqueue scripts and styles.
 */
function gcr_scripts() {
	wp_enqueue_style('gcr-style', get_stylesheet_uri());
	wp_enqueue_style('gcr-custom-style', get_template_directory_uri() . '/assets/css/theme.css');
	wp_enqueue_script('gcr-scripts', get_template_directory_uri() . '/assets/js/bundle.js', [], false, true);
}
add_action('wp_enqueue_scripts', 'gcr_scripts');

require_once __DIR__.'/inc/posttypes/all.php';

require_once __DIR__.'/inc/template-functions.php';
