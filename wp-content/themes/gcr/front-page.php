<?php get_header() ?>

<main id="home-main" class="site-home-main" role="home-main">

<?php if (have_posts()) : ?>
    <?php while (have_posts()) : the_post() ?>

        <?php get_template_part('template-parts/posts/latest-posts') ?>

	<?php endwhile ?>

<?php endif ?>

</main>

<?php get_footer() ?>
