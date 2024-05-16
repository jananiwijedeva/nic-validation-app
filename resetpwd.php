<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Reset</title>
   <link rel="icon" href="favicon.ico">
   <style>
      body{
         margin: 0;
         padding: 0;
         font-family: Arial, sans-serif;
         background-color: #291010;
         display: flex;
         flex-direction: column;
         justify-content: space-between;
         align-items: center;
      }
      #rst{
         background-color: rgb(252, 241, 236);
         border-radius: 10px;
         margin-top: 30px;
         box-shadow: 0 0 15px #a05353;
         padding: 25px;
         height: 200px;
         width: 300px;
         text-align: left;
      }

      #header{
         color: aliceblue;
      }

      input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid  #833000;
      border-radius: 5px;
      box-sizing: border-box;
      font-size: 15px;
      }

      #form-rst {
      background-color:#3a793d;
      color: aliceblue;
      padding: 10px 30px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 20px;
      }

      #form-rst:hover {
         background-color: #284226;
      }
   </style>
</head>

<body>
   <h1 id="header">Reset Password</h1>

   <form id="rst" method="post">
   <input type="email" name="email" required placeholder="Email"><br/>
   <input type="password" name="new_password" required placeholder="New Password"><br/>
   <input type="submit" name="resetpwd" value="Reset Password" id="form-rst">
   </form>

   <?php
      
      
      if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['resetpwd'])) {
          
          $email = $_POST['email'];
          $newPassword = $_POST['new_password'];
      
          
          $servername = "localhost";
          $username = "root";
          $password = "";
          $dbname = "task1";
      
         
          $conn = new mysqli($servername, $username, $password, $dbname);
      
          if ($conn->connect_error) {
              die("Connection failed: " . $conn->connect_error);
          }
      
         
          $sql = "UPDATE user SET Password = '$newPassword' WHERE Email = '$email'";
      
          // Execute SQL statement
          if ($conn->query($sql) === TRUE) {
              echo '<script>alert("Password updated successfully");
              window.location.href = "dashbord.html";
               </script>';
          } else {
              echo '<script>alert("Error updating password: ");
              window.location.href = "dashbord.html";
               </script>' . $conn->error;
          }
      
         
          $conn->close();
      }
      
      
   
   ?>
</body>

</html>