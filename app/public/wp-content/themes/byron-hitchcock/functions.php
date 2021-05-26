<?php

function byron_files()
{
  wp_enqueue_style('byron_main_styles', get_stylesheet_uri());
}

add_action('wp_enqueue_scripts', 'byron_files');
