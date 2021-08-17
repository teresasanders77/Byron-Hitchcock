<?php
/*  Template Name: Recommendations  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
// Retrieve Header for site.
get_header();
?>



<body class="recommendations-body">
  <section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

    <div class="recommendations-entry-content">
      <div class="recommendations-header-text">
        <h1>Byron's Recommendations</h1>
      </div>
      <div class="mobile-recommendations">
        <?php
        $image = get_field('image');
        $size = 'custom size';
        if ($image) {
          echo wp_get_attachment_image($image, $size);
        } ?>
      </div>
      <div class="desktop-recommendations">
        <?php
        $image_desktop = get_field('non-mobile_image');
        $size = 'custom size';
        if ($image_desktop) {
          echo wp_get_attachment_image($image_desktop, $size);
        }
        ?>
      </div>
      <section>
        <div class="recommendations-text">
          <p>
            These all come with the highest recommendations from me. What I’ve learned to treasure in life are systems that work well and are simple to employ. These are all things I’ve stumbled upon over the years that fit this criteria and that keep bringing me back for more, in many cases for years and decades! Now, in no particular order:
          </p>
        </div>
        <div class="container-fluid">
          <div class="columns">
            <!-- CARD 1 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_1')) : ?>
                <?php while (have_rows('recommendations_card_1')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 2 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_2')) : ?>
                <?php while (have_rows('recommendations_card_2')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 3 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_3')) : ?>
                <?php while (have_rows('recommendations_card_3')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 4 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_4')) : ?>
                <?php while (have_rows('recommendations_card_4')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 5 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_5')) : ?>
                <?php while (have_rows('recommendations_card_5')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 6 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_6')) : ?>
                <?php while (have_rows('recommendations_card_6')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 7 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_7')) : ?>
                <?php while (have_rows('recommendations_card_7')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 8 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_8')) : ?>
                <?php while (have_rows('recommendations_card_8')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 9 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_9')) : ?>
                <?php while (have_rows('recommendations_card_9')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 10 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_10')) : ?>
                <?php while (have_rows('recommendations_card_10')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 11 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_11')) : ?>
                <?php while (have_rows('recommendations_card_11')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <!-- Card 12 -->
            <div class="recommendation-column col-12 col-md-6">
              <?php if (have_rows('recommendations_card_12')) : ?>
                <?php while (have_rows('recommendations_card_12')) : the_row();
                  // Get sub field values.
                  $image = get_sub_field('recommendations_image');
                  $title = get_sub_field('recommendations_title');
                  $text = get_sub_field('recommendations_text');
                  $link = get_sub_field('recommendations_link');
                ?>
                  <div class="card h-100">
                    <div class="card-image">
                      <a href="<?php echo $link ?>"><img class="img-fluid" src="<?php echo $image ?>" alt="recommendations image"></a>
                      <div class="card-content">
                        <div class="card-header">
                          <div class="card-title h5"><?php echo $title ?></div>
                        </div>
                        <div class="card-body">
                          <?php echo $text ?>
                          <div class="recommendations-button">
                            <a href="<?php echo $link ?>" target="_blank"><button class="btn btn-primary">Check it out</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php endwhile; ?>
              <?php endif; ?>
            </div>
            <div class="recommendations-spacer"></div>
          </div>
      </section>
    </div><!-- .entry-content -->

  </section><!-- #post-<?php the_ID(); ?> -->

  <?php
  get_footer();
  ?>