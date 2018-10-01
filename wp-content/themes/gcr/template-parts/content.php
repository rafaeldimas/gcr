<?php
/**
 * Template part for displaying posts
 */

?>

<article id="post-<?php the_ID(); ?>" class="entry">
    <?php get_template_part('template-parts/content-parts/header') ?>

	<div class="entry-content">
		<?php the_content(); ?>
	</div>
</article>
