<?php
/*  Template Name: About  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
// Retrieve Header for site.
get_header();
?>
<header class="banner">
  <button id="menu-toggle" aria-label="Menu" aria-expanded="false" aria-controls="menu"></button>
  <a href="/"> <img class="brand" src="<?php echo get_template_directory_uri(); ?>/images/Byron-Logo-thick-white.png" width="100" alt="Byron Logo"></a>
</header>

<body class="about">
  <section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

    <div class="entry-content">
      <div class="content-wrapper">
          <div class="left" id="floated">
            <?php
            $image = get_field('image');
            $size = 'large';
            if ($image) {
              echo wp_get_attachment_image($image, $size);
            }

            ?>
          </div>
          <div class="right">
            <?php if (get_field('text')) : ?>
              <?php the_field('text'); ?>
            <?php endif; ?>
          </div>
        </div>
      <div class="about-spacer"></div>
    </div><!-- .entry-content -->

  </section><!-- #post-<?php the_ID(); ?> -->

  <?php
  get_footer();
  ?>