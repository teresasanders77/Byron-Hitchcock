<?php
/*  Template Name: Cuontact  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
// Retrieve Header for site.
get_header();
?>

<body class="contact-body">
  <section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

    <div class="entry-content">
      <div class="contact-page-wrapper">
        <div class="contact-row">
          <div class="column image">
            <?php
            $image = get_field('image');
            $size = 'custom size';
            if ($image) {
              echo wp_get_attachment_image($image, $size);
            } ?>
          </div>
          <div class="column">
            <div class="form-text">
              <h1 class="contact-title">CONTACT ME</h1>
              <h2 class="contact-info">(720) 205-2467</h2>
              <h2 class="contact-info">byronhit@gmail.com</h2>
            </div>
            <?php the_content(); ?>
          </div>
        </div>
      </div>
    </div><!-- .entry-content -->

  </section><!-- #post-<?php the_ID(); ?> -->

  <?php
  get_footer();
  ?>