<?php 
	$server=<server_name>;
	$user=<username>;
	$pass=<password>;
	$db=<database>;
$conn=new mysqli($server,$user,$pass,$db) or die("unable to connect");
session_start(); //to ensure you are using same session
$sql ="DELETE FROM `flist` WHERE uid=".$_SESSION['uid']." and sid=".$_GET['id'];
$result=$conn->query($sql);
$sql ="UPDATE `slist` SET `favCount`=`favCount`-1 WHERE sid=".$_GET['id'];
$result=$conn->query($sql);
$sql ="UPDATE `ulist` SET `favCount`=`favCount`-1 WHERE uid=".$_SESSION['uid'];
$result=$conn->query($sql);
header("location: /theWTVlist/listView.php?show=6");
?>