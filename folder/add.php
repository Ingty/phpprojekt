<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css.css">
  </head>
  <body onload="onl();">
    <?php
      if(isSet($_POST["tresc"])&&isSet($_POST["data"])&&isSet($_POST["autor"])&&isSet($_POST["tabela"])&&isSet($_POST["nazwa"])){
      $nazwa = $_POST["nazwa"];
      $tresc = $_POST["tresc"];
      $data = $_POST["data"];
      $autor = $_POST["autor"];
      $tabela = $_POST["tabela"];
      $link = mysqli_connect("localhost", "root", "", "projektingty");
      if($link === false){
          die("ERROR: Could not connect. " . mysqli_connect_error());
      }
      for($i=0;$i<strlen($tresc);$i++){
        if($tresc[$i]=='\''||$tresc[$i]=='\"'){
          $tresc[$i]=' ';
        }
      }
      mysqli_query($link,'SET NAMES \'utf8\'');
      $sql = "INSERT INTO $tabela VALUES ('','$autor','$nazwa', '$data', '$tresc')";
      if(mysqli_query($link, $sql)){
          echo '<script>function onl(){document.getElementById("REEE").innerHTML = "Pasta '. $nazwa .' dodana poprawnie!";} </script>';
      } else{
          echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
      }
      mysqli_close($link);

    }
    ?>
    <div class="login-form">
    <form action="add.php" method="post">
        <h2 class="text-center">Dodawanie nowej pasty</h2>
        <h3 id="REEE" class="text-center"></h3>
        <div class="form-group">
          Kategoria:
          <select class="form-control show-tick sel" data-width="fit" name="tabela">
            <option value="klasyki">Klasyki</option>
            <option value="janusze">Janusze</option>
            <option value="capsrage">CAPSRAGE</option>
            <option value="krotkie">Krótkie</option>
          </select>
        </div>
		    <div class="form-group">
          Nazwa:
            <input type="text" class="form-control" name="nazwa" required="required">
        </div>
        <div class="form-group">
          Data:
            <input type="date" class="form-control" name="data" required="required">
        </div>
        <div class="form-group">
          Autor:
            <input type="test" class="form-control" name="autor" required="required">
        </div>
        <div class="form-group">
          Treść:
            <textarea class="form-control" name="tresc" required="required" ></textarea>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block">Dodaj</button>
        </div>
        <p class="text-center"><a href="main.php">Powrót</a></p>
    </form>
  </div>
  </body>
</html>
