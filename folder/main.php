<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Strona główna</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css.css">
  </head>
<body>
  <div class="login-form">
        <form>
          <h2 class="text-center">Witaj na Wypoku!</h2>
          <div class="form-group">
              <button onclick='window.location.href="export.php?tabela=klasyki"' type="button" class="btn btn-primary btn-lg btn-block">Klasyki</button>
          </div>
          <div class="form-group">
              <button onclick='window.location.href="export.php?tabela=krotkie"' type="button" class="btn btn-primary btn-lg btn-block">Krótkie</button>
          </div>
          <div class="form-group">
              <button onclick='window.location.href="export.php?tabela=capsrage"' type="button" class="btn btn-primary btn-lg btn-block">CAPSRAGE</button>
          </div>
          <div class="form-group">
              <button onclick='window.location.href="export.php?tabela=janusze"' type="button" class="btn btn-primary btn-lg btn-block">Janusze i Grażyny</button><br>
          </div>
          <div class="form-group">
              <button onclick='window.location.href="add.php"' type="button" id="asdf" class="btn btn-primary btn-lg btn-block" hidden="hidden">Dodaj nową pastę</button>
          </div>
          <div class="form-group">
              <button onclick='window.location.href="statystyki.php"' type="button" class="btn btn-primary btn-lg btn-block">Statystyki</button>
          </div>
          <div class="form-group">
              <button onclick='window.location.href="user.php"' type="button" class="btn btn-primary btn-lg btn-block">Informacje o użytkowniku</button><br>
          </div>
          <div class="form-group">
              <button onclick='window.location.href="logout.php"' type="button" class="btn btn-primary btn-lg btn-block">Wyloguj</button>
          </div>
       </form>
</div>
</body>
</html>
<?php
  $c=$_COOKIE['zalogowanyuser'];
  if($c=="premium"||$c=="admin"){
    echo '<script>document.getElementById("asdf").removeAttribute("hidden");</script>';
  }
?>
