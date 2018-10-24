<div class="post column is-3">
    <div class="card">
        <?php if (has_post_thumbnail()) : ?>
            <div class="post-thumbnail card-image">
                <figure class="image is-4by3">
                    <a href="<?php the_permalink() ?>">
                        <?php the_post_thumbnail() ?>
                    </a>
                </figure>
            </div>
        <?php endif ?>
        <div class="card-content">
            <h3 class="card-title">
                <a href="<?php the_permalink() ?>">
                    <?php echo the_title() ?>
                </a>
            </h3>
            <div class="content">
                <?php the_content() ?>
            </div>
        </div>
    </div>
</div>
