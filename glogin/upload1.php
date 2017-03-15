<?php
	 
 include'connect.php';
$conn=new Database();
//$conn->connect();
if(isset($_POST['submit']))
{    
     $title=$_POST['title'];
	 $describe=$_POST['describe'];
	 $guide=$_POST['guide'];
     
	$file =$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="uploads/";
	 
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	//$new_file_name = strtolower($file);

	
	//$final_file=str_replace(' ','-',$new_file_name);
	
	if(move_uploaded_file($file_loc,$folder.$file))
	{
		$sql="insert into report(r_name,category,file_name,file_size,file_type)
		values('$title','$describe','$file','$new_size','$file_type')";
		//mysql_query($sql);
		if($conn->insert($sql))
		{
			$status='submitted';
           $demo=date("Y/m/d");
		$t_id="select tracking_id from report where file_name='$file' and category='$describe'";
	     $result=$conn->insert($t_id);
		 
		while($rows=$result->fetch_assoc())
		{$id=$rows['tracking_id'];
	       echo"$id";
		}
	  
	   
	 $sql1="insert into submit_report(date_of_upload,tracking_id,status,guide_name)
		values('$demo','$id','$status','$guide')";
		if($conn->insert($sql1))
		 echo"submitted";
		
		
		}
		
		?>
		<script>
		alert('successfully uploaded');
       window.location.href='account.php?success';
        </script>
		<?php
	}
	else
	{
		?>
		<script>
		alert('error while uploading file');
        window.location.href='account.php?fail';
        </script>
		<?php
  	}
	
	  
			
}
?>