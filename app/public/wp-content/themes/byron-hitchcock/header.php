<?php


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
function enqueue_header_scripts()
{
  // edit the stars below with your file name if you need JavaScript.
  wp_enqueue_script('script_handle', '/wp-content/themes/byron-hitchcock/js/scripts.js', '0.0.1', false);
  // wp_enqueue_script( 'script_handle', '/wp-content/themes/awmi-net-2018/jsDist/********.min.js', array('cashdomlibrary'), '0.0.1', false);
}
add_action('wp_enqueue_scripts', 'enqueue_header_scripts');

?>

<!DOCTYPE html>
<html>

<head>
  <?php wp_head(); ?>
</head>

<body>
  <header class="banner">
    <button id="menu-toggle" aria-label="Menu" aria-expanded="false" aria-controls="menu"></button>
    <a href="/"> <img class="brand" src="<?php echo get_template_directory_uri(); ?>/images/Byron-Logo-White.png" width="100" alt="Byron Logo"></a>
  </header>

  <nav id="menu" aria-hidden="true" aria-labelledby="menu-toggle" role="navigation">
    <ul>
      <li><a href="/">HOME</a></li>
      <li><a href="/about">ABOUT</a></li>
      <li><a href="/current-projects">CURRENT PROJECTS</a></li>
      <li><a href="/contact">CONTACT</a></li>
      <li><a href="/recommendations">RECOMMENDATIONS</a></li>
      <li><a href="/bach-project">THE BACH PROJECT</a></li>
    </ul>
  </nav>