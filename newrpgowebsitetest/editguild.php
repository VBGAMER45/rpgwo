<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<?
//Admin Access Only!!!
require('sessioncheck.php');
require('config.php');
if($s=="")
{
	print("<h1>What are you trying to do??? This worries me...</h1>");
	exit();
}
else
{
	
	if(verifyadmin($s) <= 0)
	{
		print("<h1>You are not an admin fool!</h1>");
		exit();
	}

}

if(@$submit=="Edit Guild")
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
		
		$sql = "Update guildpost SET 
      		Date='$today', 
          		Title='$guildname',
			Body='$Description' 
			WHERE ID='$ID'"; 

  		if (@mysql_query($sql)) { 
    			echo("<p>Your guild post has been updated</p>"); 
			exit();
 		 }		
	 else { 
    			echo("<p>Error updating guild post :" . mysql_error() . "</p>"); 
  		} 
}
//Get The Default Edit values
if(!($dblink = mysql_pconnect($dblocation,$dbusername,$dbpassword)))
		{
			print("Failed to connect to the database!<BR>\n");
			exit();
		}
		//select the database and test if it exists
		if(!mysql_select_db($dbname,$dblink))
		{
			print("Can't use the $dbname database!<BR>\n");
			exit();
		}

		$Result = mysql_query("SELECT ID, Title, Body, Date FROM guildpost", $dblink); 
		if (!$Result) { 
  			echo("<p>Error performing query on guildpost: " . mysql_error() . "</p>"); 
  			exit(); 
		}  
		// now get the data array
		while($Row = mysql_fetch_array($Result))
		{	
			//now get account properties
			if($ID==$Row["ID"])
			{
				$aguildname = $Row["Title"];
				$abody = $Row["Body"];

			}
		}

?>
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, Rpgwo,multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online - Edit Guild</title>
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

<form method="POST" action="editguild.php">
  <input type="hidden" name="s" size="25" value="<?  print($s); ?>" >
  <input type="hidden" name="ID" size="25" value="<?  print($ID); ?>" >
  <p><b>Guild Name<input type="text" name="guildname" size="27" value="<?  print($aguildname); ?>"></b></p>
  <p><b>Guild Description</b></p>
  <p><textarea rows="7" name="Description" cols="42"><?  print($abody); ?></textarea></p>
  <p><input type="submit" value="Edit Guild" name="submit"></p>
</form>

	
   </td>
</tr>
</table>




</body>
</html>

