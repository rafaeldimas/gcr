<?php
/** @var int $key */
/** @var WP_Post $post */
$hasThumbnail = has_post_thumbnail($post);
$thumbnailUrl = $hasThumbnail ? get_the_post_thumbnail_url($post) : '';
$style = $hasThumbnail ? "style='background-image: url({$thumbnailUrl})'" : '';

$leftOrRight = ($key % 2 === 0) ? 'left' : 'right';
$backgroundAling = $hasThumbnail ? "bg-aling-{$leftOrRight}" : '';
$textAling = "has-text-{$leftOrRight} has-block-{$leftOrRight}";

$backgroundClass = $hasThumbnail ? "has-margin-bt-6 bg-service {$backgroundAling}" : '';
?>

<div class="<?php echo $backgroundClass ?> column is-12 has-padding-lr-6" <?php echo $style ?>>
    <div class="service <?php echo $textAling ?>">
        <h2 class="title has-text-secundary"><?php echo $post->post_title ?></h2>
        <div class="content has-text-secundary has-text-weight-bold	has-text-justified">
            <?php echo apply_filters('the_content', $post->post_content) ?>
        </div>
    </div>
</div>
