<?php get_header(); ?>

<div class="front-page">

  <button type="button" class="banner-home d-flex align-items-center justify-content-start" data-toggle="modal" data-target="#modal-banner">
    <video autoplay muted loop>
      <source src="<?php the_field('video_banner'); ?>" type="video/mp4">
    </video>
    <div class="container">
      <h1 class="gs_reveal gs_reveal_fromLeft"> <?php the_field('titulo_banner'); ?> </h1>
    </div>
  </button>

  <div class="modal modal-video fade" id="modal-banner" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-body">
          <iframe src="<?php the_field('video_vimeo'); ?>" frameborder="0" allow="fullscreen; picture-in-picture" allowfullscreen></iframe>
        </div>
      </div>
    </div>
  </div>

  <div class="contruir-marcas">
    <div class="container">
      <h2 class="title-2 gs_reveal gs_reveal_fromLeft">
        <?php the_field('titulo_contruir'); ?>
      </h2>

      <?php if( have_rows('cases_segunda_sessao') ): ?>
        <div class="d-flex area-imagens">
          <?php $cont = 0; while( have_rows('cases_segunda_sessao') ): the_row(); ?>
              <button type="button" class="img-back gs_reveal <?php echo $cont === 0 ? 'gs_reveal_fromBottom' : 'gs_reveal_fromTop'?>" style="background-image: url(<?php the_sub_field('imagem'); ?>)" data-toggle="modal" data-target="#modal-case-<?php echo $cont ?>"></button>
              <p class="<?php echo $cont === 0 ? 'title-image-left' : 'title-image-right'; ?>"><?php the_sub_field('titulo'); ?></p>
          <?php $cont++; endwhile; ?>
        </div>
      <?php endif; ?>
    </div>

    <?php if( have_rows('cases_segunda_sessao') ): ?>
      <?php $cont = 0; while( have_rows('cases_segunda_sessao') ): the_row(); ?>
        <div class="modal modal-video fade" id="modal-case-<?php echo $cont ?>" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-body">
                <iframe src="<?php the_sub_field('video'); ?>" frameborder="0" allow="fullscreen; picture-in-picture" allowfullscreen></iframe>
              </div>
            </div>
          </div>
        </div>
      <?php $cont++; endwhile; ?>
    <?php endif; ?>

  </div>

  <div class="integrar d-flex align-items-center">
    <div class="container">
      <h2 class="title-2 white gs_reveal gs_reveal_fromLeft">
      <?php the_field('titulo_terceira_sessao') ?>
      </h2>
    </div>
    <?php if( have_rows('topicos__terceira_sessao') ): ?>
      <div class="produtos">
        <div class="container">
          <div class="row d-flex justify-content-center">
          <?php $cont = 1; while( have_rows('topicos__terceira_sessao') ): the_row(); ?>
            <div class="col-lg-4 gs_reveal <?php echo $cont % 2 === 0 ? 'gs_reveal_fromTop' : 'gs_reveal_fromBottom'?>">
              <div class="title-item">
                <h3><?php echo get_sub_field('link')['title']; ?></h3>
                <p>0<?php echo $cont; ?>.</p>
              </div>
              <a href="<?php echo get_sub_field('link')['url']; ?>">
                <div class="img-produto" style="background-image: url(<?php the_sub_field('imagem') ?>)"></div>
              </a>
            </div>
            <?php $cont++; endwhile; ?>
          </div>
        </div>
      </div>
    <?php endif; ?>
  </div>

  <div class="desvendar d-flex justify-content-center flex-column">
    <div class="container content gs_reveal gs_reveal_fromLeft">
      <img src="<?php the_field('logotipo_secundaria', 'options') ?>" alt="logotipo" class="mb-4">
      <h3 class="title-3">
      <?php the_field('texto_terceira_sessao') ?>
      </h3>
    </div>
  </div>

  <div class="parallax-back">
    <div class="session-four bg" style="background-image: url(<?php the_field('imagem_quinta_sessao') ?>)"></div>
  </div>

  <?php if( have_rows('topicos_sexta_sessao') ): ?>
    <div class="session-five">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <?php $cont = 0; while( have_rows('topicos_sexta_sessao') ): the_row(); ?>
            <div class="col-lg-4 gs_reveal <?php echo $cont % 2 === 0 ? 'gs_reveal_fromTop' : 'gs_reveal_fromBottom'?>">
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