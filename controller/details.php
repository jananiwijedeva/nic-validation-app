<?php

$host = 'localhost';
$username = 'root';
$password = '';
$dbname = 'task1';

$conn = mysqli_connect($host, $username, $password, $dbname);


if (!$conn) {
    die("Connection Failed: " . mysqli_connect_error());
}

//gender summary
$sql = "SELECT Gender, COUNT(*) AS count FROM details GROUP BY Gender";
$result = mysqli_query($conn, $sql);
$male_count = 0;
$female_count = 0;
while ($row = mysqli_fetch_assoc($result)) {
    if ($row['Gender'] == 'Male') {
        $male_count = $row['count'];
    } else if ($row['Gender'] == 'Female') {
        $female_count = $row['count'];
    }
}

//total records
$sql = "SELECT COUNT(*) AS total_details FROM details";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$total_details = $row['total_details'];

//download CSV fun:
function downloadCSV($conn)
{
    header('Content-Type: text/csv');
    header('Content-Disposition: attachment; filename="details_download.csv"');
    $output = fopen('php://output', 'w');

    // Output CSV header
    fputcsv($output, array('NICID', 'NIC', 'Birthday', 'Age', 'Gender'));

    // Query to fetch data
    $data_query = "SELECT * FROM details";
    $data_result = mysqli_query($conn, $data_query);

    // Output data
    while ($row = mysqli_fetch_assoc($data_result)) {
        fputcsv($output, $row);
    }

    fclose($output);
    exit();
}

if (isset($_GET['type'])) {
    $downloadType = $_GET['type'];
    downloadCSV($conn);
}

?>







<!DOCTYPE html>
<html lang="en">

<head>
    <title>Details</title>
    <link rel="icon" href="../public/favicon.ico">
    <link rel="stylesheet" href="../public/details.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>

</head>
</head>

<body>

    <h1>Details</h1>
    <div id="d1">
        <table id="tb">
            <tr>
                <th>Total Details</th>
                <th>Female Count</th>
                <th>Male Count</th>
            </tr>
            <tr>
                <td><?php echo $total_details; ?></td>
                <td><?php echo $female_count; ?></td>
                <td><?php echo $male_count; ?></td>
            </tr>
        </table>

    <canvas id="ageChart"></canvas>

        <div id="butn">

            <button id="btn"><a id="anc" href="?type=csv" download>Download CSV</a></button>
            <button id="btnback">Back</button>

        </div>
        <script>
            //re-derict back button
            document.getElementById("btnback").addEventListener("click", function () {
                window.location.href = "../view/dashbord.html";
            });


            var ageData = {
                labels: ["Female", "Male"],
                datasets: [{
                    data: [<?php echo $female_count; ?>, <?php echo $male_count; ?>],
                    backgroundColor: ["green", "red"]
                    
                }]
            };

            var ageChart = new Chart(document.getElementById('ageChart'), {
                type: 'bar',
                data: ageData
            });
        </script>
    </div>
</body>

</html>