<?php
/**
 * Template Name: Comunicação
 */
get_header(); ?>

<style>

.delayed-section {
  position: absolute;
  width: 30vw;
  height: 38.87vw;
}
.delayed-section .inner-container {
  will-change: transform;
}
.delayed-section img {
  max-width: 100%;
  will-change: transform;
}

#del1 {
  top: 101vh;
  left: 10vw;
}
#del2 {
  top: 110vh;
  left: 60vw;
}
#del3 {
  top: 120vh;
  left: 30vw;
}
</style>

<div class="comunicacao">
  <div class="banner-comunicacao d-flex align-items-center">
    <video autoplay muted loop>
      <source src="<?php the_field('video_banner'); ?>" type="video/mp4">
    </video>
    <div class="container d-flex justify-content-center">
      <h1> <?php the_field('titulo_banner'); ?> </h1>
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
    <div class="produtos">
      <div class="container-person">
        <div class="container">
          <div class="back-blue"></div>
        </div>
      </div>
      <div class="gallery" style="background-image: url(<?php bloginfo('template_directory'); ?>/images/back-images.png)">
        <?php while( have_rows('destaques') ): the_row(); ?>
          <?php if( have_rows('coluna') ): ?>
            <div class="column-gallery">
              <?php while( have_rows('coluna') ): the_row(); ?>
                <div class="item-galerry">
                  <img src="<?php the_sub_field('imagem'); ?>" alt="photo">
                </div>
              <?php endwhile; ?>
            </div>
          <?php endif; ?>
        <?php endwhile; ?>
      </div>
      <div class="container-person">
        <div class="container">
          <div class="back-blue"></div>
        </div>
      </div>
    </div>
  <?php endif; ?>

</div>

<?php get_footer(); ?>