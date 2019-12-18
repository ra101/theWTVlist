<?php
	$server=<server_name>;
	$user=<username>;
	$pass=<password>;
	$db=<database>;
$conn=new mysqli($server,$user,$pass,$db) or die("unable to connect");
		$sql="SELECT * FROM `slist` WHERE sid=19";
		$result=$conn->query($sql);
		$series=$result->fetch_assoc();
?>
