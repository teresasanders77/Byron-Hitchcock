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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/recommendations.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/bach-project.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/contact.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/current-projects.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/about.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/home.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/style.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>

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