<?php $latestPosts = getLatestPosts(4) ?>

<?php if (!empty($latestPosts)) : ?>
    <div class="container">
        <div class="latest-posts has-padding-bt-3">
            <h1 class="latest-posts-title has-text-centered has-text-primary">Últimos Artigos</h1>
            <div class="posts columns">
                <?php foreach ($latestPosts as $post) : ?>
                    <?php get_template_part_with_attr('template-parts/posts/content', 'home', compact('post')) ?>
                <?php endforeach ?>
            </div>
        </div>
    </div>
<?php endif ?>
