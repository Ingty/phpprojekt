<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Strona główna</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css.css">
  </head>
  <body>
    <?php
    $con = mysqli_connect("localhost", "root", "", "projektingty");
    if($con === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }
    mysqli_query($con,'SET NAMES \'utf8\'');
    $querya = mysqli_query($con,'SELECT * FROM klasyki');
    $queryb = mysqli_query($con,'SELECT * FROM janusze');
    $queryc = mysqli_query($con,'SELECT * FROM capsrage');
    $queryd = mysqli_query($con,'SELECT * FROM krotkie');
    if ($querya)
    {
        $rowa = mysqli_num_rows($querya);
        $rowb = mysqli_num_rows($queryb);
        $rowc = mysqli_num_rows($queryc);
        $rowd = mysqli_num_rows($queryd);
        $dodanepasty = array($rowa,$rowb,$rowc,$rowd);
        $dataPoints = array(
            array("label"=> "Klasyki", "y"=> $dodanepasty[0]),
            array("label"=> "Janusze", "y"=> $dodanepasty[1]),
            array("label"=> "CAPSRAGE", "y"=> $dodanepasty[2]),
            array("label"=> "Krotkie", "y"=> $dodanepasty[3])
        );
    }

    ?>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js">
    </script>
    <script>
        window.onload = function () {

            var chart = new CanvasJS.Chart("chartContainer", {
                animationEnabled: true,
                title:{
                    text: "Ilość past w poszczególnych kategoriach"
                },
                axisY: {
                    title: "Ilość",
                    titleFontColor: "#4F81BC",
                    lineColor: "#4F81BC",
                    labelFontColor: "#4F81BC",
                    tickColor: "#4F81BC"
                },
                toolTip: {
                    shared: true
                },
                legend: {
                    cursor:"pointer",
                    itemclick: toggleDataSeries
                },
                data: [{
                    type: "column",
                    name: "Ilość",
                    legendText: "Ilość",
                    showInLegend: true,
                    dataPoints:<?php echo json_encode($dataPoints,
                            JSON_NUMERIC_CHECK); ?>
                }]
            });
            chart.render();

            function toggleDataSeries(e) {
                if (typeof(e.dataSeries.visible) === "undefined"
                            || e.dataSeries.visible) {
                    e.dataSeries.visible = false;
                }
                else {
                    e.dataSeries.visible = true;
                }
                chart.render();
            }

        }
    </script>
      <div class="form-group">
        <button onclick='window.location.href="main.php"' type="button" class="btn btn-primary btn-lg btn-block">Powrót</button>
      </div>
    <div id="chartContainer" style="height: 700px; width: 100%;"></div>

  </body>
</html>
