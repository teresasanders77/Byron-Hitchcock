<?php
/*  Template Name: Current Projects  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
// Retrieve Header for site.
get_header();
?>

<header class="banner">
  <div class="header-text">
    <button id="menu-toggle" aria-label="Menu" aria-expanded="false" aria-controls="menu" style="margin-top: 0"></button>
    <h1>Current Projects</h1>
    <a href="/"> <img class="brand" src="<?php echo get_template_directory_uri(); ?>/images/Byron-Logo-White.png" width="100" alt="Byron Logo"></a>
  </div>
</header>


<body class="current-projects-body">
  <section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

    <div class="entry-content">
      <div class="top-section">
        <?php
        $image = get_field('image');
        $size = 'custom size';
        if ($image) {
          echo wp_get_attachment_image($image, $size);
        }
        ?>
      </div>
      <div class="current-projects">
        <div class="card">
          <div class="layer"></div>
          <div class="content">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis purus ac leo hendrerit porta sed sit amet purus. Sed accumsan sem ut orci euismod, at volutpat mauris pellentesque. Fusce quam nunc, iaculis non ligula eget, fringilla maximus sapien. Etiam ac sagittis massa, eu accumsan risus. Nulla aliquam imperdiet ante, eleifend porta orci sollicitudin nec.</p>
            <div class="image">
              <img src="../images/Byron-Logo-Color.png">
            </div>
            <div class="details">
              <h2>Someone Famous<br><span>Website Designer</span></h2>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="layer"></div>
          <div class="content">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis purus ac leo hendrerit porta sed sit amet purus. Sed accumsan sem ut orci euismod, at volutpat mauris pellentesque. Fusce quam nunc, iaculis non ligula eget, fringilla maximus sapien. Etiam ac sagittis massa, eu accumsan risus. Nulla aliquam imperdiet ante, eleifend porta orci sollicitudin nec.</p>
            <div class="image">
              <img src="../images/Byron-Logo-Black.png">
            </div>
            <div class="details">
              <h2>Someone Famous<br><span>Website Designer</span></h2>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="layer"></div>
          <div class="content">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis purus ac leo hendrerit porta sed sit amet purus. Sed accumsan sem ut orci euismod, at volutpat mauris pellentesque. Fusce quam nunc, iaculis non ligula eget, fringilla maximus sapien. Etiam ac sagittis massa, eu accumsan risus. Nulla aliquam imperdiet ante, eleifend porta orci sollicitudin nec.</p>
            <div class="image">
              <img src="../images/Byron-Logo-White.png">
            </div>
            <div class="details">
              <h2>Someone Famous<br><span>Website Designer</span></h2>
            </div>
          </div>
        </div>
      </div>
    </div><!-- .entry-content -->

  </section><!-- #post-<?php the_ID(); ?> -->

  <?php
  get_footer();
  ?>