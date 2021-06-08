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

          <h2>A native of Wyoming, Byron Hitchcock has performed across the United States, Latin America, and Asia to critical acclaim.</h2>

          <p>Praised by the Boston Globe for his “fearlessly expressive” playing and his “finely honed tone,” Mr. Hitchcock has established himself as a dynamic and versatile artist, appearing on the concert stage as a concertmaster, soloist, and chamber musician. In 2019, Mr. Hitchcock assumed the role of Concertmaster of both the Opera Colorado Orchestra in Denver, Colorado, and of the Central City Opera Orchestra in Central City, Colorado.</p>

          <a href="/about" class="button-small" role="button">
            <span class="button-content-wrapper">
              <span class="button-text">READ MORE</span>
            </span>
          </a>
        </div>
      </div>
    </div><!-- .entry-content -->
  </div>

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>