<?php
if(isSet($_POST['question1'])&&isSet($_POST['question2'])&&isSet($_POST['question3'])){
    $q1 = $_POST['question1'];
    $q2 = $_POST['question2'];
    $q3 = $_POST['question3'];
    $user = $_COOKIE['zalogowanyuser'];
    $con = mysqli_connect('localhost','root','','projektingty') or die (mysqli_error());
    $date = date('Y-m-d H:i:s');
    $query = mysqli_query($con,"insert into ankieta values ('','$user','$q1','$q2','$q3');");
    if($query){
      echo '<script type="text/javascript">
              window.location = "main.php?ankieta=t";
              </script>';
    }
    mysqli_close($con);
}
?>
