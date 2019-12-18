<?php
  if(isSet($_POST['username'])&&isSet($_POST['password'])){
      $user = $_POST['username'];
      $pass = $_POST['password'];
      $con = mysqli_connect('localhost','root','','projektingty') or die (mysqli_error());
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
            echo '<script type="text/javascript">
                  window.location = "login.html";
                  </script>';
        } else {
          echo "Błąd: " . $sql . "<br>" . mysqli_error($con);
        }
      }
      mysqli_close($con);
  }
 ?>
