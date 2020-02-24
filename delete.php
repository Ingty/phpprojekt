<?php
  $user=$_COOKIE['zalogowanyuser'];
  $id = $_GET["id"];
  $tabela = $_GET["tabela"];
  $date = date('Y-m-d H:i:s');
  $con = mysqli_connect('localhost','root','','projektingty') or die (mysqli_error($con));
  mysqli_query($con,'SET NAMES \'utf8\'');
  $query = mysqli_query($con,"DELETE FROM $tabela WHERE id='$id'");
  mysqli_query($con,"INSERT INTO log VALUES ('','$user','$date','usunal paste')");
  if($query){
    echo 'Usunięto pomyślnie';
    echo '<script type="text/javascript">
          window.location = "export.php?tabela='.$tabela.'";
          </script>';
  }
  else{
    echo 'Error!';
  }
 ?>
