<?php
/*  Template Name: Home  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
// Retrieve Header for site.
get_header();
?>

<section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
  <div id="home_page_wrapper">
    <div id="spacer">
      <blockquote>
        <em>"A FEARLESSLY EXPRESSIVE SOLOIST"</em>
        <br>
        <cite>- THE BOSTON GLOBE</cite>
      </blockquote>
    </div>
    <div class="entry-content">
      <div class="content-wrapper">
        <div class="bio-teaser">
          <?php if (get_field('text')) : ?>
            <?php the_field('text'); ?>
          <?php endif; ?>
          <div id="container">
            <button class="learn-more">
              <a href="/about">
                <span class="circle" aria-hidden="true">
                  <span class="icon arrow"></span>
                </span>
                <span class="button-text">READ MORE</span>
              </a>
            </button>
          </div>
        </div>
        <div class="slider">
          <?php
          echo do_shortcode('[smartslider3 slider="2"]');
          ?>
        </div>
        <div class="vid-container">
          <?php echo do_shortcode('[Rich_Web_Video id="1"]'); ?>
        </div>
      </div><!-- .entry-content -->
    </div>

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>