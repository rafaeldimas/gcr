<?php
/**
 * Template Name: Extra Services
 * Template part for displaying page Extra Services
 */

get_header();
?>

<main id="page-main" class="site-page-main has-padding-lr-6" role="page-main">
    <div class="container">
        <?php while (have_posts()) : the_post() ?>
            <article id="page-extra-services" class="page page-extra-services columns has-padding-bt-1">
                <div class="page-content column is-6 is-offset-3">
                    <?php get_template_part('template-parts/content-parts/header') ?>

                    <div class="content">
                        <article class="message is-primary">
                            <div class="message-body" data-extra-service-message>
                                <?php the_content() ?>
                            </div>
                        </article>
    
                        <?php get_template_part('template-parts/forms/extra-services') ?>
                    </div>

                </div>
            </article>

            <?php get_template_part('template-parts/sliders/extra-services') ?>

        <?php endwhile ?>
    </div>
</main>

<?php
get_footer();
