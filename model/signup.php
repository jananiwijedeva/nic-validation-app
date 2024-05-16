<?php

$servername = "localhost";  
$username = "root";      
$password = "";       
$database = "task1";     

// Create a connection
$conn = new mysqli($servername, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

echo "Connected successfully";



$fname =$_POST['fname'];
$lname =$_POST['lname'];
$email =$_POST['email'];
$password =$_POST['password'];


$sql = "INSERT INTO  user (FirstName, LastName, Email, Password) VALUES ('$fname','$lname','$email','$password')";




if ($conn->query($sql) === TRUE) {
 echo '<script>
  alert("Login successful!");
  window.location.href = "../view/dashbord.html";
</script>';
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  
  $conn->close();
  ?>


