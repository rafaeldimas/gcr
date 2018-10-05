<?php

/**
 * Add custom image sizes
 */

//  Custom Post Type Slider
add_image_size('slider-fullwidth', 1300, 500, false);
add_image_size('slider-squade', 500, 500, false);
add_image_size('slider-carousel', 250, 100, false);
$sliders = ['slider-fullwidth', 'slider-squade', 'slider-carousel'];

//  Custom Post Type Slider
// $services = [];

$customImageSizesNamed = compact('sliders'/*, 'services'*/);
$customImageSizes = call_user_func_array('array_merge', $customImageSizesNamed);

add_filter('intermediate_image_sizes', function ($image_sizes) use ($customImageSizes, $customImageSizesNamed) {
    $postId = isset($_POST['post_id']) ? $_POST['post_id'] : false;

    if ($postId) {
        if ('sliders' === get_post_type($postId))
            return $customImageSizesNamed['sliders'];

        // if ('services' === get_post_type($postId))
        //     return $customImageSizesNamed['services'];
    }

    return array_diff($image_sizes, $customImageSizes);
}, 999);
