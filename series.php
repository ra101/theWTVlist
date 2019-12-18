	<html>
	<head>
		
	<?php 
	$server=<server_name>;
	$user=<username>;
	$pass=<password>;
	$db=<database>;
	$conn=new mysqli($server,$user,$pass,$db) or die("unable to connect");
	session_start();
	$score=false;
	$sql = "SELECT * FROM `slist` WHERE Sid=".$_GET["id"];
	$result=$conn->query($sql);
	$series=$result->fetch_assoc();

  if (isset($_GET['fav'])) {
	  $sql= "INSERT INTO `flist` (`uid`, `Sid`) VALUES (".$_SESSION['uid'].", ".$_GET['id'].")";
 	$result=$conn->query( $sql );	
  $sql= "UPDATE `slist` SET `favCount`= `favCount`+1 where sid=".$_GET['id'].";";
	 $sql .= "UPDATE `ulist` SET `FavCount`= `FavCount`+1 where uid=".$_SESSION['uid'].";";
	$result=$conn->multi_query( $sql );	
	header("Location: /series.php?id=".$_GET["id"]);
     }
	 
	 
	 if (isset($_GET['add'])) {
 $sql = "UPDATE `slist` SET `members`= `members`+1 where sid=".$_GET['id'];
	$result=$conn->query($sql);
$sql = "INSERT INTO `mylistdb`(`uid`,`Sid`,`type`) VALUES (".$_SESSION['uid'].",".$_GET[id].",1)";
	$result=$conn->query($sql);	
	header("Location: /series.php?id=".$_GET["id"]);
     }
	 
	 if (isset($_GET['listed'])) {
 $sql = "UPDATE `mylistdb` SET `type`= ".$_GET["listed"]." where uid=".$_SESSION['uid']." and sid=".$_GET['id'];
	$result=$conn->query($sql);
	header("Location: /series.php?id=".$_GET["id"]);
	 }
	 
	 
	 if (isset($_GET['scored'])) {
	if($_GET['scored']==0)
	{
  $sql = "UPDATE `mylistdb` SET `score` = NULL WHERE `uid` = ".$_SESSION['uid']." AND `Sid` =".$_GET['id'].";";
	$sql .= "UPDATE `slist` SET `users` = `users`-1 WHERE `Sid` =".$_GET['id'].";";
	$result=$conn->multi_query($sql);
	}
	else
	{
  $sql = "UPDATE `mylistdb` SET `score` = ".$_GET['scored']." WHERE `uid` = ".$_SESSION['uid']." AND `Sid` =".$_GET['id'];
		$result=$conn->query($sql);
	}
	header("Location: /series.php?id=".$_GET["id"]);
	 }
	 
	 if (isset($_POST['review'])) {
		if(!empty($_POST['review']))
		{
			$sql = "INSERT INTO `rlist`(`uid`, `sid`, `review`) VALUES (".$_SESSION['uid'].",".$_GET["id"].",'".$_POST['review']."')";
			$result=$conn->query($sql);
		}
		header("Location: /series.php?id=".$_GET["id"]);
	}
	 
	?>
	
	<title> <?php  echo $series["Sname"]; ?>
		</title>
		
		<link rel="stylesheet" type="text/css" href="includes/styleSheet.css">
	</head>
	<body class="page-common">	<table width=100%><tr><td>
		<div class="wrapper">
		
			<div class= "header">
				<Table width="100%" align="center" border=0>
				
					<tr>
						<td align="left">
