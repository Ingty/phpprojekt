<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Główna</title>
    <link rel="stylesheet" href="main.css">
  </head>
  <?php
  if(isSet($_COOKIE['zalogowanyuser'])){
    echo '<div class="div-container"><div id=\'main\'>';
    echo '<h2>Witaj na głównej stronie <b>' . $_COOKIE["zalogowanyuser"] . '</b>!</h2>';
    echo '<h3>Kategorie: </h3>';
    echo '<button onclick="window.location.href=\'klasyki.php\'">Klasyki</button>';
    echo '<button onclick="window.location.href=\'krotkie.php\'">Krótkie</button>';
    echo '<button onclick="window.location.href=\'capsrage.php\'">CAPSRAGE</button>';
    echo '<button onclick="window.location.href=\'janusze.php\'">Janusze i Grażyny</button>';
    echo '<br><br><br>';
    if($_COOKIE['typkonta']=="premium"){
      echo '<button onclick="window.location.href=\'add.php\'">Dodaj nową pastę</button>';
    }
    echo '<button onclick="window.location.href=\'logout.php\'">Wyloguj</button>';
    echo '</div></div>';
  }
  else{
    header('Location: login.php');
  }
  ?>
  <body>

  </body>
</html>
