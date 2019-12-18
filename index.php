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

		<link rel="stylesheet" type="text/css" href="./includes/styleSheet.css">
        <link rel="stylesheet" type="text/css" href="./includes/frontpage.css">
               

    </head>
    <table><tr><td>
	<body class="page-common">
  
		<div class="wrapper">
			<div class= "header">
				<Table width="100%" align="center" border=0>
				
					<tr>
						<td align="left">
<a href="/index.php"><img src="includes/logo.png" class="logoName"></img></a>						</td>
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
						</div>
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
          <div class="content">
              

              
 <div class="bre"> <br><br><br>
     <b><FONT size="3">Flavour of the Year!!</FONT></b>
  </div>
    <br><br>
  <br>
  <div class="slider" >

  <?php 
	$sql = "SELECT Sid,coverImg FROM `slist` WHERE date like '%present%' or date like '%2018%';";  
	$result=$conn->query($sql);
	while($slide=$result->fetch_assoc())
	{  ?>
      
  <div class="column fade">
      <div class="ima">
          <a  href="/series.php?id=<?php echo $slide['Sid'];?>"><img src="<?php echo $slide['coverImg'];?>" width="100%" height="300px"></a>
      </div>
  </div>
	<?php } ?> 
      
        <a class="left-button" onclick="plusDivs(-4)">&#10094;</a>
  <a class="right-button" onclick="plusDivs(4)">&#10095;</a>

      
      
      </div>
	  <br><br><br>
	  <div align="left">
     <b><FONT size="3">Most Loved!!</FONT></b>
	</div>
	<br> <hr color='lightgrey' size='1px' />
			<table border=0px cellspacing=10px width=100%>

	
		<?php	
		$sql="SELECT Sid,Sname,coverImg,description FROM `slist` order by rating desc limit 5;";			
		$result=$conn->query($sql);
		
		while($search=$result->fetch_assoc())
		{ ?>
		<tr><td>
		<img src="<?php echo $search["coverImg"] ?>" height=108px width=72px>
		</td>
		<td align='left'>
		<font size=2px><b>
		<a href='/series.php?id=<?php echo $search["Sid"]?>'><?php echo $search["Sname"]; ?></a>
		</font>
		</b>
		<br>
		<font size=1px color=grey>
		<?php echo $search["description"]; ?>
		</font>
		<br>
		<tr><td colspan=2>  <hr color='lightgrey' size='1px' />
</td></tr>
		<?php } ?>
		</table>
						
            
          

</div>
	</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("column");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length-3}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }


  x[slideIndex-1].style.display = "block"; 
   x[slideIndex].style.display = "block";
      x[slideIndex+1].style.display = "block";
      x[slideIndex+2].style.display = "block";
}
</script>
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

	</body>
</html>
