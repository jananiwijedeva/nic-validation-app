<?php
// Start the session
session_start();

// database connection
$servername = "localhost";  
$username = "root";      
$password = "";       
$database = "task1";  

$conn = new mysqli($servername, $username, $password, $database);

// Check database connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to sanitize user input
function sanitize_input($data) {
    return htmlspecialchars(trim($data));
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // take user input
    $email = sanitize_input($_POST["email"]);
    $password = sanitize_input($_POST["password"]);

    // Prepare and execute the SQL query
    $sql = "SELECT * FROM user WHERE Email = '$email' AND password = '$password'";
    $result = $conn->query($sql);

    // Check if there is a matching record
    if ($result->num_rows > 0) {
        // Login successful
        
        // Set session variables
        $_SESSION['email'] = $email;
        $_SESSION['loggedin'] = true;

        echo '<script>
        alert("Login Successful!");
        window.location.href = "dashbord.html";
      </script>';
     
    } else {
        
        echo '<script>
        alert("Incorrect Email or Password. .");
        window.location.href = "home.html";
      </script>';
    }
}

// Close the database connection
$conn->close();

?>
