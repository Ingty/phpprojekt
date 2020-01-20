<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css.css">
  </head>
  <body>
    <?php
    $login = $_GET["login"];
    $imie = $_GET["imie"];
    $nazwisko = $_GET["nazwisko"];
    $password = $_GET["password"];
    $con = mysqli_connect("localhost", "root", "", "projektingty");
    if($con === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }
    mysqli_query($con,'SET NAMES \'utf8\'');
      $query = "UPDATE user SET imie=\"$imie\", nazwisko=\"$nazwisko\", password=\"$password\" WHERE login=\"$login\"";
      mysqli_query($con,$query) or die (mysqli_error($con));
      echo '<script type="text/javascript">
            alert("Zmieniono poprawnie");
            window.location = "main.php";
            </script>';
      ?>
  </div>
  </body>
</html>
