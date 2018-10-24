<?php
/**
 * The main template file
 */

get_header();
?>

<main id="blog-main" class="site-blog-main" role="blog-main">

<div class="container">
    <div class="posts has-padding-bt-3">
        <h1 class="posts-title has-text-centered has-text-primary">Artigos</h1>
        <div class="posts columns">
            <?php if (have_posts()) : ?>
                <?php while (have_posts()) : the_post(); ?>
                    <?php get_template_part('template-parts/posts/content-default') ?>
                <?php endwhile ?>

                <?php
                    the_posts_pagination([
                        'prev_text' => __('Previous page'),
                        'next_text' => __('Next page'),
                        ]);
                        ?>
            <?php else : ?>
                <div class="not-posts is-12">
                    <p class="has-text-centered">Nenhum artigo encontrado.</p>
                </div>
            <?php endif ?>
        </div>
    </div>
</div>

</main>

<?php
get_footer();
