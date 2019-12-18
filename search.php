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
				<Table width="100%" align="center" border="0px" bgcolor="lightblue" cellpadding=5px>
				
					<tr>
						<td align="left">
							<b>#Search</b>
						</td>
						
						<td align="right">
							
						</td>
						
					</tr>
					
				</table>
				<hr color="blue" size="1px">
				
			<br>	<br>
			<table width="100%" align="center" border="0px" cellpadding=1px>
						<tr>
						<td>
						<font size="3px">
						<b>Series</b></font>
					<hr color="grey" size="1px" />
					<br><br><br>
					<?php	
					if(empty($_GET["genre"]))
					{$sql="SELECT Sid,coverImg,Sname,director,network,rating,totalNoOfEp,noOfSeason FROM `slist` WHERE ".$_GET['search-select']." like '%".$_GET['q']."%' order by rating desc";
					}
					else
					{
					$sql = "SELECT Sid,coverImg,Sname,director,network,rating,totalNoOfEp,noOfSeason FROM `slist` WHERE Sid in (Select Sid from `glist` where genre ='".$_GET["genre"]."' ) order by rating desc";
					}				
					$result=$conn->query($sql);
					echo "<table border=0px cellspacing=10px width=100%>";
						while($search=$result->fetch_assoc())
							{
								echo "<tr><td width=80px>
								
								<img src=".$search["coverImg"]." height=108px width=72px>
								</td>
								<td align='left'>
								<font size=2px><b>
								<a href='/series.php?id=".$search["Sid"]."'>".$search["Sname"]."</a>
								</font></b>
								<br>
								<font size=1px color=grey>"
								.$search["director"]."<br>
								<a href='/search.php?search-select=network&q=".$search["network"]."'>".$search["network"]."</a> ( ".$search["totalNoOfEp"]." )
								<br>Scored ".$search["rating"]."<br>
								".$search["noOfSeason"]." Members
								</font>
								</td>
								</tr>
								<tr  ><td colspan=2>
													<hr color='lightgrey' size='1px' />

								</td>
								</tr>
								
							";}
					echo "</table>";
					?>

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
