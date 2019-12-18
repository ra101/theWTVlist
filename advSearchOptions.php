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
						
						
							<form action="search.php" mehtod="POST">
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
							<b>#Advance Search</b>
						</td>						
					</tr>
					
				</table>
				<hr color="blue" size="1px">
				
			<br>	<br>
			<div class="wboxWide">
			<table align=center border =0 width=100%> 
			<tr>
			<td align=center>
			<font size=4px>Search Form</font></br></br>
			<hr size=1px color=lightgrey>
			<form align=left  method="post" action="/advSearch.php">
			<font color=black size=2px>
			</font><br><font size=3px><input type=text name="Sname" placeholder= "Search Series..."></font>
			<br><br>
			<font color=black size=2px><b>
			Filters</b></font>
			<hr size=1px color=lightgrey>
			
			<div class="filters">
			
			<table align=left border =0>
			
			<tr><td>			
			
			Network
			
			</td><td>
			
<select name="network-select" id="search-select">
						<option value="" selected>Select network</option>

				<?php
						$sql="SELECT DISTINCT `network` FROM `slist`;";
						$result=$conn->query($sql);
						while($answer=$result->fetch_assoc())
						{
								echo "<option value=".$answer["network"].">".$answer["network"]."</option>";
						}
					
					?></p>		
						
						
						
						
						
						</select>
			
			</td></tr>
			
			
			<tr><td>			
			
			Score
			
			</td><td>
			<div class="sscore">
			<table >
			<tr>
			<td>
<select name="score-select" id="search-select">
						<option value="" selected>Select score</option>
						<option value="10">(10) Masterpiece</option>
						<option value="9">(9) Great</option>
						<option value="8">(8) Very Good</option>
						<option value="7">(7) Good</option>
						<option value="6">(6) Fine</option>
						<option value="5">(5) Average</option>
						<option value="4">(4) Bad</option>
						<option value="3">(3) Very Bad</option>
						<option value="2">(2) Horrible</option>
						<option value="1">(1) Appalling</option>
						
						</select>
						</td><td valign="middle" >
			<input type="radio" name="score-inequality" value=">="  checked="checked"></td><td>Greater Than</td><td valign="middle">
			<input type="radio" name="score-inequality" value="<="></td><td>	Lesser Than</td>
			</tr></table>
			</div>
			</td></tr>
			
			<tr><td>			
			
			Director
			
			</td><td>
			
<select name="director-select" id="search-select">
						<option value="" selected>Select director</option>

				<?php
						$sql="SELECT DISTINCT `director` FROM `slist`;";
						$result=$conn->query($sql);
						while($answer=$result->fetch_assoc())
						{
								echo "<option value=".$answer["director"].">"	.$answer["director"]."</option>";
						}
					
					?></p>		
						
						
						
						
						
						</select>
			
			</td></tr>
			
			
			<tr><td>			
			
			Country
			
			</td><td>
			
<select name="country-select" id="search-select">
						<option value="" selected>Select country</option>

				<?php
						$sql="SELECT DISTINCT `country` FROM `slist`;";
						$result=$conn->query($sql);
						while($answer=$result->fetch_assoc())
						{
								echo "<option value=".$answer["country"].">"	.$answer["country"]."</option>";
						}
					
					?></p>		
						
						
						
						
						
						</select>
			
			</td></tr>
			
			
			
			<tr><td>			
			
			Language
			
			</td><td>
			
<select name="lang-select" id="search-select">
						<option value="" selected>Select language</option>

				<?php
						$sql="SELECT DISTINCT `lang` FROM `slist`;";
						$result=$conn->query($sql);
						while($answer=$result->fetch_assoc())
						{
								echo "<option value=".$answer["lang"].">"	.$answer["lang"]."</option>";
						}
					
					?></p>		
						
						
						
						
						
						</select>
			
			</td></tr>
			
			<tr><td>			
			
			Start Year
			
			</td><td>
			<div class="smallTextBox">
			<input type="text" name="syear">
			</div>
			</td></tr>
			
			<tr><td>			
			
			End Year
			
			</td><td>
			<div class="smallTextBox">
			<input type="text" name="eyear">
			</div>
			</td></tr>
			
			<tr><td>			
			
			Limit Result By
			
			</td><td>
			<div class="smallTextBox">
			<input type="text" name="limit">
			</div>
			</td></tr>
			
			
			<tr><td>			
			
			Arranged By
			
			</td><td>
			<div class="sscore">
			<table >
			<tr>
			<td>
<select name="arrange-select" id="search-select">
						<option value="rating" selected>Score</option>
						<option value="Sname">Alphabetic order</option>
						
						
						</select>
						</td><td valign="middle" >
			<input type="radio" name="ordering" value="desc"  checked="checked"></td><td>Descending</td><td valign="middle">
			<input type="radio" name="ordering" value="asc"></td><td>Ascending</td>
			</tr></table>
			</div>
			</td></tr>
			
			
			</table>
					</div>
			
			</td></tr><tr><td><br>
			<font color=black size=2px><b>
			Genre Filter</b></font>
			<hr size=1px color=lightgrey>
			<select name="genData1" id="search-select">
			<option value="1" Selected>Include</option>
			<option value="0">Exclude</option>
			</select>
			<select name="genData2" id="search-select">
			<option value="1" Selected>All</option>
			<option value="0">Any </option>
			</select>
			<font size=2.5px>
			Selected Genres
			</font>
			<br><br>
			<div class="gfill">
			<table border=0px align=left width=100%><tr valign=top>
			<?php
				$sql="SELECT distinct `genre` FROM `glist`";
				$result=$conn->query($sql);
				$gRows=$result->num_rows;
				$size=$gRows/5;
				while($gRows>0)
				{	
					echo "<td>";
					for($i=0;$i<$size && $gRows>0 ;$i++)
					{
					$genre=$result->fetch_assoc();
					echo "<table border=0 <tr> <td>";
					echo "<input type =checkbox name='gencheck[]' value = '".$genre["genre"]."'></td><td><a href='/search.php?genre=".$genre["genre"]."'>".$genre["genre"]."</a></tr></table><br>";
					$gRows=$gRows-1;
						
					}
					echo "</td>";
				}
				
						
					
			?>
			
			
			
			</tr>
			</table>
			</div>
						<hr size=1px color=lightgrey>
			
			
			
			</td></tr><tr><td align=center>
			<button type=submit>&nbsp&nbsp&nbspSearch&nbsp&nbsp&nbsp</button>
			<br>
					
			</form>
			
			
			
			</td>
			</tr>
			</table>
			</div>
			<br>
			<br>
			<br>
			<br>
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
