<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Strona Główna</title>
    <link rel="stylesheet" href="main.css">
  </head>
  <body>
    <?php
    echo '<button onclick="window.location.href=\'main.php\'">Powrót</button><br>';
    $con = mysqli_connect('localhost','root','','projektingty') or die (mysqli_error());
    mysqli_query($con,'SET NAMES \'utf8\'');
    $query = "SELECT * FROM krotkie";
    $result = mysqli_query($con,$query) or die(mysqli_error());
    $i = 0;
    while ($row = mysqli_fetch_assoc($result)) {
        echo '<div class=\'export\'>';
        foreach($row as $key => $field) {
            if($i==1){
              echo '<p class=\'autor\'>  ' . htmlspecialchars($field) . '  </p>';
            }
            if($i==2){
              echo '<p class=\'tytul\'>  ' . htmlspecialchars($field) . '  </p>';
            }
            if($i==3){
              echo '<p class=\'data\'>  ' . htmlspecialchars($field) . '  </p><br>';
            }
            if($i==4){
              echo '<p class=\'tresc\'>  ' . htmlspecialchars($field) . '  </p>';
            }
            $i++;
            if($i==5){
              $i=0;
            }
        }
        echo '</div>';
    }
    ?>
   </div>
  </body>
</html>
