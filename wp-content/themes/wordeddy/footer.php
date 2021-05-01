<footer>
  <div class="container">
    <div class="d-flex justify-content-end mb-4">
      <button type="button" class="btn-top" id="btn-top">
        <img src="<?php bloginfo('template_directory'); ?>/images/arrow.png" alt="arrow">
        Topo
      </button>
    </div>
    <div class="d-flex justify-content-between align-items-center mb-5">
      <h4 class="title-2 white mb-0">Let's talk.</h4>
      <div>
        <img src="<?php the_field('logotipo', 'options') ?>" alt="logotipo">
      </div>
    </div>
    <p class="email"><?php the_field('e-mail', 'options') ?></p>
    <div class="area-whats d-flex align-items-end">
      <img src="<?php the_field('icone_whatsapp', 'options') ?>" alt="whatsapp">
      <p><?php the_field('whatsapp', 'options') ?></p>
    </div>
    <div class="bottom-footer d-flex justify-content-between">
      <?php if( have_rows('redes_sociais', 'options') ): ?>
        <div class="redes d-flex">
          <?php $cont = 0; while( have_rows('redes_sociais', 'options') ): the_row(); ?>
            <a href="<?php the_sub_field('link'); ?>"><i class="fab fa-<?php the_sub_field('rede_social'); ?>"></i></a>
          <?php $cont++; endwhile; ?>
        </div>
      <?php endif; ?>
      <div class="endereco">
      <?php the_field('endereco', 'options') ?>
      </div>
    </div>
  </div>
</footer>

<?php wp_footer(); ?>

<?php get_template_part('parts/codigos-externos'); ?>

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<!-- Theme JS -->
<script src="<?php bloginfo('template_directory'); ?>/js/functions.js"></script>

</body>
</html>
