<?php

function gcr_create_posttype_services() {
	register_post_type('services', [
		'labels' => [
            'name'                => __('Services', 'gcr'),
            'singular_name'       => __('Service', 'gcr'),
            'menu_name'           => __('Services', 'gcr'),
            'parent_item_colon'   => __('Parent Service', 'gcr'),
            'all_items'           => __('All Services', 'gcr'),
            'view_item'           => __('View Service', 'gcr'),
            'add_new_item'        => __('Add New Service', 'gcr'),
            'add_new'             => __('Add New', 'gcr'),
            'edit_item'           => __('Edit Service', 'gcr'),
            'update_item'         => __('Update Service', 'gcr'),
            'search_items'        => __('Search Service', 'gcr'),
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
		'taxonomies' => [ 'services_category' ]
    ]);

    /* Register Custom Taxonomy */
    register_taxonomy('services_category', 'services', [
        'label' => __('Services Category', 'gcr'),
        'rewrite' => [ 'slug' => 'services_category' ],
    ]);
}
add_action('init', 'gcr_create_posttype_services'); // Add our work type
