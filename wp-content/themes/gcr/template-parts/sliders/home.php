<?php $sliders = getSlidersByType('home') ?>
<?php if ($sliders->have_posts()) : ?>
    <div class="slider js_slider" data-slider="fullwidth">
        <div class="frame js_frame">
            <ul class="slides js_slides">
            <?php foreach ($sliders->posts as $post) : ?>
                <?php $postThumbnailUrl = get_the_post_thumbnail_url($post->ID, 'full') ?: 'https://placeimg.com/1300/500/any' ?>
                <?php $style = $postThumbnailUrl ? "style='background-image: url({$postThumbnailUrl})'" : '' ?>
                <li class="item js_slide" <?php echo $style ?>>
                    <div class="content">
                        <?php echo apply_filters('the_content', $post->post_content) ?>
                    </div>
                </li>
            <?php endforeach ?>
            </ul>
        </div>
        <div class="js_prev prev">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 501.5 501.5">
                <g>
                    <path d="M302.67 90.877l55.77 55.508L254.575 250.75 358.44 355.116l-55.77 55.506L143.56 250.75z"/>
                </g>
            </svg>
        </div>
        <div class="js_next next">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 501.5 501.5">
                <g>
                    <path d="M199.33 410.622l-55.77-55.508L247.425 250.75 143.56 146.384l55.77-55.507L358.44 250.75z"/>
                </g>
            </svg>
        </div>
    </div>
<?php endif ?>
