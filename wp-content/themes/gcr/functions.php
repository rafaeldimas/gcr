<?php
/**
 * Functions and definitions
 *
 */

/* Define configurations for Wordpress */
require_once __DIR__.'/inc/config-wordpress.php';

/* Define Image Sizes */
require_once __DIR__.'/inc/image-size.php';

/* Define Custom Filters */
require_once __DIR__.'/inc/filters.php';

/* Register Menus */
require_once __DIR__.'/inc/menus.php';

/* Enqueue Scripts and Styles */
require_once __DIR__.'/inc/scripts-styles.php';

/* Register Post Types */
require_once __DIR__.'/inc/posttypes/all.php';

/* Helpers functions for templates */
require_once __DIR__.'/inc/template-functions.php';





