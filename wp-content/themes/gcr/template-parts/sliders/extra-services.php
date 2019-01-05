<?php $sliders = getSlidersByType('extra-services') ?>

<?php if ($sliders->have_posts()) : ?>
    <div class="columns">
        <div class="slider js_slider" data-slider="carousel">
            <div class="frame js_frame">
                <ul class="slides js_slides">
                <?php /** @var WP_Post $post */ ?>
                <?php foreach ($sliders->posts as $post) : ?>
                    <?php $postThumbnailUrl = get_the_post_thumbnail_url($post->ID, 'slider-carousel') ?>
                    <?php $style = $postThumbnailUrl ? "style='background-image: url({$postThumbnailUrl})'" : '' ?>
                    <li
                        class="item js_slide"
                        <?php echo $style ?>
                        data-extra-service-name="<?php echo $post->post_title ?>"
                        data-extra-service-description="<?php echo $post->post_content ?>">
                    </li>
                <?php endforeach ?>
                </ul>
            </div>
            <?php get_template_part('template-parts/sliders/prev-next') ?>
        </div>
    </div>
<?php else: ?>
    <div class="columns">
        <div class="column">
            <p class="has-text-primary has-text-centered">
                Nenhum serviço extra cadastrado,
                entre em contato por este
                <a href="<?php echo get_permalink(getPageIdByTemplateName('contact')) ?>">formulário</a>
                para maiores informações
            </p>
        </div>
    </div>
<?php endif ?>
