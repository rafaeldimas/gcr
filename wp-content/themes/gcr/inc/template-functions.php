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
function getBrandLink($class, $isNameComplete = false, $link = false)
{
    $brandResource = 'GCR Legalização';

    if($isNameComplete) {
        $brandResource .= ' Empresarial e Assessoria';
    }

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
function getNavbarEnd($items)
{
    $output = '';
    $output .= '<div class="navbar-end">';
    $output .= $items;
    $output .= '</div>';

    return $output;
}

/**
 * @return string
 */
function getNavbarEndItem($content)
{
    $output = '';
    $output .= '<div class="navbar-item">';
    $output .= $content;
    $output .= '</div>';

    return $output;
}

/**
 * @return string
 */
function getButtonSecundary($label, $url, $isStrong = false)
{
    $output = '';
    $output .= "<a class='button is-secundary' href='{$url}'>";
    $output .=      $isStrong ? '<strong>' : '';
    $output .=          $label;
    $output .=      $isStrong ? '</strong>' : '';
    $output .= '</a>';

    return $output;
}

/**
 * @return string
 */
function getLinkPrivateAreaForMenu()
{
    $pageId = getPageIdByTemplateName('private-area-login');

    if (!$pageId) return '';

    return getNavbarEnd(
        getNavbarEndItem(
            getButtonSecundary(
                'Área restrita',
                get_permalink($pageId),
                true
            )
        )
    );
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
    $output .= getLinkPrivateAreaForMenu();
    $output .= '</nav>';

    return $output;
}

/**
 * @param string $templateName
 * @return int|bool
 */
function getPageIdByTemplateName($templateName)
{
    $args = [
        'post_type' => 'page',
        'fields' => 'ids',
        'nopaging' => true,
        'meta_key' => '_wp_page_template',
        'meta_value' => "templates/{$templateName}.php",
    ];
    $pages = get_posts($args);
    return !empty($pages) ? $pages[0] : false;
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

/**
 * @return WP_Query
 */
function getUsefulLinks()
{
    return new WP_Query([ 'post_type' => 'useful_links' ]);
}

/**
 * @return WP_Query
 */
function getCurriculums()
{
    return new WP_Query([ 'post_type' => 'curriculums' ]);
}
