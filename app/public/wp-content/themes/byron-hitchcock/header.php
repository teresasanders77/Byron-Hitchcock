<!DOCTYPE html>
<html>

<head>
  <?php wp_head(); ?>
</head>

<body>
  <header class="banner">
    <button id="menu-toggle" aria-label="Menu" aria-expanded="false" aria-controls="menu"></button>
    <div class="brand"><a href="">&bopf;</a></div>
  </header>

  <nav id="menu" aria-hidden="true" aria-labelledby="menu-toggle" role="navigation">
    <ul>
      <li><a href="#">HOME</a></li>
      <li><a href="#">ABOUT</a></li>
      <li><a href="#">CURRENT PROJECTS</a></li>
      <li><a href="#">CONTACT</a></li>
      <li><a href="#">RECOMMENDATIONS</a></li>
      <li><a href="#">THE BACH PROJECT</a></li>
    </ul>
  </nav>