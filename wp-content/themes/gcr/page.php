<?php
/**
 * The template for displaying all pages
 *
 */

get_header();
?>

<main id="page-main" class="site-page-main" role="page-main">

	<?php
	while (have_posts()) : the_post();

		get_template_part('template-parts/content-page');

	endwhile;
	?>

</main>

<?php
get_footer();
