<?php
/**
 * Template Name: Contact
 * Template part for displaying page contact
 */

get_header();
?>

<main id="page-main" class="site-page-main" role="page-main">
    <div class="container">
        <?php while (have_posts()) : the_post() ?>
            <div class="columns">
                <article id="page-contact" class="page page-contact column is-9 has-padding-bt-1 has-padding-lr-6">
                    <?php get_template_part('template-parts/content-parts/header') ?>

                    <div class="page-content">
                        <div class="content">
                            <?php the_content(); ?>
                        </div>
                        <?php echo get_template_part('template-parts/forms/contact') ?>
                    </div>
                </article>

                <?php get_template_part('template-parts/aside/contact') ?>
            </div>
        <?php endwhile ?>
    </div>
</main>

<?php
get_footer();
