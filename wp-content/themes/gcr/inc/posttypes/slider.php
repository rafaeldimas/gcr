<?php

function gcr_create_posttype_sliders() {
    /* Register Custom PostType */
	register_post_type('sliders', [
		'labels' => [
            'name'                => __('Sliders', 'gcr'),
            'singular_name'       => __('Slider', 'gcr'),
            'menu_name'           => __('Sliders', 'gcr'),
            'parent_item_colon'   => __('Parent Slider', 'gcr'),
            'all_items'           => __('All Sliders', 'gcr'),
            'view_item'           => __('View Slider', 'gcr'),
            'add_new_item'        => __('Add New Slider', 'gcr'),
            'add_new'             => __('Add New', 'gcr'),
            'edit_item'           => __('Edit Slider', 'gcr'),
            'update_item'         => __('Update Slider', 'gcr'),
            'search_items'        => __('Search Slider', 'gcr'),
            'not_found'           => __('Not Found', 'gcr'),
            'not_found_in_trash'  => __('Not found in Trash', 'gcr'),
		],
		'public' => true,
		'hierarchical' => true,
		'supports' => [
			'title',
			'editor',
			'excerpt',
			'custom-fields',
			'thumbnail',
		],
		'taxonomies' => [ 'sliders_category' ]
    ]);

    /* Register Custom Taxonomy */
    register_taxonomy('sliders_category', 'sliders', [
        'label' => __('Slider Category', 'gcr'),
        'hierarchical' => true,
        'rewrite' => ['slug' => 'sliders_category'],
    ]);
}
add_action('init', 'gcr_create_posttype_sliders'); // Add our work type
