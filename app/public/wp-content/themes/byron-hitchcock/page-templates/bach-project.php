<?php
/*  Template Name: The Bach Project  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
// Retrieve Header for site.
get_header();
?>
<header class="banner current">
  <button id="menu-toggle" style="margin-top: 2%" aria-label="Menu" aria-expanded="false" aria-controls="menu" style="margin-top: 0"></button>
  <a href="/"> <img class="brand" src="<?php echo get_template_directory_uri(); ?>/images/Byron-Logo-White.png" width="100" alt="Byron Logo"></a>
</header>

<body class="bach-body">
<section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>


  <div class="entry-content">
    <div class="header-text">
        <h1>THE BACH PROJECT</h1>
      </div>
        <div class="mobile-bach">
          <?php
          $image = get_field('image');
          $size = 'custom size';
          if ($image) {
            echo wp_get_attachment_image($image, $size);
          } ?>
        </div>
        <div class="desktop-bach">
          <?php
          $image_desktop = get_field('image2');
          $size = 'custom size';
          if ($image_desktop) {
            echo wp_get_attachment_image($image_desktop, $size);
          }
          ?>
        </div>
  <nav class="menu">

    <nav class="drop-down-menu">
      <input type="checkbox" class="activate" id="accordion-1" name="accordion-1">
      <label for="accordion-1" class="menu-title">Sonata I in g minor, BWV 1001</label>
      <div class="drop-down">
      <?php echo do_shortcode("[origincode_videogallery id='2']"); ?>
      </div>
    </nav>

    <nav class="drop-down-menu">
      <input type="checkbox" class="activate" id="accordion-2" name="accordion-2">
      <label for="accordion-2" class="menu-title">Drop-Down 2</label>
      
      <div class="drop-down">
        <a href="#">Normal</a>
        <a href="#">Normal</a>
        <a href="#">Normal</a>
        <a href="#">Normal</a>
        <a href="#">Normal</a>
        <a class="last" href="#">Normal</a>
      </div>
    </nav>

  </nav>
  </div><!-- .entry-content -->

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>