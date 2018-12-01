<?php $sliders = getSlidersByType('home') ?>
<?php if ($sliders->have_posts()) : ?>
    <div class="slider js_slider" data-slider="fullwidth">
        <div class="frame js_frame">
            <ul class="slides js_slides">
            <?php foreach ($sliders->posts as $post) : ?>
                <?php $postThumbnailUrl = get_the_post_thumbnail_url($post->ID, 'slider-fullwidth') ?>
                <?php $style = $postThumbnailUrl ? "style='background-image: url({$postThumbnailUrl})'" : '' ?>
                <?php $positionX = get_post_meta($post->ID, 'position_x', true) ?>
                <?php $positionY = get_post_meta($post->ID, 'position_y', true) ?>
                <?php $classPositionX = $positionX ? "position-x-{$positionX}" : 'position-x-center' ?>
                <?php $classPositionY = $positionY ? "position-y-{$positionY}" : 'position-y-center' ?>
                <li class="item js_slide" <?php echo $style ?>>
                    <div class="content <?php echo "{$classPositionX} {$classPositionY}"  ?>">
                        <?php echo apply_filters('the_content', $post->post_content) ?>
                    </div>
                </li>
            <?php endforeach ?>
            </ul>
        </div>
        <?php get_template_part('template-parts/sliders/prev-next') ?>
    </div>
<?php endif ?>
