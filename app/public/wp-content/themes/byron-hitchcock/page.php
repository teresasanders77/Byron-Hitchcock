<?php get_header(); ?>

<main role="main" aria-label="Content">
  <!-- section -->
  <section>

    <h1 class="main-page-title"><?php the_title(); ?></h1>

    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

        <!-- article -->
        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

          <?php the_content(); ?>

        </article>
        <!-- /article -->

      <?php endwhile; ?>

    <?php else : ?>

      <!-- article -->
      <article>

        <h2><?php include("page.php"); ?></h2>

      </article>
      <!-- /article -->

    <?php endif; ?>

  </section>
  <!-- /section -->
</main>
<?php get_footer(); ?>