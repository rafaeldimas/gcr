<?php

function custom_excerpt_handle($text = '') {
    $raw_excerpt = $text;
    $text = strip_shortcodes($text);
    $text = apply_filters('the_content', $text);
    $text = str_replace(']]>', ']]&gt;', $text);
    $excerpt_length = apply_filters('excerpt_length', 55);
    $excerpt_more = apply_filters('excerpt_more', ' ' . '[...]');
    $text = wp_trim_words($text, $excerpt_length, $excerpt_more);
    return apply_filters('wp_trim_excerpt', $text, $raw_excerpt);
}
add_filter('custom_excerpt', 'custom_excerpt_handle');
