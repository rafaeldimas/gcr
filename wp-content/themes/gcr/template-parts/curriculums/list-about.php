<?php $curriculums = getCurriculums() ?>
<?php if ($curriculums->have_posts()) : ?>
<div class="curriculumns has-padding-bt-1 has-padding-lr-6">
    <h2 class="has-text-primary has-text-centered is-size-3">Coordenação</h2>
    <div class="columns">
        <?php foreach ($curriculums->posts as $curriculum) : ?>
            <?php get_template_part_with_attr('template-parts/curriculums/content', 'about', compact('curriculum')) ?>
        <?php endforeach ?>
    </div>
</div>
<?php endif ?>
