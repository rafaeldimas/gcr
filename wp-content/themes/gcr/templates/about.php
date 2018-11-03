<?php
/**
 * Template Name: About
 * Template part for displaying page About
 */

get_header();
?>

<main id="page-main" class="site-page-main has-padding-lr-6" role="page-main">
    <div class="container">
        <?php while (have_posts()) : the_post() ?>
            <div class="columns">
                <article id="page-about" class="page page-about column is-9 has-padding-bt-1 has-padding-lr-6">
                    <?php get_template_part('template-parts/content-parts/header') ?>

                    <div class="page-content">
                        <div class="content has-text-justified">
                            <?php the_content(); ?>
                        </div>
                    </div>
                </article>

                <?php get_template_part('template-parts/aside/contact') ?>
            </div>
            <?php endwhile ?>

            <?php get_template_part('template-parts/curriculums/list', 'about') ?>
    </div>
</main>

<?php
get_footer();
