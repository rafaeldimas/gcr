<?php $latestPosts = getLatestPosts(4) ?>

<?php if (!empty($latestPosts)) : ?>
    <div class="latest-posts">
        <h1 class="latest-posts-title">Ultimos Artigos</h1>
        <div class="posts columns">
            <?php foreach ($latestPosts as $latestPost) : ?>
                <?php get_template_part_with_attr('template-parts/posts/content', 'home', compact('latestPost')) ?>
            <?php endforeach ?>
        </div>
    </div>
<?php endif ?>
