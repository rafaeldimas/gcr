<?php get_header() ?>

<main id="home-main" class="site-home-main" role="home-main">

<?php if (have_posts()) : ?>
    <?php while (have_posts()) : the_post() ?>

        <!-- Latest Posts -->
        <?php get_template_part('template-parts/posts/latest-posts') ?>

        <!-- About Home -->
        <?php get_template_part('template-parts/about', 'home') ?>

        <!-- Form Contact Home -->
        <?php get_template_part('template-parts/forms/home') ?>

	<?php endwhile ?>

<?php endif ?>

</main>

<?php get_footer() ?>
