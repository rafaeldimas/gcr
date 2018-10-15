<?php
/** @var int $key */
/** @var WP_Post $post */
$hasThumbnail = has_post_thumbnail($post);
$thumbnailUrl = $hasThumbnail ? get_the_post_thumbnail_url($post) : '';
$style = $hasThumbnail ? "style='background-image: url({$thumbnailUrl})'" : '';

$leftOrRight = ($key % 2 === 0) ? 'left' : 'right';
$backgroundAling = $hasThumbnail ? "bg-aling-{$leftOrRight}" : '';
$textAling = "has-text-{$leftOrRight}";

$backgroundClass = $hasThumbnail ? "bg-service {$backgroundAling}" : '';
?>

<div class="<?php echo $backgroundClass ?> column is-12 has-padding-bt-1 has-padding-lr-6 has-margin-bt-1" <?php echo $style ?>>
    <div class="service <?php echo $textAling ?>">
        <h2 class="title has-text-primary"><?php echo $post->post_title ?></h2>
        <div class="content">
            <?php echo apply_filters('the_content', $post->post_content) ?>
        </div>
    </div>
</div>
