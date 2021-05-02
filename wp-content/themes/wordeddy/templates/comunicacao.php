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
      <h1> <?php the_field('titulo_banner'); ?> </h1>
    </div>
  </div>

  <!-- <div class="produtos">
    <div class="container">
      <div class="back-blue"></div>
    </div>
    <div class="photobanner" style="background-image: url(<?php bloginfo('template_directory'); ?>/images/back-images.png)">
      <div class="scrolling" id="galerry">
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
        <img src="<?php bloginfo('template_directory'); ?>/images/photo.png" alt="photo" />
      </div>
    </div>
  </div> -->

  <style>
    body {
      overflow-x: hidden;
    }

    .section {
      font-size: 5rem;
    }
    .section--large {
      width: 100vw;
      background-color: #e4002b;
      color: white;
    }
    .section--small {
      width: 46rem;
    }
    .section--dark {
      color: white;
      background-color: black;
    }

    .center-marker {
      position: fixed;
      width: 2px;
      height: 100vh;
      background: tomato;
      top: 0;
      left: calc(50vw - 1px);
    }

    section {
      font-weight: 900;
      transition: color 0.3s;
    }

    section.active {
      color: orange;
    }
  </style>

<div class="wrapper d-flex flex-nowrap">
  <section class="section section--large flex-shrink-0 vw-100 vh-100 d-flex justify-content-center align-items-center">
    Part One
  </section>
  <section class="section section--dark section--small vh-100 flex-shrink-0 d-flex justify-content-center align-items-center">
    Part Two
  </section>
  <section class="section section--small vh-100 flex-shrink-0 d-flex justify-content-center align-items-center">
    Part Three
  </section>
  <section class="section section--large flex-shrink-0 vw-100 vh-100 d-flex justify-content-center align-items-center">
    Part Four
  </section>
</div>
</div>

<?php get_footer(); ?>