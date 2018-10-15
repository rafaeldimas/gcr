<?php

/**
 * @param string $slug
 * @param string $name
 * @param array $attr
 */
function get_template_part_with_attr($slug, $name = null, $attr = []) {
    do_action("get_template_part_{$slug}", $slug, $name);

	$templates = array();
	$name = (string) $name;
	if ('' !== $name)
		$templates[] = "{$slug}-{$name}.php";

	$templates[] = "{$slug}.php";

    if (!empty($attr)) {
        extract($attr, EXTR_SKIP);
    }

	require locate_template($templates);
}

/**
 * @return WP_Query
 */
function getSlidersByType($type) {
    return new WP_Query([ 'sliders_category' => $type ]);
}

/**
 * @return string
 */
function getCustomLogoAttr() {
    $custom_logo_id = get_theme_mod('custom_logo');
    $image = wp_get_attachment_image_src($custom_logo_id , 'full');
    return $image;
}

/**
 * @param string $class
 * @param false|string $link
 * @return string
 */
function getBrandLink($class, $link = false)
{
    $brandResource = 'GCR';
    if (has_custom_logo()) {
        list($imgSrc) = getCustomLogoAttr() ?: [];
        $brandResource = "<img class='brand-image' src='{$imgSrc}'/>";
    }

    $homeUrl = $link ?: home_url();

    $brand = '';
    $brand .= "<a class='{$class}' href='{$homeUrl}'>";
    $brand .= $brandResource;
    $brand .= '</a>';
    return $brand;
}

/**
 * @return string
 */
function getNavbarButtonAndBrand() {
    $output = '';
    $output .= '<div class="navbar-brand">';
    $output .=      getBrandLink('navbar-item');
    $output .=      '<button class="button navbar-burger" data-target="primary-menu">';
    $output .=          '<span></span>';
    $output .=          '<span></span>';
    $output .=          '<span></span>';
    $output .=      '</button>';
    $output .= '</div>';

    return $output;
}

/**
 * @return string
 */
function getNavbarMainMenuItems() {
    ob_start();
    wp_nav_menu([
        'theme_location'    => 'main-menu',
        'depth'             => 2,
        'container'         => false,
        // 'items_wrap'     => 'div',
        'menu_class'        => 'navbar-menu',
        'menu_id'           => 'primary-menu',
        'after'             => "</div>",
        'walker'            => new Navwalker()
    ]);
    return ob_get_clean();
}

/**
 * @return string
 */
function getNavbarMainMenu()
{
    $output = '';
    $output .= '<nav class="navbar container" role="navigation" aria-label="main navigation">';
    $output .= getNavbarButtonAndBrand();
    $output .= getNavbarMainMenuItems();
    $output .= '</nav>';

    return $output;
}

/**
 * @return WP_Post[]
 */
function getLatestPosts($numberposts = 10, $posttype = 'post')
{
    return wp_get_recent_posts([
        'numberposts' => $numberposts,
        'post_type' => $posttype,
    ], false);
}

/**
 * @return WP_Query
 */
function getServices()
{
    return new WP_Query([ 'post_type' => 'services' ]);
}
