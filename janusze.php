<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Strona Główna</title>
    <link rel="stylesheet" href="main.css">
  </head>
  <body>
    <?php
    echo '<div class="div-container"><div id="exportgora"><button onclick="window.location.href=\'main.php\'">Powrót</button><br>';
    echo '<form action="janusze.php" method="post">
          Sortowanie: <select name="sort">
            <option value="desc">Malejąco</option>
            <option value="asc">Rosnąco</option>
          </select><br>';
    $sort = 'asc';
    if(isSet($_POST["sort"])){
      $sort = $_POST["sort"];
    }
    $con = mysqli_connect('localhost','root','','projektingty') or die (mysqli_error($con));
    mysqli_query($con,'SET NAMES \'utf8\'');
    $result = mysqli_query($con,"SELECT * FROM janusze");
    $rekordy = ceil(mysqli_num_rows($result)/5);
    echo '<form action="janusze.php method="post">Strona: <select name="strona">';
    for($i=1;$i<=$rekordy;$i++){
      echo '<option value=" ' . $i . '">' . $i . '</option>';
    }
    echo '</select><br><input type="submit"></form></div></div>';
    $strona = 1;
    if(isSet($_POST["strona"])){
      $strona = $_POST["strona"];
    }
    $bottomrecord = ($strona*5)-4;
    $uprecord = $strona*5;
    $query = "SELECT * FROM janusze WHERE id BETWEEN $bottomrecord AND $uprecord ORDER BY data $sort";
    $result = mysqli_query($con,$query) or die(mysqli_error($con));
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