<a href="/"><img src="includes/logo.png" class="logoName"></img></a>						</td>
						<td align="right">
						<?php 
						if(isset($_SESSION['uid']))
						{
						?>
						<script src="/includes/uname.js"></script>
						<div class="dropdown">
						<font color=lightgrey>|  </font>
						<b><font size=3px onclick="myFunction()" class="dropbtn"><?php echo $_SESSION['uname'];	?>&nbsp&nbsp</font></b>
						  <div id="myDropdown" class="dropdown-content"><center>
							<a href ="/profileEdit.php"><p>Edit Profile</p></a>
							<?php echo "<a href='/listView.php?show=0'>" ?><p>MyList</p></a> 
							<a href="/includes/logout.php"><p>LogOut</p></a>
						 </center> </div>
						</div>
						<?php }
						else { ?>
						<div class="menu-option">
													<a class="btn-login" href="/login.php">Login</a>
							<a class="btn-signup" href="/signup.php">Sign Up</a>
						<?php } ?>
						</td>
					</tr>
				</table>
				<Table width="100%" align="center" border=0 bgcolor="#2e51a2" valign=center>
				
					<tr valign=center>
						<td align="left">
							<font color="#fff"><b>&nbsp  Welcome to Archive of Web Television!!!	
							</b	></font>
						</td>
						<td align="right" valign=center>
							<form action="search.php" mehtod="GET">
						<div class="search-select">
							<select name="search-select" id="search-select">
						<option value="Sname">Name</option>
						<option value="director">Director</option>
						<option value="producer">Producer</option>
						<option value="network">Network</option>
						</select>
						<input  type="text" name="q" placeholder= "Search Series...">
						<button type="submit"><b>Search&nbsp&nbsp</b></button>
						<a href="/advSearchOptions.php"><font size=1.5px color=lightblue >+Adv&nbsp&nbsp<font></a>
						</div>
						</form>
						</td>
					</tr>
				</table>
				<Table width="100%" align="center" border="0px" bgcolor="lightblue" cellpadding=5px>
				
					<tr>
						<td align="left">
							<?php echo "<font color=#000><b>".$series["Sname"]."</b></font>" ?>
						</td>
						
						<td align="right">
							
						</td>
						
					</tr>
					
				</table>
				<hr color="blue" size="1px">
				
			
			<Table width="100%" align="center" border="0px" cellpadding=1px>
				<col width="25%" />
				<col width="75%" />
				<tr>
					<td valign="top">
					<div class = "wrap2"> 
					<?php echo "<center><img src=".$series["coverImg"]." height=350px width=230px></center>"?>				
					<hr size="0x">
					<div class="add">
					<?php 
					if(!isset($_SESSION['uid']))
					{  ?>
					<a onclick="cantAdd()"><table width=100% border=0px><tr><td>Add to favorites</td></tr></table></a>
					<?php } 
					else{
						$sql="SELECT * FROM `flist` WHERE Sid=".$_GET["id"]." and uid = ".$_SESSION["uid"];
						$result=$conn->query($sql);
						if($result->num_rows)
						{ ?>
							<table width=100% border=0px><tr><td>*Favorite</td></tr></table>
						<?php 
						}
						else
						{
						$sql="SELECT `FavCount` FROM `ulist` WHERE uid = ".$_SESSION["uid"];
						$result=$conn->query($sql);
						$count=$result->fetch_assoc();
							if($count['FavCount']==3)
							{ ?>
						<script>
						
						
function limitfull() {
    alert("Fav limit Exceded");
}

						</script>
					<a onclick="limitfull()"><table width=100% border=0px><tr><td>Add to favorites</td></tr></table></a>

							<?php }
							else
							{ 
						$sql="SELECT type FROM `mylistdb` WHERE Sid=".$series["Sid"]." and uid=".$_SESSION['uid'];
						$result=$conn->query($sql);
							if(!$result->num_rows)
						{ ?> 
											<script>
function addtolistfirst() {
    alert("Add to list First!");
}

						</script>
					<a onclick="addtolistfirst()"><table width=100% border=0px><tr><td>Add to favorites</td></tr></table></a>

							
						<?php } else { ?>	
					<a href=<?php echo "'/series.php?id=".$_GET['id']."&fav=true'" ?>>
					<table width=100% border=0px><tr><td>Add to favorites</td></tr></table></a>

					<?php	}
						}
							?>
					<?php } } ?>
					
															<hr color="blue" size="1px">

					</div>
					<br>
					<br>
					<font size="3px">
					<b>Information</b></font><font size="2px">
					<hr color="lightgrey" size="1px"><p>
					<b>Language:&nbsp</b><?php echo $series["lang"] ?><br>
					<b>Country:&nbsp</b><?php echo $series["country"] ?><br>
					<b>Original Network:&nbsp</b><?php echo $series["network"] ?><br>
					<b>Air Date:&nbsp</b><?php echo $series["date"] ?><br>
					<b>Producer:&nbsp</b><?php echo $series["producer"] ?><br>
					<b>Director:&nbsp</b><?php echo $series["director"] ?><br>
					<div class="genre"> <b>Genre:&nbsp</b>
					<?php
						$sql="SELECT genre FROM `glist` WHERE Sid=".$series["Sid"];
						$result=$conn->query($sql);
						$gRows=$result->num_rows;
						while($gRows>1)
						{
							$genre=$result->fetch_assoc();
								echo "<a href='/search.php?genre=".$genre["genre"]."'>".$genre["genre"]."</a>, ";
							$gRows=$gRows-1;
						}
						$genre=$result->fetch_assoc();
							{
								echo "<a href='/search.php?genre=".$genre["genre"]."'>".$genre["genre"]."</a>";
							}
						
					
					?></p>
					<b>No Of Seasons:&nbsp</b><?php echo $series["noOfSeason"] ?><br>
					<b>Total No of Episodes:&nbsp</b><?php echo $series["totalNoOfEp"] ?><br>
					<br><br>
					</div>
					<font size="3px">
					<b>Statistics</b></font><font size="2px">
					<hr color="lightgrey" size="1px"><p>
					<b>Members:&nbsp</b><?php echo $series["members"] ?><br>
					<b>Favorites:&nbsp</b><?php echo $series["favCount"] ?><br>

					
					</p>
					<br>
					</div>	
					</td>
					
					
					
					
					<td valign="top">
						<table width="100%" align="center" border="0px" cellpadding=1px cellspacing=1px>
						<col width="75%" />
					<col width="25%" />
						<tr>
						<td>
						<div class="gbox">
						<table width="100%" height=88px  align="center" cellpadding=1px cellspacing=3px >
						<tr>
						<td rowspan=2>
						<div class="bbox">
						<font color=white size=1px>&nbsp  Score  &nbsp</font>
						</div>
						<?php echo "<center><font size=6px>".$series["rating"]."</font></center>"?>
						
						</td>
						<td>
						<b>&nbsp&nbspUsers  <?php echo $series["users"] ?></b>
						</td>
						
						<td>
						<b>&nbsp&nbspMembers: <?php echo $series["members"] ?></b>
						</td>
						</tr>
						<tr>
						
						<td colspan=3>		
						<?php echo "<font size=2px color=blue>".$series["date"]."</font>"?>
						<font color=grey>|</font>
						<?php echo "<font size=2px color=blue>".$series["network"]."</font>"?>
						<font color=grey>|</font>
						<?php echo "<font size=2px color=blue>".$series["director"]."</font>"?>
						</td>
						</tr>
						
						
						
						</table>
						</div>
						</td>
						<td rowspan=2>
					<?php echo 
						"<div class=	'imgbox'>
						  <img class='image1' src='https://i.ytimg.com/vi/".$series["ytbCode"]."/mqdefault.jpg' width ='200px' />
						 <a target='_blank' href='https://www.youtube.com/embed/".$series["ytbCode"]."?enablejsapi=1&wmode=opaque&autoplay=1'> <img class='image2' src='includes/play.png' height='42' width='42' /></a>
						</div>"?>
						</td>
						</tr>
						<tr height=20%>
						<td>
						<div class="gbox" >
						
						<table align="center" width=100% border="0px" cellpadding=1px>
						
						<tr>
						
						<td align="center" width="50%">
						<script src="/includes/addtoc.js"></script>
						<?php if(!isset($_SESSION['uid']))
						{ ?>
											<div class="addtoC" id="addtoC">

							<button onclick="cantAdd()">+ Add to List</button>
														</div>

						<?php }
						else
						{ 
							$sql="SELECT type FROM `mylistdb` WHERE Sid=".$series["Sid"]." and uid=".$_SESSION['uid'];
						$result=$conn->query($sql);
							if(!$result->num_rows){ 
							?>
													<div class="addtoC" id="addtoC">

							<button onclick="addtoc()">+ Add to List</button>
						<?php 
						}
						else
						{
							$answer=$result->fetch_assoc();
							$type=$answer['type']; 
							$score=true;
							?>
						<style>
						.mylistinfo select{
							display:block;
						  border-radius:0px; 
						padding:4px;	
						color:green;
						}	
						</style>
						<div class="mylistinfo" id ="mylistinfo">
						<select name="mylistinfo" id ="mylist_info" onchange="valueChange()">
						<option value="watching" <?php if($type==1){ echo " selected ";} ?> >Watching</option>
						<option value="completed"<?php if($type==2){ echo " selected ";} ?>  >Completed</option>
						<option value="hold"<?php if($type==3){ echo "selected";} ?> >On-Hold</option>
						<option value="ptw"<?php if($type==4){ echo "selected";} ?> >Plan to Watch</option>
						<option value="dropped"<?php if($type==5){ echo "selected";} ?> >Dropped</option>
						</select>
						</div>
						<script>

						var sel = document.getElementById("mylist_info");
	switch(sel.value)
	{
		case 'watching':
		sel.style.color="green";
		break;
		case "completed":
				sel.style.color="darkblue";

		break;
		case "hold":
		sel.style.color="orange";
		break;
		case "ptw":
		sel.style.color="grey";
		break;
		case "dropped":
		sel.style.color="darkred";
		break;		
	}	
						</script>
						
						<?php }
						} 
						?>
						
						
						</td>
						<?php 
						$scored=0;
						if(isset($_SESSION["uid"]))
						{
						$sql="SELECT score FROM `mylistdb` WHERE Sid=".$series["Sid"]." and uid=".$_SESSION['uid'];
						$result=$conn->query($sql);
						$ans=$result->fetch_assoc();
						$scored=$ans["score"];
						}
						
						
						?>
						<td align="center">
						<div class="custom-select">
							<select name="myscore_info" id="myscore_info" onchange="scoreChange()"  <?php if(!$score){ echo " disabled ";} ?> >
						<option value="0" <?php if($scored==0){ echo " selected ";} ?> >Select</option>
						<option value="10" <?php if($scored==10){ echo " selected ";} ?> >(10) Masterpiece</option>
						<option value="9" <?php if($scored==9){ echo " selected ";} ?>>(9) Great</option>
						<option value="8" <?php if($scored==8){ echo " selected ";} ?>>(8) Very Good</option>
						<option value="7" <?php if($scored==7){ echo " selected ";} ?>>(7) Good</option>
						<option value="6" <?php if($scored==6){ echo " selected ";} ?>>(6) Fine</option>
						<option value="5" <?php if($scored==5){ echo " selected ";} ?>>(5) Average</option>
						<option value="4" <?php if($scored==4){ echo " selected ";} ?>>(4) Bad</option>
						<option value="3" <?php if($scored==3){ echo " selected ";} ?>>(3) Very Bad</option>
						<option value="2" <?php if($scored==2){ echo " selected ";} ?>>(2) Horrible</option>
						<option value="1" <?php if($scored==1){ echo " selected ";} ?>>(1) Appalling</option>
						</select>
						</div>
						<script>
						</script>
						</td>
						
						</tr>
						</table>	
						</div>

						</td>
						</tr>
						</table>
						
						<table width="100%" align="center" border="0px" cellpadding=1px>
						<tr>
						<td>
						<br>	
						<br><font size="3px">
						<b>Synopsis</b></font><font size="2px">
					<hr color="lightgrey" size="1px" />
					<?php echo $series["description"] ?>
						</font>
						
						</td>
						</tr>
						</table>
						<br><br><br><br><br>
						<table width="100%" align="center" border="0px" cellpadding=1px>
						<tr>
						<td>
						<br>	
						<br><font size="3px">
						<b>Reveiws:</b></font><font size="2px">
					<hr color="lightgrey" size="1px" />
					
					<?php 
						$sql = "SELECT * FROM `rlist` WHERE Sid=".$_GET["id"];
						$result=$conn->query($sql);
						while($review=$result->fetch_assoc())
						{
						$sql = "SELECT score FROM `mylistdb` WHERE Sid=".$review["sid"]." and uid=".$review["uid"];
						$res=$conn->query($sql);
						$score=$res->fetch_assoc();
						$sql = "SELECT uname FROM `ulist` WHERE uid=".$review["uid"];
						$res=$conn->query($sql);
						$reviewer=$res->fetch_assoc();
						?>
					<table width=100% border=0px>
					<tr> <td align="left">- <?php echo $reviewer["uname"]; ?></td>
					<td align="right">Rated: <?php echo $score["score"]; ?></td> </tr>
					<tr><td colspan=2><font size=2px><?php echo $review["review"]; ?></font> </td></tr></table>
										<hr color="lightgrey" size="1px" />

					<?php	}
					?>
						</font>
						<?php if(isset($_SESSION['uid'])){
							$sql = "SELECT * FROM `rlist` WHERE Sid=".$_GET["id"]." and uid=".$_SESSION['uid'];
						$result=$conn->query($sql);
						if(!$result->num_rows)
						{
						?>
						<table width=100% border=0px>
					<tr> <td align="left">Review as: <?php echo $_SESSION["uname"]; ?></td>
					<td align="right">Rated: <?php 
					$sql = "SELECT score FROM `mylistdb` WHERE Sid=".$_GET['id']." and uid=".$_SESSION["uid"];
						$res=$conn->query($sql);
						$score=$res->fetch_assoc();
					echo $score["score"]; ?></td> </tr>
					<tr><td colspan=2>
					<?php if($score["score"])	{ echo "<form method='post' action='/series.php?id=".$_GET['id']."'>";} ?>
					<font size=2px><textarea rows=10 cols=100% name="review"></textarea></font> 
						
						</td>
						</tr>
					
					<tr><td></td>  <td align=right>
<style>
.postbutton button
{display:block;
	border-radius:2px;
 	color:white;	  
  	background-color: #2e51a2;
	border-color:blue;
padding:4px;}
	 </style>
	<?php if(!$score["score"])
	{ ?>
	<script>
	
function ratefirst() {
    alert("Thou shall Rate first");
}

</script>
			<div class="postbutton"><button onclick ="ratefirst()">&nbsp&nbspPost&nbsp&nbsp&nbsp</button></div>

	<?php }	else { ?>
				<div class="postbutton"><button type=submit>&nbsp&nbspPost&nbsp&nbsp&nbsp</button></div>
						<?php } ?>
						</td></tr></table>
						
						<?php }
							else 
							{ ?>
						<center><b>One review per user <b></center>
							<?php } }
						else{ ?>
						<center><b> <a href="/login.php" >Login<a> to write review <b></center>
						<?php } ?>
						</td>
						</tr>
						</table>

						
						
					</td>
					
				</tr>
				
			</table>
				
			</div>
			
		</div>
	
