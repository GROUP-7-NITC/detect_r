<?php
      include'connect.php';
		$conn=new Database();
	  $man=$_GET['id'];
	  $sql="select file_name from report where tracking_id=$man";
	  $result=$conn->insert($sql);
	 if($result->num_rows>0)
	 {	 
		while($rows=$result->fetch_assoc())
		{ $files=$rows['file_name'];
	
		} 
	 }
	//echo $file_name;
  $files = 'glogin/uploads'.'/'.$files;
  //echo $files;
  $filename = $files;
  //echo $filename;
  
  header('Content-type: application/pdf');
  header('Content-Disposition: inline; filename="' . $filename . '"');
  header('Content-Transfer-Encoding: binary');
  header('Accept-Ranges: bytes');
  @readfile($files);
 
?>