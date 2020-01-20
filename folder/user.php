$user=$_COOKIE['zalogowanyuser'];
    $con = mysqli_connect("localhost", "root", "", "projektingty");
    if($con === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }
    mysqli_query($con,'SET NAMES \'utf8\'');
    $query = mysqli_query($con,"select * FROM user WHERE login='$user'");
    $i = 0;
    while ($row = mysqli_fetch_assoc($query)) {
        foreach($row as $key => $field) {
            if($i==1){
              $login = $field;
            }
            if($i==2){
              $password = 0;
            }
            if($i==3){
              $typkonta = $field;
            }
            if($i==4){
              $imie = $field;
            }
            if($i==5){
              $nazwisko = $field;
            }
            if($i==6){
              $dodpasty = $field;
            }
            $i++;
        }
    }
