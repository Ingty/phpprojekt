<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Logowanie</title>
    <link rel="stylesheet" href="main.css">
  </head>
<body>
  <?php
  if(isSet($_POST['username'])&&isSet($_POST['password'])){
      $user = $_POST['username'];
      $pass = $_POST['password'];
      $con = mysqli_connect('localhost','root','','projektingty') or die (mysqli_error());
      $query = mysqli_query($con,"select * FROM users WHERE login='$user' && password='$pass'");
      $row = mysqli_num_rows($query);
      $queryresult = mysqli_fetch_row($query);
      if($row == 1)
      {
        session_start();
        setcookie('zalogowanyuser', $user, time() + (3600), "/");
        if($queryresult[3]=="premium"){
          setcookie('typkonta', "premium", time() + (3600), "/");
        }
        else{
          setcookie('typkonta', "normal", time() + (3600), "/");
        }
        echo '<script type="text/javascript">
              window.location = "main.php";
              </script>';
      }
      else{
        echo 'Błędny login lub hasło';
      }
      mysqli_close($con);
  }
  else{
    print '<div class="logregbox"><h1> Logowanie </h1>
    <form action="login.php" method="POST">
       Login: <input type="text" name="username" required="required" /> <br/>
       Hasło: <input type="password" name="password" required="required" /> <br/>
       <input type="submit" value="Loguj  "/>
    </form>
    <button onclick="window.location.href=\'register.php\'">Rejestracja</button><br>
    <button onclick="window.location.href=\'index.php\'">Powrót</button><br>
    </div>';
  }
  ?>
</body>
</html>
