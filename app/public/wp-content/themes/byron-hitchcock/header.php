<!DOCTYPE html>
<html>

<head>
  <?php wp_head(); ?>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
  <header class="site-header">
    <div class="topnav" id="myTopnav">
      <div id="siteTitleWrapper">
        <h1 id="siteTitle"><a>Byron Hitchcock</a></h1>
      </div>
      <nav class="main-navigation">
        <a href="#" class="active">HOME</a>
        <a href="<?php echo site_url('/about-us') ?>">ABOUT</a>
        <a href="#">CURRENT PROJECTS</a>
        <a href="#">CONTACT</a>
        <a href="#">RECOMMENDATIONS</a>
        <a href="#">THE BACH PROJECT</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
          <i class="fa fa-bars"></i>
        </a>
      </nav>
    </div>
  </header>