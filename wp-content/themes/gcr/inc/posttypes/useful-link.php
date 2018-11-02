<?php

function gcr_create_posttype_useful_links() {
	register_post_type('useful_links', [
		'labels' => [
            'name'                => __('Useful links', 'gcr'),
            'singular_name'       => __('Useful Link', 'gcr'),
            'menu_name'           => __('Useful links', 'gcr'),
            'parent_item_colon'   => __('Parent Useful Link', 'gcr'),
            'all_items'           => __('All Useful links', 'gcr'),
            'view_item'           => __('View Useful Link', 'gcr'),
            'add_new_item'        => __('Add New Useful Link', 'gcr'),
            'add_new'             => __('Add New', 'gcr'),
            'edit_item'           => __('Edit Useful Link', 'gcr'),
            'update_item'         => __('Update Useful Link', 'gcr'),
            'search_items'        => __('Search Useful Link', 'gcr'),
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
		'taxonomies' => [ 'useful_links_category' ]
    ]);

    /* Register Custom Taxonomy */
    register_taxonomy('useful_links_category', 'useful_links', [
        'label' => __('Useful Links Category', 'gcr'),
        'rewrite' => [ 'slug' => 'useful_links_category' ],
    ]);
}
add_action('init', 'gcr_create_posttype_useful_links'); // Add our work type
