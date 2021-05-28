<?php
/*  Template Name: Contact  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
// Retrieve Header for site.
get_header();
?>

<section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

  <div class="entry-content">
  </div><!-- .entry-content -->

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>