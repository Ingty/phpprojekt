<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Strona Główna</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css.css">
  </head>
  <body>
    <?php
    $tabela = $_GET["tabela"];
    echo '<div class="login-form">';
    echo '<form action="export.php?tabela='. $tabela .'" method="post">
          Sortowanie: <select class="form-control show-tick sel" data-width="fit" name="sort">
            <option value="desc">Malejąco</option>
            <option value="asc">Rosnąco</option>
          </select><br>';
    $sort = 'asc';
    if(isSet($_POST["sort"])){
      $sort = $_POST["sort"];
    }
    $con = mysqli_connect('localhost','root','','projektingty') or die (mysqli_error($con));
    mysqli_query($con,'SET NAMES \'utf8\'');
    $result = mysqli_query($con,"SELECT * FROM $tabela");
    $rekordy = ceil(mysqli_num_rows($result)/5);
    echo '<form action="export.php?tabela='. $tabela .'" method="post">Strona:<br><select class="form-control show-tick sel" data-width="fit" name="strona">';
    for($i=1;$i<=$rekordy;$i++){
      echo '<option value=" ' . $i . '">' . $i . '</option>';
    }
    echo '</select><button type="submit" class="btn btn-primary btn-lg btn-block">Prześlij</button>
    <a href="main.php" style="color: white;" class="btn btn-primary btn-lg btn-block">Powrót</a>
    </form></div>';
    $strona = 1;
    if(isSet($_POST["strona"])){
      $strona = $_POST["strona"];
    }
    $bottomrecord = ($strona*5)-4;
    $uprecord = $strona*5;
    $query = "SELECT * FROM $tabela WHERE id BETWEEN $bottomrecord AND $uprecord ORDER BY data $sort";
    $result = mysqli_query($con,$query) or die(mysqli_error($con));
    $i = 0;
    while ($row = mysqli_fetch_assoc($result)) {
        echo '<div class="export justify-content-center text-center">';
        foreach($row as $key => $field) {
            if($i==0){
              $currentid = htmlspecialchars($field);
            }
            if($i==1){
              echo '<a href="delete.php?id=' . $currentid . '&tabela='. $tabela . '">Usun rekord</a>';
              echo '<p class=\'autor\'>  ' . htmlspecialchars($field) . '  </p>';
            }
            if($i==2){
              echo '<p class=\'tytul\'>  ' . htmlspecialchars($field) . '  </p>';
            }
            if($i==3){
              echo '<p class=\'data\'>  ' . htmlspecialchars($field) . '  </p>';
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
