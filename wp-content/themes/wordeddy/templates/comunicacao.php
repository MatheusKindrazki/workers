<?php
/**
 * Template Name: Comunicação
 */
get_header(); ?>

<div class="comunicacao">
  <div class="banner-comunicacao d-flex align-items-center">
    <video autoplay muted loop>
      <source src="<?php the_field('video_banner'); ?>" type="video/mp4">
    </video>
    <div class="container d-flex justify-content-center">
      <h1 class="gs_reveal gs_reveal_fromTop"> <?php the_field('titulo_banner'); ?> </h1>
    </div>
  </div>

  <?php if( have_rows('destaques') ): ?>
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

  <?php if( have_rows('destaques') ): ?>
    <div class="back-blue">
      <div class="container">
        <div class="content"></div>
      </div>
    </div>
    <div class="gallery">
      <?php while( have_rows('destaques') ): the_row(); ?>
        <div class="item-galerry">
          <?php if(get_sub_field('arquivo')['type'] === 'video'): ?>
            <video autoplay muted loop>
              <source src="<?php echo get_sub_field('arquivo')['url']; ?>" type="video/mp4">
            </video>
          <?php endif; ?>
          <?php if(get_sub_field('arquivo')['type'] === 'image'): ?>
            <img src="<?php echo get_sub_field('arquivo')['url']; ?>" alt="photo">
          <?php endif; ?>
        </div>
      <?php endwhile; ?>
    </div>
    <div class="back-blue">
      <div class="container">
        <div class="content"></div>
      </div>
    </div>
  <?php endif; ?>

  <?php if( have_rows('videos') ): ?>
    <div class="area-videos">
      <div class="container">
        <div class="row">
          <?php $cont = 0; while( have_rows('videos') ): the_row(); ?>
            <div class="col-lg-4">
              <button type="button" class="item-video gs_reveal gs_reveal_fromRight" style="background-image: url(<?php echo get_sub_field('thumb'); ?>)" data-toggle="modal" data-target="#modal-video-<?php echo $cont; ?>">
                <div class="content">
                  <img src="<?php bloginfo('template_directory'); ?>/images/btn-play.png" alt="btn-play">
                  <p><?php echo get_sub_field('titulo'); ?></p>
                  <p class="d-none link-video"><?php echo get_sub_field('video'); ?></p>
                </div>
              </button>
            </div>

            <div class="modal modal-video fade" id="modal-video-<?php echo $cont; ?>" tabindex="-1" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>

                    <video controls>
                      <source src="<?php echo get_sub_field('video'); ?>" type="video/mp4">
                    </video>
                  </div>
                </div>
              </div>
            </div>
          <?php $cont++; endwhile; ?>
        </div>
      </div>
    </div>
  <?php endif; ?>

</div>

<?php get_footer(); ?>