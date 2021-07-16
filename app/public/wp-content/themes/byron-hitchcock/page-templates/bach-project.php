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

<div class="bach-header-text">
        <h1>THE BACH PROJECT</h1>
      </div>
  <div class="entry-content">
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
          $image_desktop = get_field('non-mobile_image');
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
          <div id="bach-container">
            <div class="one video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/fwMrp_MaHa8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/V6M0spkNaBY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/FQZtk3BndCc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/QFAAlUZTvuE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
          </div>      
      </div>
    </nav>

    <nav class="drop-down-menu">
      <input type="checkbox" class="activate" id="accordion-2" name="accordion-2">
      <label for="accordion-2" class="menu-title">Partita I in b minor, BWV 1002</label>
      <div class="drop-down">
          <div id="bach-container">
            <div class="one video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/1BFgZh271mU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/nPEw-I6qvbw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/Uvo36LfWxMk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/tcfV4Od2Fkg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="five video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/B0RJ7jMu-3Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="six video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/eQmgmkBqfNk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="seven video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/dWmUm7suO8Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="eight video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/uzLim07an8A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
          </div>
          
      </div>
    </nav>

    <nav class="drop-down-menu">
      <input type="checkbox" class="activate" id="accordion-3" name="accordion-3">
      <label for="accordion-3" class="menu-title">Sonata II in a minor, BWV 1003</label>
      <div class="drop-down">
          <div id="bach-container">
            <div class="one video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/72z-ST0ld4U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/U_VwaFSwx-U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/FJL6DFSZ1XQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/vyT4hUHnAyM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
          </div>         
      </div>
    </nav>

    <nav class="drop-down-menu">
      <input type="checkbox" class="activate" id="accordion-4" name="accordion-4">
      <label for="accordion-4" class="menu-title">Partita II in d minor, BWV 1004</label>
      <div class="drop-down">
          <div id="bach-container">
            <div class="one video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/CFjDK_a-G1c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/SQ6humX9xzE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/4MbhtiEvbEw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/bjYbaOAtxjg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="five video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/YRKm3ppDopk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
          </div>         
      </div>
    </nav>

    <nav class="drop-down-menu">
      <input type="checkbox" class="activate" id="accordion-5" name="accordion-5">
      <label for="accordion-5" class="menu-title">Sonata III in C Major, BWV 1005</label>
      <div class="drop-down">
          <div id="bach-container">
            <div class="one video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/s4U13d2fdxQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/jiQ3MmQEJm0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/FNRiKdWUu7I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/51uIwZ77XMU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
          </div>         
      </div>
    </nav>

    <nav class="drop-down-menu">
      <input type="checkbox" class="activate" id="accordion-6" name="accordion-6">
      <label for="accordion-6" class="menu-title">Partita III in E Major, BWV 1006</label>
      <div class="drop-down">
          <div id="bach-container">
            <div class="one video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/j93AFP8IkL4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/0_XU6bJPLJQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/cmjSijcVS44" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/H4vl__dk0zM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="five video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/_vQEyn6ri6U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="six video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/etlXWt_yOmQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
          </div>         
      </div>
    </nav>

  </nav>
  </div><!-- .entry-content -->

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>