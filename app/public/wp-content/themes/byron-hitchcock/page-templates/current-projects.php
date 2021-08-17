<?php
/*  Template Name: Current Projects  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
// Retrieve Header for site.
get_header();
?>


<body class="current-projects-body">
  <section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <div class="projects-entry-content">
      <div class="projects-header-text">
        <h1>What I'm Working On</h1>
      </div>
      <div class="top-section">
        <div class="mobile-projects">
          <?php
          $image = get_field('image');
          $size = 'custom size';
          if ($image) {
            echo wp_get_attachment_image($image, $size);
          } ?>
        </div>
        <div class="desktop-projects">
          <?php
          $image_desktop = get_field('image2');
          $size = 'custom size';
          if ($image_desktop) {
            echo wp_get_attachment_image($image_desktop, $size);
          }
          ?>
        </div>
      </div>
      <div class="projects-wrapper">
        <div class="current-projects">
          <div class="card">
            <div class="layer"></div>
            <div class="content">
              <p>
                <?php if (get_field('text')) : ?>
                  <?php the_field('text'); ?>
                <?php endif; ?>
              </p>
            </div>
          </div>
          <div class="card">
            <div class="layer"></div>
            <div class="content">
              <p>
                <?php if (get_field('text_2')) : ?>
                  <?php the_field('text_2'); ?>
                <?php endif; ?>
              </p>
            </div>
          </div>
          <h2 class="recital-title">RECITAL</h2>
          <p class="recital-title recital-description">Originally planned as a full recital for the public in Denver, at Englewood Arts Center, this has now morphed into a recording session to be shared online. The rep is now smaller, but I'm looking forward to some high-quality recordings being made.</p>
          <h2 class="recital-title engelwood">ENGELWOOD RECORDING SESSION</h2>
          <div class="card">
            <div class="layer"></div>
            <div class="content">
              <p>
                <?php if (get_field('text_3')) : ?>
                  <?php the_field('text_3'); ?>
                <?php endif; ?>
              </p>
            </div>
          </div>
          <div class="card">
            <div class="layer"></div>
            <div class="content">
              <p>
                <?php if (get_field('text_4')) : ?>
                  <?php the_field('text_4'); ?>
                <?php endif; ?>
              </p>
            </div>
          </div>
          <h2 class="recital-title">RECITAL REJECTS</h2>
          <p class="recital-title recital-description">
            These are the pieces that got tossed out of the recital project, but I’ve made my own mini-projects out of all of them!</p>
          <div class="card">
            <div class="layer"></div>
            <div class="content">
              <p>
                <?php if (get_field('text_5')) : ?>
                  <?php the_field('text_5'); ?>
                <?php endif; ?>
              </p>
            </div>
          </div>
          <div class="card">
            <div class="layer"></div>
            <div class="content">
              <p>
                <?php if (get_field('text_6')) : ?>
                  <?php the_field('text_6'); ?>
                <?php endif; ?>
              </p>
            </div>
          </div>
          <div class="card recital-title ravel">
            <div class="layer"></div>
            <div class="content">
              <p>
                <?php if (get_field('text_7')) : ?>
                  <?php the_field('text_7'); ?>
                <?php endif; ?>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div><!-- .entry-content -->
    <div class="spacer-current-projects"></div>

  </section><!-- #post-<?php the_ID(); ?> -->

  <?php
  get_footer();
  ?>