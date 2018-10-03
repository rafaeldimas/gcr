<?php

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

/*
 * Enable support for define custom logo in theme
 */
add_theme_support('custom-logo', [
    'height' => '100px',
    'width' => '300px',
]);
