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
                <iframe width="560" height="315" src="https://www.youtube.com/embed/fwMrp_MaHa8" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/fwMrp_MaHa8><img src=http://img.youtube.com/vi/fwMrp_MaHa8/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/V6M0spkNaBY" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/V6M0spkNaBY><img src=http://img.youtube.com/vi/V6M0spkNaBY/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/FQZtk3BndCc" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/FQZtk3BndCc><img src=http://img.youtube.com/vi/FQZtk3BndCc/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/QFAAlUZTvuE" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/QFAAlUZTvuE><img src=http://img.youtube.com/vi/QFAAlUZTvuE/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                <iframe width="560" height="315" src="https://www.youtube.com/embed/1BFgZh271mU" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/1BFgZh271mU><img src=http://img.youtube.com/vi/1BFgZh271mU/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/nPEw-I6qvbw" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/nPEw-I6qvbw><img src=http://img.youtube.com/vi/nPEw-I6qvbw/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/Uvo36LfWxMk" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/Uvo36LfWxMk><img src=http://img.youtube.com/vi/Uvo36LfWxMk/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/tcfV4Od2Fkg" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/tcfV4Od2Fkg><img src=http://img.youtube.com/vi/tcfV4Od2Fkg/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="five video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/B0RJ7jMu-3Y" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/B0RJ7jMu-3Y><img src=http://img.youtube.com/vi/B0RJ7jMu-3Y/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="six video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/eQmgmkBqfNk" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/eQmgmkBqfNk><img src=http://img.youtube.com/vi/eQmgmkBqfNk/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="seven video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/dWmUm7suO8Y" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/dWmUm7suO8Y><img src=http://img.youtube.com/vi/dWmUm7suO8Y/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="eight video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/uzLim07an8A" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/uzLim07an8A><img src=http://img.youtube.com/vi/uzLim07an8A/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                <iframe width="560" height="315" src="https://www.youtube.com/embed/72z-ST0ld4U" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/72z-ST0ld4U><img src=http://img.youtube.com/vi/72z-ST0ld4U/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/U_VwaFSwx-U" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/U_VwaFSwx-U><img src=http://img.youtube.com/vi/U_VwaFSwx-U/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/FJL6DFSZ1XQ" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/FJL6DFSZ1XQ><img src=http://img.youtube.com/vi/FJL6DFSZ1XQ/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/vyT4hUHnAyM" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/vyT4hUHnAyM><img src=http://img.youtube.com/vi/vyT4hUHnAyM/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                <iframe width="560" height="315" src="https://www.youtube.com/embed/CFjDK_a-G1c" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/CFjDK_a-G1c><img src=http://img.youtube.com/vi/CFjDK_a-G1c/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/SQ6humX9xzE" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/SQ6humX9xzE><img src=http://img.youtube.com/vi/SQ6humX9xzE/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/4MbhtiEvbEw" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/4MbhtiEvbEw><img src=http://img.youtube.com/vi/4MbhtiEvbEw/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/bjYbaOAtxjg" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/bjYbaOAtxjg><img src=http://img.youtube.com/vi/bjYbaOAtxjg/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="five video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/YRKm3ppDopk" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/YRKm3ppDopk><img src=http://img.youtube.com/vi/YRKm3ppDopk/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                <iframe width="560" height="315" src="https://www.youtube.com/embed/s4U13d2fdxQ" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/s4U13d2fdxQ><img src=http://img.youtube.com/vi/s4U13d2fdxQ/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/jiQ3MmQEJm0" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/jiQ3MmQEJm0><img src=http://img.youtube.com/vi/jiQ3MmQEJm0/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/FNRiKdWUu7I" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/FNRiKdWUu7I><img src=http://img.youtube.com/vi/FNRiKdWUu7I/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/51uIwZ77XMU" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/51uIwZ77XMU><img src=http://img.youtube.com/vi/51uIwZ77XMU/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                <iframe width="560" height="315" src="https://www.youtube.com/embed/j93AFP8IkL4" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/j93AFP8IkL4><img src=http://img.youtube.com/vi/j93AFP8IkL4/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="two video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/0_XU6bJPLJQ" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/0_XU6bJPLJQ><img src=http://img.youtube.com/vi/0_XU6bJPLJQ/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="three video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/cmjSijcVS44" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/cmjSijcVS44><img src=http://img.youtube.com/vi/cmjSijcVS44/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="four video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/H4vl__dk0zM" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/H4vl__dk0zM><img src=http://img.youtube.com/vi/H4vl__dk0zM/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="five video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/_vQEyn6ri6U" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/_vQEyn6ri6U><img src=http://img.youtube.com/vi/_vQEyn6ri6U/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="six video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/etlXWt_yOmQ" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black}</style><a href=https://www.youtube.com/embed/etlXWt_yOmQ><img src=http://img.youtube.com/vi/etlXWt_yOmQ/hqdefault.jpg><span>▶</span></a>"title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
          </div>         
      </div>
    </nav>

  </nav>
  </div><!-- .entry-content -->
  <div class="bach-spacer"></div>

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>