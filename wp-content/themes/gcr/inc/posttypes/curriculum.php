<?php

function gcr_create_posttype_curriculums() {
	register_post_type('curriculums', [
		'labels' => [
            'name'                => __('Curriculums', 'gcr'),
            'singular_name'       => __('Curriculum', 'gcr'),
            'menu_name'           => __('Curriculums', 'gcr'),
            'parent_item_colon'   => __('Parent Curriculum', 'gcr'),
            'all_items'           => __('All Curriculums', 'gcr'),
            'view_item'           => __('View Curriculum', 'gcr'),
            'add_new_item'        => __('Add New Curriculum', 'gcr'),
            'add_new'             => __('Add New', 'gcr'),
            'edit_item'           => __('Edit Curriculum', 'gcr'),
            'update_item'         => __('Update Curriculum', 'gcr'),
            'search_items'        => __('Search Curriculum', 'gcr'),
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
		'taxonomies' => [ 'curriculums_category' ]
    ]);

    /* Register Custom Taxonomy */
    register_taxonomy('curriculums_category', 'curriculums', [
        'label' => __('Curriculums Category', 'gcr'),
        'rewrite' => [ 'slug' => 'curriculums_category' ],
    ]);
}
add_action('init', 'gcr_create_posttype_curriculums'); // Add our work type
