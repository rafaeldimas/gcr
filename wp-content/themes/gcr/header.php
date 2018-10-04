<?php
/**
 * The header for the theme
 *
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<?php wp_head(); ?>
</head>

<body>

<a class="screen-reader-text" href="#content">Skip to content</a>

<header class="columns site-header">
    <div class="column is-3 site-logo">
        <?php
            if (has_custom_logo()) {
                the_custom_logo();
            }
        ?>
    </div>
	<nav class="column is-9 main-navigation">
		<?php
            wp_nav_menu([
                'theme_location' => 'menu-1',
                'menu_id' => 'primary-menu',
                'items_wrap' => '<ul id="%1$s" class="columns %2$s">%3$s</ul>'
            ]);
		?>
	</nav>
</header>

<div id="content" class="site-content">
