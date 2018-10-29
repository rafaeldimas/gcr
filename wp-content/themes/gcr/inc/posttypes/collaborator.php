<?php

function gcr_create_posttype_collaborators() {
	register_post_type('collaborators', [
		'labels' => [
            'name'                => __('Collaborators', 'gcr'),
            'singular_name'       => __('Collaborator', 'gcr'),
            'menu_name'           => __('Collaborators', 'gcr'),
            'parent_item_colon'   => __('Parent Collaborator', 'gcr'),
            'all_items'           => __('All Collaborators', 'gcr'),
            'view_item'           => __('View Collaborator', 'gcr'),
            'add_new_item'        => __('Add New Collaborator', 'gcr'),
            'add_new'             => __('Add New', 'gcr'),
            'edit_item'           => __('Edit Collaborator', 'gcr'),
            'update_item'         => __('Update Collaborator', 'gcr'),
            'search_items'        => __('Search Collaborator', 'gcr'),
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
		'taxonomies' => [ 'collaborators_category' ]
    ]);

    /* Register Custom Taxonomy */
    register_taxonomy('collaborators_category', 'collaborators', [
        'label' => __('Collaborators Category', 'gcr'),
        'rewrite' => [ 'slug' => 'collaborators_category' ],
    ]);
}
add_action('init', 'gcr_create_posttype_collaborators'); // Add our work type
