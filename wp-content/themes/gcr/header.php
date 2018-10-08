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

<a class="skip-link screen-reader-text" href="#content">Skip to content</a>

<header class="site-header">
    <?php echo getNavbarMainMenu() ?>
</header>

<?php if (is_front_page()) : ?>
    <?php get_template_part('template-parts/sliders/home') ?>
<?php endif ?>

<div id="content" class="content site-content">
    <div class="container">