</td></tr>
<tr><td>
<div class="footer">
<style>
.footer
{
	display:block;
	width:100%;
	background-color:#2e51a2;
	align-content:center;
	padding:15px 0;
	}
</style>
        <table width="100%" border=0px >
            <tr width="100%">
                
                <td colspan="3">
                    <br>
                    <b><FONT SIZE="3" color="white" face="times new roman"  ><center>ABOUT US</center></FONT></b>
                    <br>
                </td>
                </tr>
                <tr >
                <td colspan="3">
                    <i><center><font size="4" color="white" face="times new roman">this is a website to entertain the mass with finominal tv and web serieses.
                        the world is connected on the emotional level the best way to do so is entertainment.
                        <br><br><br><br>
                        </font></center>
                    </i>
                </td></tr>
          
            <tr align="center" >
                
                <td>
                   <a href="https://www.instagram.com/" target=_blank> <img src="images/Instagram_icon.png"  width="50px" height="50" ></img></a>
                </td>
        <td>
              <a href="https://m.facebook.com/Thewtvlist-1123916401124528/" target=_blank> <img src="images/facebook-black-icon-8.png"  width="50px" height="50" ></img></a>

        </td>
               
 <td>
    <a href="mailto:thewtvlist@gmail.com"> <img src="images/gmail.png"  width="50px" height="50" ></img></a>

        </td>
            </tr>

        </table>
</div>
</td></tr></table>
	</body>
</html>
