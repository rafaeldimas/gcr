<?php /** @var WP_Post $curriculum */ ?>
<div class="column is-4">
    <div class="curriculum">
        <?php if (has_post_thumbnail($curriculum)): ?>
        <div class="photo" style="background-image: url(<?php echo get_the_post_thumbnail_url($curriculum, 'full') ?>)"></div>
        <?php endif ?>
        <div class="media-content">
            <div class="content has-text-centered">
                <h6 class="title has-text-primary"><?php echo get_the_title($curriculum) ?></h6>
                <?php echo apply_filters('the_content', $curriculum->post_content) ?>
            </div>
        </div>
    </div>
</div>
