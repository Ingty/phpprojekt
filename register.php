<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Rejestracja</title>
    <link rel="stylesheet" href="main.css">
  </head>
    <body>
        <?php
          if(isSet($_POST['username'])&&isSet($_POST['password'])){
              $user = $_POST['username'];
              $pass = $_POST['password'];
              $con = mysqli_connect('localhost','root','','projekt') or die (mysqli_error());
              $query = mysqli_query($con,"select count(login) FROM users WHERE login='$user'");
              $row = mysqli_fetch_array($query);
              $exists = $row[0];
              if($exists > 0)
              {
                  exit('Podany login juz istnieje!');
              }
              else{
                 $sql = "INSERT INTO users(login,password) VALUES ('$user','$pass')";
                if (mysqli_query($con, $sql)) {
                    echo "Zarejestrowano";
                } else {
                  echo "Błąd: " . $sql . "<br>" . mysqli_error($con);
                }
              }
              mysqli_close($con);
          }
          else{
            print '<div class="logregbox"><h1> Rejestracja </h1>
            <form action="register.php" method="POST">
               <input type="text" name="username" required="required" value="login" /><br/>
               <input type="password" name="password" required="required" value="password" /><br/>
               <input type="submit" value="Zarejestruj"/>
            </form>
            <button onclick="window.location.href=\'index.php\'">Powrót</button><br><br></div>';
          }
         ?>
    </body>
</html>
