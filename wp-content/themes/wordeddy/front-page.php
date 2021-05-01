<?php get_header(); ?>

<div class="front-page">

  <div class="banner-home d-flex align-items-center">
    <video autoplay muted loop>
      <source src="<?php the_field('video_banner'); ?>" type="video/mp4">
    </video>
    <div class="container">
      <h1> <?php the_field('titulo_banner'); ?> </h1>
    </div>
  </div>

  <div class="contruir-marcas">
    <div class="container">
      <h2 class="title-2">
        <?php the_field('titulo_contruir'); ?>
      </h2>

      <?php if( have_rows('cases_segunda_sessao') ): ?>
        <div class="d-flex area-imagens">
          <?php $cont = 0; while( have_rows('cases_segunda_sessao') ): the_row(); ?>
              <div class="img-back" style="background-image: url(<?php the_sub_field('imagem'); ?>)"></div>
              <p class="<?php echo $cont === 0 ? 'title-image-left' : 'title-image-right'; ?>"><?php the_sub_field('titulo'); ?></p>
          <?php $cont++; endwhile; ?>
        </div>
      <?php endif; ?>
    </div>
  </div>

  <div class="integrar d-flex align-items-center">
    <div class="container">
      <h2 class="title-2 white">
      <?php the_field('titulo_terceira_sessao') ?>
      </h2>
    </div>
    <?php if( have_rows('topicos__terceira_sessao') ): ?>
      <div class="produtos">
        <div class="container">
          <div class="row d-flex justify-content-center">
          <?php $cont = 1; while( have_rows('topicos__terceira_sessao') ): the_row(); ?>
            <div class="col-lg-4">
              <div class="title-item">
                <h3><?php the_sub_field('titulo') ?></h3>
                <p>0<?php echo $cont; ?>.</p>
              </div>
              <div class="img-produto" style="background-image: url(<?php the_sub_field('imagem') ?>)"></div>
            </div>
            <?php $cont++; endwhile; ?>
          </div>
        </div>
      </div>
    <?php endif; ?>
  </div>

  <div class="desvendar d-flex justify-content-center flex-column">
    <div class="container content">
      <img src="<?php the_field('logotipo_secundaria', 'options') ?>" alt="logotipo" class="mb-4">
      <h3 class="title-3">
      <?php the_field('texto_terceira_sessao') ?>
      </h3>
    </div>
  </div>

  <div class="session-four" style="background-image: url(<?php the_field('video_quarta_sessao') ?>)"></div>

  <?php if( have_rows('topicos_sexta_sessao') ): ?>
    <div class="session-five">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <?php $cont = 0; while( have_rows('topicos_sexta_sessao') ): the_row(); ?>
            <div class="col-lg-4">
              <div class="img-back" style="background-image: url(<?php the_sub_field('imagem'); ?>)"></div>
              <p class="<?php echo $cont === 0 ? 'title-image-left' : 'title-image-right'; ?>"><?php the_sub_field('titulo'); ?></p>
            </div>
          <?php $cont++; endwhile; ?>
        </div>
      </div>
    </div>
  <?php endif; ?>
</div>

<?php get_footer(); ?>