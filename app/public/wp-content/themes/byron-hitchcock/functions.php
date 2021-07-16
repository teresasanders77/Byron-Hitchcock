<?php

function byron_files()
{
  wp_enqueue_script('byron-main-js', get_stylesheet_directory_uri() . '/js/scripts.js', array('jquery'));
  // wp_enqueue_style('byron_main_styles', get_stylesheet_uri());
}

add_action('wp_enqueue_scripts', 'byron_files');

add_filter('acf/settings/remove_wp_meta_box', '__return_false');
