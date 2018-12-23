<?php $usefulLinks = getUsefulLinks() ?>
<aside class="useful-links-aside column is-3">
    <h2 class="title has-text-primary has-text-centered">Links Úteis</h2>

    <div class="useful-links">
    <?php if ($usefulLinks->have_posts()) : ?>
    <?php while ($usefulLinks->have_posts()) : $usefulLinks->the_post() ?>
        <div class="useful-link">
            <a target="_blank" rel="noopener noreferrer" href="<?php echo get_the_content() ?>" class="link has-flex-center-items">
                <?php if (has_post_thumbnail()) : ?>
                    <?php the_post_thumbnail('full') ?>
                <?php endif ?>

                <span><?php the_title() ?></span>
            </a>
        </div>
    <?php endwhile ?>
    <?php endif ?>
    </div>
</aside>
