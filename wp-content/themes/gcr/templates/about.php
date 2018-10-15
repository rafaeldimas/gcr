<?php
/**
 * Template Name: About
 * Template part for displaying page About
 */

get_header();
?>

<main id="page-main" class="site-page-main" role="page-main">
    <div class="container">
        <?php while (have_posts()) : the_post() ?>

            <article id="page-about" class="page page-about">
                <?php get_template_part('template-parts/content-parts/header') ?>

                <div class="page-content">
                    <?php the_content(); ?>
                </div>
            </article>

        <?php endwhile ?>
    </div>
</main>

<?php
get_footer();
