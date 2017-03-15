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

 ?>
 <?php
    if(isset($_POST['submit']))
       {    
   
              $file = rand(1000,100000)."-".$_FILES['upl']['name'];
				$file_loc = $_FILES['upl']['tmp_name'];
				$file_size = $_FILES['upl']['size'];
					$file_type = $_FILES['upl']['type'];
				$folder="C:\xampp\htdocs\detect-r\upload\";
 
                  /* new file size in KB*/
				$new_size = $file_size/1024;  
				// new file size in KB
 
				// make file name in lower case
				$new_file_name = strtolower($file);
				// make file name in lower case
 
				$final_file=str_replace(' ','-',$new_file_name);
 
				if(move_uploaded_file($file_loc,$folder.$final_file))
				{
					$sql = "insert into student(title,category,file) values('$file_type','$new_size','$final_file')";
						mysqli_query($conn,$sql);
						echo "success"; 
				}
	}

?>