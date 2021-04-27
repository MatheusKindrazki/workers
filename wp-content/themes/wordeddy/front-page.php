<?php get_header(); ?>

<div class="front-page">

  <div class="banner-home">
    <video autoplay muted loop>
      <source src="<?php the_field('video_banner'); ?>" type="video/mp4">
    </video>
    <div class="container h-100 d-flex align-items-center">
      <h1> <?php the_field('titulo_banner'); ?> </h1>
    </div>
  </div>

</div>

<?php get_footer(); ?>