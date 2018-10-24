<?php /** @var WP_Post $post */ ?>
<div class="post column is-3">
    <div class="card">
        <?php if (has_post_thumbnail($post)) : ?>
            <div class="post-thumbnail card-image">
                <figure class="image is-4by3">
                    <a href="<?php the_permalink($post) ?>">
                        <?php echo get_the_post_thumbnail($post) ?>
                    </a>
                </figure>
            </div>
        <?php endif ?>
        <div class="card-content">
            <h3 class="card-title">
                <a href="<?php the_permalink($post) ?>">
                    <?php echo $post->post_title ?>
                </a>
            </h3>
            <div class="content">
                <?php echo apply_filters('custom_excerpt', $post->post_content) ?>
            </div>
        </div>
    </div>
</div>
