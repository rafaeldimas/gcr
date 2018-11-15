<?php
/**
 * Template Name: Private Area Login
 * Template part for displaying page Private Area Login
 */

get_header('private-area');
?>

<main id="page-main" class="site-page-main has-padding-lr-6" role="page-main">
    <div class="container">
        <?php while (have_posts()) : the_post() ?>
        <div class="columns">
            <article id="page-private-area" class="page page-private-area column is-12 has-padding-bt-1 has-padding-lr-6">
                <div class="page-content">
                    <div class="content has-text-justified">
                        <?php the_content(); ?>
                    </div>
                </div>
            </article>
        </div>
        <?php endwhile ?>
    </div>
</main>

<?php
get_footer('private-area');
