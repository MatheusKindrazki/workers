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

      <div class="d-flex area-imagens">
        <div class="img-back" style="background-image: url(<?php the_field('video_construir_1') ?>)"></div>
        <div class="img-back" style="background-image: url(<?php the_field('video_construir_2') ?>)"></div>
        <p class="title-image-left">
          <?php the_field('titulo_video_1') ?>
        </p>
        <p class="title-image-right">
          <?php the_field('titulo_video_2') ?>
        </p>
      </div>
    </div>
  </div>

  <div class="integrar d-flex align-items-center">
    <div class="container">
      <h2 class="title-2 white">
      <?php the_field('titulo_terceira_sessao') ?>
      </h2>
    </div>
    <div class="produtos">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="title-item">
              <h3><?php the_field('titulo_produto_1') ?></h3>
              <p>01.</p>
            </div>
            <div class="img-produto" style="background-image: url(<?php the_field('video_produto_1') ?>)"></div>
          </div>
          <div class="col-lg-4">
            <div class="title-item">
              <h3><?php the_field('titulo_produto_2') ?></h3>
              <p>02.</p>
            </div>
            <div class="img-produto" style="background-image: url(<?php the_field('video_produto_2') ?>)"></div>
          </div>
          <div class="col-lg-4">
            <div class="title-item">
              <h3><?php the_field('titulo_produto_3') ?></h3>
              <p>03.</p>
            </div>
            <div class="img-produto" style="background-image: url(<?php the_field('video_produto_3') ?>)"></div>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>

<?php get_footer(); ?>