<?php 
	$server=<server_name>;
	$user=<username>;
	$pass=<password>;
	$db=<database>;
$conn=new mysqli($server,$user,$pass,$db) or die("unable to connect");
session_start(); //to ensure you are using same session
if(!empty($_POST['review']))
		{$data=$_POST['review'];
					$sql = "UPDATE `rlist` SET `review`='".$data."' WHERE uid=".$_SESSION['uid']." and sid=".$_GET['id'];
		}
else
{
	
	$sql = "delete from `rlist` WHERE uid=".$_SESSION['uid']." and sid=".$_GET['id'];
	
}
$result=$conn->query($sql);
header("location: /theWTVlist/series.php?id=".$_GET['id']);
?>