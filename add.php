<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="main.css">
  </head>
  <body>
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
          echo "Records inserted successfully.";
      } else{
          echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
      }
      mysqli_close($link);

    }
    else{
      print '<div class="div-container"><div id="dodajdiv"><form action="add.php" method="post">
      Kategoria:<br>
        <select name="tabela">
          <option name="klasyki" value="klasyki">Klasyki</option>
          <option name="krotkie" value="krotkie">Krótkie</option>
          <option name="plottwist" value="capsrage">CAPS RAGE</option>
          <option name="postpasta" value="janusze">Janusze i grażyny</option>
        </select><br>
        Nazwa:<br><input type="text" name="nazwa"><br>
        Tresc:<br><input id="tekstduzy" type="text" name="tresc"><br>
        Data:<br><input type="date" name="data"><br>
        Autor:<br><input type="text" name="autor"><br>
        <input type="submit">
      </form></div></div>';
    }
    ?>

  </body>
</html>
