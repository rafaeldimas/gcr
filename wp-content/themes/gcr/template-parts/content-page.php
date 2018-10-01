<?php
/**
 * Template part for displaying pages
 */

?>

<article id="page-<?php the_ID(); ?>" class="page">
    <?php get_template_part('template-parts/content-parts/header') ?>

	<div class="page-content">
		<?php the_content(); ?>
	</div>
</article>
