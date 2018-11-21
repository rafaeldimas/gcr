<?php
/**
 * Template Name: Extra Services
 * Template part for displaying page Extra Services
 */

get_header();
?>

<main id="page-main" class="site-page-main has-padding-lr-6" role="page-main">
    <div class="container-fluid">
        <?php while (have_posts()) : the_post() ?>

            <?php get_template_part('template-parts/extra-services/default') ?>
            <article id="page-extra-services" class="page page-extra-services has-padding-bt-1">
                <?php get_template_part('template-parts/content-parts/header') ?>

                <div class="page-content">
                    <div class="content">
                        <?php the_content() ?>
                    </div>
                </div>
            </article>


        <?php endwhile ?>
    </div>
</main>

<?php
get_footer();
