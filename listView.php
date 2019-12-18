<html>
	<head>
		<title>theWTVlist
		</title>
	<?php 
	$server=<server_name>;
	$user=<username>;
	$pass=<password>;
	$db=<database>;
	$conn=new mysqli($server,$user,$pass,$db) or die("unable to connect");
	session_start();
?>						

		<link rel="stylesheet" type="text/css" href="includes/styleSheet.css">
	</head>
	<body class="page-common"><table  width=100%><tr><td>
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
				
				
			</div>
			
			<br><br>
			<h1>Welcome <?php echo $_SESSION["uname"]; ?>!</h1>
			<br><hr size="1px" color=lightgray>
			<table width=100% cellpadding=10px ><tr>
			
			<td>
						<a href="/listView.php?show=0">
			<font color= <?php if($_GET['show']==0){echo "black";}else{echo "lightgray";} ; ?>>

			All WTV Series
			</font></a></td>
			<td>
						<a href="/listView.php?show=1">
			<font color= <?php if($_GET['show']==1){echo "black";}else{echo "lightgray";} ; ?>>

			Currently Waching
			</font></a></td>
			<td>
						<a href="/listView.php?show=2">
			<font color= <?php if($_GET['show']==2){echo "black";}else{echo "lightgray";} ; ?>>

			Completed
			</font></a></td>
			<td>
						<a href="/listView.php?show=3">
			<font color= <?php if($_GET['show']==3){echo "black";}else{echo "lightgray";} ; ?>>

			On-hold
			</font></a></td>
			<td>
						<a href="/listView.php?show=4">
			<font color= <?php if($_GET['show']==4){echo "black";}else{echo "lightgray";} ; ?>>

			PTW
			</font></a></td>
			<td>
						<a href="/listView.php?show=5">
			<font color= <?php if($_GET['show']==5){echo "black";}else{echo "lightgray";} ; ?>>

			Dropped
			</font></a></td>
			<td>
			<a href="/listView.php?show=6">
			<font color= <?php if($_GET['show']==6){echo "black";}else{echo "lightgray";} ; ?>>
			Fav
			</font></a></td>

			</tr></table>
			<table bgcolor="#2e51a2" width=100% cellpadding=10px><tr><td>
			<center><font color="white"><b>
			<?php switch($_GET['show'])
			{
				case 0:
					echo "All WEB-TELEVISION SERIES";
					break;
				case 1:
					echo "CURRENTLY WATCHING";
					break;
				case 2:
					echo "COMPLETED";
					break;
				case 3:
					echo "ON HOLD";
					break;
				case 4:
					echo "DROPPED";
					break;
				case 5:
					echo "PLAN TO WATCH";
					break;
				case 6:
					echo "FAVOURITES"; 
					break;
			} ?>
			</b></font></center>
			</td></tr></table>
			<?php 
			$sql= "select sid from rlist where uid=".$_SESSION['uid'];
			$result=$conn->query($sql);
			if(!$result->num_rows)
			{
			$ii=0;	
			while($res=$result->fetch_assoc())
			{
				$revi[$ii] = $res['sid'];
				$ii+=1;
			}
			}
			if($_GET['show']==0)
			{
			$sql = "select slist.Sid,Sname,coverImg,score,type,network from mylistdb ,slist where slist.sid in(SELECT DISTINCT mylistdb.sid from mylistdb where uid=".$_SESSION['uid'].") and slist.sid=mylistdb.sid and uid=".$_SESSION['uid']." order by rating desc";
			}
			elseif($_GET['show']==6)
			{
			$sql = "select slist.Sid,Sname,coverImg,score,type,network from mylistdb ,slist,flist where slist.sid in(SELECT DISTINCT mylistdb.sid from mylistdb where uid=".$_SESSION['uid'].") and slist.sid=mylistdb.sid and slist.sid=flist.sid and mylistdb.uid=flist.uid and mylistdb.uid=".$_SESSION['uid'];
			}
			else
			{
			$sql = "select slist.Sid,Sname,coverImg,score,type,network from mylistdb ,slist where slist.sid in(SELECT DISTINCT mylistdb.sid from mylistdb where uid=".$_SESSION['uid'].") and slist.sid=mylistdb.sid and uid=".$_SESSION['uid']." and type=".$_GET['show'];
			}	
			
			$result=$conn->query($sql);
			$hash=1;
			?>
			
			<table width=100% cellpadding=10px border=0>
			<tr bgcolor="lightgray" style="font-size: 12px;" align="left">
			<td width=10px> <b>#</b></td>
			<td width=80px> <b>Image</b></td>
			<td> <b>Name</b></td>
			<td width=1px> <b>Score</b></td>
			<td width=1px> <b>Network</b></td>
			<td width=1px> <b>Review</b></td>
			<td width=1px> <b>Options</b></td>
			</tr>
			<?php while($list=$result->fetch_assoc())
							{ ?>
			<tr ><td> 
			<?php echo $hash; ?>
			
			</td>
			<td> <center> 
			<img src='<?php echo $list["coverImg"]; ?>' height=108px width=72px>
			 </center>
			</td>
			
			<td>
			<a href='/series.php?id=<?php echo $list["Sid"]; ?>'><font size=2px><b><?php echo $list["Sname"]; ?></b></font></a>
			</td>
			
			<td> <center>
			<font size=2px><?php
			if(!$list['score'])
			{
				echo "-";
			}
			echo $list['score'];
			?></font></center>
			</td>
			<td><center>
			<font size=2px><?php echo $list['network'];	?> </font></center>
			</td>
			<td> <center>
			<font size=2px><?php 
			if($ii)
			{
			if(array_search($list['Sid'],$revi)!==false)	
			{
				echo "<a href='/reviewEdit.php?id=".$list['Sid']."'>Edit?</a>";
			}
			else{echo "-";}
			}
			else{echo "-";}
			?></font></center>
			</td>
			<td> <center><font size=2px>
			<?php if($_GET['show']==6)
			{ ?>
			<a href='/includes/delfav.php?id= <?php echo $list['Sid']  ?>'>Delete?</a>
			<?php } else
			{ ?>
			<a href='/includes/deleteEntry.php?id= <?php echo $list['Sid']."&show=".$_GET['show'];  ?>'>Delete?</a>	
			<?php } ?>
			</font></center>
			</td>
				
			<tr ><td colspan=7><hr size="1px" color=lightgray style="margin-top:-10px;"></td></tr>
			</tr>
			<?php $hash+=1; } ?>
			</table>
			
			
			
			
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
