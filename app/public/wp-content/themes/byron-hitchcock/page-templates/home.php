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
    <div class="entry-content">
      <blockquote>
        <em>"A FEARLESSLY EXPRESSIVE SOLOIST"</em>
        <br>
        <cite>- THE BOSTON GLOBE</cite>
      </blockquote>
    </div><!-- .entry-content -->
  </div>

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>