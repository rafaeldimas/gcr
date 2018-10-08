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

function getNavbarButtonAndBrand() {
    $brand = '';
    if (has_custom_logo()) {
        list($imgSrc) = getCustomLogoAttr() ?: [];
        $homeUrl = home_url();

        $brand .= "<a class='navbar-item' href='{$homeUrl}'>";
        $brand .=      "<img class='brand-image' src='{$imgSrc}'/>";
        $brand .= '</a>';
    }

    $output = '';
    $output .= '<div class="navbar-brand">';
    $output .=      $brand;
    $output .=      '<button class="button navbar-burger" data-target="primary-menu">';
    $output .=          '<span></span>';
    $output .=          '<span></span>';
    $output .=          '<span></span>';
    $output .=      '</button>';
    $output .= '</div>';

    return $output;
}

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


function getNavbarMainMenu()
{
    $output = '';
    $output .= '<nav class="navbar" role="navigation" aria-label="main navigation">';
    $output .= getNavbarButtonAndBrand();
    $output .= getNavbarMainMenuItems();
    $output .= '</nav>';

    return $output;
}
