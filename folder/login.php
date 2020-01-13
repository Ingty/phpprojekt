<?php
if(isSet($_POST['username'])&&isSet($_POST['password'])){
    $user = $_POST['username'];
    $pass = $_POST['password'];
    $con = mysqli_connect('localhost','root','','projektingty') or die (mysqli_error());
    $query = mysqli_query($con,"select * FROM users WHERE login='$user' && password='$pass'");
    $row = mysqli_num_rows($query);
    $queryresult = mysqli_fetch_row($query);
    $date = date('Y-m-d H:i:s');
    if($row == 1)
    {
      $query = mysqli_query($con,"insert into historialog values ('','$user','$date');");
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
?>
