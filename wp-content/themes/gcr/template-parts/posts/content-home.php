<?php /** @var WP_Post $latestPost */ ?>
<div class="post column is-3">
    <div class="post-thumbnail">
        <?php echo get_the_post_thumbnail($latestPost) ?>
    </div>
    <div class="post-title">
        <h3><?php echo $latestPost->post_title ?></h3>
    </div>
    <div class="post-content">
        <p><?php echo $latestPost->post_content ?></p>
    </div>
</div>
