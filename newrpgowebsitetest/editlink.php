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

if(@$submit=="Edit Link")
{
if($title=="")
{
	print("<h1>You need a link title!</h1>");
	exit();
}
if($Description=="")
{
	print("<h1>You need a Description</h1>");
	exit();
}
if($url=="")
{
	print("<h1>You need an url</h1>");
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


		$title=addslashes($title);
		$url=addslashes($url);
		$Description=addslashes($Description);
		$today= date("F j, Y, g:i a"); 	
		
		$sql = "Update linkpost SET 
      		Date='$today', 
          		Title='$title',
			Url='$url',
			Description='$Description' 
			WHERE ID='$ID'"; 

  		if (@mysql_query($sql)) { 
    			echo("<p>Your link post has been updated</p>"); 
			exit();
 		 }		
	 else { 
    			echo("<p>Error updating link post :" . mysql_error() . "</p>"); 
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

		$Result = mysql_query("SELECT ID, Title, Url, Description FROM linkpost", $dblink); 
		if (!$Result) { 
  			echo("<p>Error performing query on linkpost: " . mysql_error() . "</p>"); 
  			exit(); 
		}  
		// now get the data array
		while($Row = mysql_fetch_array($Result))
		{	
			//now get account properties
			if($ID==$Row["ID"])
			{
				$atitle = $Row["Title"];
				$abody = $Row["Description"];
				$aurl = $Row["Url"];

			}
		}

?>
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, Rpgwo,multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online - Edit Link</title>
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

<form method="POST" action="editlink.php">
  <input type="hidden" name="s" size="25" value="<?  print($s); ?>" >
  <input type="hidden" name="ID" size="25" value="<?  print($ID); ?>" >
  <p><b>Link Title <input type="text" name="title" size="27" value="<?  print($atitle); ?>"></b></p>
  <p><b>Link Url: Begin with http://<input type="text" name="url" size="27" value="<?  print($aurl); ?>"></b></p>
  <p><b>Description</b></p>
  <p><textarea rows="7" name="Description" cols="42"><?  print($abody); ?></textarea></p>
  <p><input type="submit" value="Edit Link" name="submit"></p>
</form>

	
   </td>
</tr>
</table>




</body>
</html>

