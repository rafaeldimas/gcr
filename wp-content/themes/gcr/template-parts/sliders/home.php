<?php $sliders = getSlidersByType('home') ?>
<?php if ($sliders->have_posts()) : ?>
    <div class="slider js_slider" data-slider="fullwidth">
        <div class="frame js_frame">
            <ul class="slides js_slides">
            <?php foreach ($sliders->posts as $post) : ?>
                <li class="item js_slide" style="background-image: url(<?php echo get_the_post_thumbnail_url($post->ID, 'full') ?>);">
                    <div class="content">
                        <?php echo apply_filters('the_content', $post->post_content) ?>
                    </div>
                </li>
                <li class="item js_slide" style="background-image: url(<?php echo get_the_post_thumbnail_url($post->ID, 'full') ?>);">
                    <div class="content">
                        <?php echo apply_filters('the_content', $post->post_content) ?>
                    </div>
                </li>
            <?php endforeach ?>
            </ul>
        </div>
    </div>
<?php endif ?>
