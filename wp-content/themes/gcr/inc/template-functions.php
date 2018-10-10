<?php

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
