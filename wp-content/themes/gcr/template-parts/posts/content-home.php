<?php /** @var WP_Post $latestPost */ ?>
<div class="post column is-3">
    <div class="card">
        <?php if (has_post_thumbnail($latestPost)) : ?>
            <div class="post-thumbnail card-image">
                <figure class="image is-4by3">
                    <a href="<?php the_permalink($latestPost) ?>">
                        <?php echo get_the_post_thumbnail($latestPost) ?>
                    </a>
                </figure>
            </div>
        <?php endif ?>
        <div class="card-content">
            <h3 class="card-title">
                <a href="<?php the_permalink($latestPost) ?>">
                    <?php echo $latestPost->post_title ?>
                </a>
            </h3>
            <div class="content">
                <?php echo apply_filters('custom_excerpt', $latestPost->post_content) ?>
            </div>
        </div>
    </div>
</div>
