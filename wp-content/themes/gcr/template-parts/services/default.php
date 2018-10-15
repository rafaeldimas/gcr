<?php $services = getServices() ?>

<?php if ($services->have_posts()) : ?>
    <div class="services">
        <div class="columns is-multiline">
            <?php foreach ($services->posts as $key => $post) : ?>
                <?php get_template_part_with_attr('template-parts/services/content', 'default', compact('post', 'key')) ?>
            <?php endforeach ?>
        </div>
    </div>
<?php endif ?>
