<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="detect-r";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully";
if(isset($_POST['submit']))
{    
     
 $file = rand(1000,100000)."-".$_FILES['upl']['name'];
    $file_loc = $_FILES['upl']['tmp_name'];
 $file_size = $_FILES['upl']['size'];
 $file_type = $_FILES['upl']['type'];
 $folder="C:\xampp\htdocs\detect-r";
 
 move_uploaded_file($file_loc,$folder.$file);
 $sql="INSERT INTO student(title,category,size) VALUES('$file_type','$file_size','$file')";
 mysqli_query($conn,$sql); 
}
?>