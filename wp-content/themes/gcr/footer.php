<?php
/**
 * The template for displaying the footer
 *
 */

?>

</div>
<footer class="site-footer">
    <?php get_template_part('template-parts/footer/top') ?>
    <?php get_template_part('template-parts/footer/copyrigth') ?>
</footer>

<?php wp_footer(); ?>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-134130772-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-134130772-1');
</script>
</body>
</html>
