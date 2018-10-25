<?php
/**
 * Template Name: Services
 * Template part for displaying page Services
 */

get_header();
?>

<main id="page-main" class="site-page-main has-padding-lr-6" role="page-main">
    <div class="container-fluid">
        <?php while (have_posts()) : the_post() ?>

            <article id="page-services" class="page page-services has-padding-bt-1">
                <?php get_template_part('template-parts/content-parts/header') ?>

                <div class="page-content">
                    <div class="content">
                        <?php the_content(); ?>
                    </div>
                    <?php get_template_part('template-parts/services/default') ?>
                </div>
            </article>

        <?php endwhile ?>
    </div>
</main>

<?php
get_footer();
