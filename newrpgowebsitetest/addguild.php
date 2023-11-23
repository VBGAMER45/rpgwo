<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<?
//Admin Access Only!!!
if($s=="")
{
	print("<h1>What are you trying to do??? This worries me...</h1>");
	exit();
}
else
{
	require('sessioncheck.php');
	if(verifyadmin($s) <= 0)
	{
		print("<h1>You are not an admin fool!</h1>");
		exit();
	}
}

if(@$submit=="Add Guild")
{
if($guildname=="")
{
	print("<h1>You need at least a guild name!</h1>");
	exit();
}
if($Description=="")
{
	print("<h1>You need a Description</h1>");
	exit();
}

require('config.php');

//connect to the server, then test for failure
if(!($dblink = mysql_pconnect($dblocation,$dbusername,$dbpassword)))
{
	print("Failed to connect to the database!<BR>\n");
	exit();
}

//select the database and test if it exists
if(!mysql_select_db($dbname))
{
	print("Can't use the $dbname database!<BR\n");
	exit();
}
		$guildname=addslashes($guildname);
		$Description=addslashes($Description);
		$today= date("F j, Y, g:i a"); 

		$sql = "INSERT INTO guildpost SET 
			Date='$today', 
          		Title='$guildname',
			Body='$Description'"; 

  		if (@mysql_query($sql)) { 
    			echo("<p>Your guild post has been added</p>");
			exit(); 
 		 }		
	 else { 
    			echo("<p>Error adding guild post :" . mysql_error() . "</p>"); 
  		} 

}








?>
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, Rpgwo,multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online - Add Guild</title>
	<LINK href="img/style.css" rel=stylesheet>
</HEAD>

<body background="img/paperBG.jpg" leftmargin=0 topmargin=0>
	<?
		include("toprightbar.php");
		include("menu.php");
	?>

    <td><img src="img/right.gif" width="34" height="400" border="0" alt=""></td>
</tr>
<tr>
    <td colspan="3"><img src="img/bottomNav.gif" width="204" height="31" border="0" alt=""></td>
</tr>
</table>

<img src="img/bgMage.gif" width="227" height="300" border="0" alt="" align="right">
<table cellspacing="0" cellpadding="0" border="0" align="middle">
<tr>
    <td>

<form method="POST" action="addguild.php">
  <input type="hidden" name="s" size="25" value="<?  print($s); ?>" >
  <p><b>Guild Name<input type="text" name="guildname" size="27"></b></p>
  <p><b>Guild Description</b></p>
  <p><textarea rows="7" name="Description" cols="42"></textarea></p>
  <p><input type="submit" value="Add Guild" name="submit"></p>
</form>

	
   </td>
</tr>
</table>




</body>
</html>

