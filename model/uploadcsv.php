<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSV File Upload</title>
    <link rel="icon" href="../public/favicon.ico">
    <link rel="stylesheet" href="../public/uploadcsv.css">
</head>
<body>
    <div id="main">
    <div id="div1">
    <h1>CSV File Upload</h1>
    </div>

    <form id="uploadForm" action="" method="post" enctype="multipart/form-data">
        <label for="csvFiles">Choose CSV Files</label>
        <br/>
        <input type="file" id="csvFiles" name="csvFiles[]" accept=".csv" multiple required onchange="displayFileDetails()">
        <br/>
        
        <button id="sbbtn" type="submit">Upload</button>
    </form>
    </div>
    <button id="btnback">Back</button>

    <?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $uploadedFiles = $_FILES['csvFiles'];

    for ($i = 0; $i < count($uploadedFiles['name']); $i++) {
        if ($uploadedFiles['error'][$i] === UPLOAD_ERR_OK) {
            $csvFile = fopen($uploadedFiles['tmp_name'][$i], 'r');

            if ($csvFile !== false) {
                $headers = fgetcsv($csvFile);

                $idNumIndex = array_search('ID_num', $headers);

                if ($idNumIndex !== false) {
                    echo "<h3>File: {$uploadedFiles['name'][$i]}</h3>";

                    while (($data = fgetcsv($csvFile)) !== false) {
                        
                        $nicNumber = $data[$idNumIndex];

                        // NIC processing logic 
                        if (!empty($nicNumber)) {
    
                            if (strlen($nicNumber) == 10) {
                                // Old NIC 
                                $birthYear = '19'.substr($nicNumber, 0, 2);
                                $daysFromYearStart = intval(substr($nicNumber, 2, 3));
                                $x=intval(substr($nicNumber, 2, 3));
                               
                            } elseif (strlen($nicNumber) == 12) {
                                // New NIC 
                                $birthYear = substr($nicNumber, 0, 4);
                                $daysFromYearStart = intval(substr($nicNumber, 4, 3));
                                $x=intval(substr($nicNumber, 4, 3));
                            } else {
                                echo "<strong><em>Invalid NIC Number:</strong></em> {$nicNumber}<br>";
                                continue;
                            }

                            $gender = $daysFromYearStart > 500 ? "Female" : "Male";
                            $daysFromYearStart = $daysFromYearStart > 500 ? $daysFromYearStart - 500 : $daysFromYearStart;

                            // Calculate the birthday 
                            if((($birthYear%4==0 && $birthYear%100 != 0)|| $birthYear%400 == 0)){
                                $birthday = DateTime::createFromFormat('Y z', $birthYear . ' ' . ($daysFromYearStart - 1));

                            }   

                            elseif((($birthYear>2000 &&$birthYear<2002) && ($x>500))){
                                $birthday = DateTime::createFromFormat('Y z', $birthYear . ' ' . ($daysFromYearStart-1));
                            }
                            elseif((($birthYear>2001) && ($x>500))){
                                $birthday = DateTime::createFromFormat('Y z', $birthYear . ' ' . ($daysFromYearStart-2));
                            }
                            elseif((($birthYear>2000) && ($x<500))){
                                $birthday = DateTime::createFromFormat('Y z', $birthYear . ' ' . ($daysFromYearStart-2 ));
                            }

                            elseif($birthYear<2000 && $birthYear>1998 ){
                                $birthday = DateTime::createFromFormat('Y z', $birthYear . ' ' . ($daysFromYearStart - 2));
                            }
                            elseif($birthYear<1999){
                                $birthday = DateTime::createFromFormat('Y z', $birthYear . ' ' . ($daysFromYearStart - 1));

                            }
              
                            $currentYear = date("Y");
                            $age = $currentYear - $birthYear;

                            // Display the validated outputs
                            echo "<hr>";
                            echo "<hr>";
                            echo "<strong><em>NIC Number:</em></strong> {$nicNumber}<br>";
                            echo "Birth Date: " . $birthday->format('Y/m/d') . "<br>";
                            echo "Gender: {$gender}<br>";
                            echo "Age: {$age}<br>";
                         

                            $servername = "localhost";  
                            $username = "root";      
                            $password = "";       
                            $database = "task1";     

                            // Create a database connection
                            $conn = new mysqli($servername, $username, $password, $database);

                            $sql = "INSERT INTO details (NIC, Birthday, Age, Gender) VALUES ('$nicNumber', '" . $birthday->format('Y-m-d') . "', '$age', '$gender')";

                            if ($conn->query($sql) === TRUE) {
                               echo "<br>";
                             } else {
                                 echo "Error: " . $sql . "<br>" . $conn->error;
                                }
  
                            $conn->close();
   
                        }
                    }
                } else {
                    echo "Column 'ID_num' not found: {$uploadedFiles['name'][$i]}<br>";
                }

                fclose($csvFile);
            } else {
                echo "Error opening the CSV file: {$uploadedFiles['name'][$i]}<br>";
            }
        } else {
            echo "Error uploading the file: {$uploadedFiles['name'][$i]}<br>";
        }
    }
}
?>

<script src="../public/uploadcsv.js"></script>
</body>
</html>
