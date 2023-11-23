<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, Rpgwo,multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online - Links</title>
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

<?
//varibales password here are password and username

$login="1";

	include("C:\Program Files\\Abyss Web Server\\htdocs\\rpgwotest\\logincheck.php");
	include("C:\Program Files\\Abyss Web Server\\htdocs\\rpgwotest\\config.php");
	$root_path = "./";
	//require($root_path . 'logincheck.php');
	//require($root_path . 'config.php');	

	$password=md5($password);
	If(verifylogin($username,$password))
	{				

				//Print("Logging you in now just wait!");

				session_register("$username");
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

		$s = session_id(); 
		//Now create the account 
		$sql = "INSERT INTO user SET SessionID='$s'"; 
  		if (@mysql_query($sql)) 
   
 			//echo("$s");		
 		else 
    			echo("<p>Error  sid :" . mysql_error() . "</p>"); 
  		
				
//print("<script language=\"vbscript\"> document.url=\"index.php?s=$s\" </script>");
  print("<META HTTP-EQUIV=\"REFRESH\" CONTENT=\"0;URL=index.php?s=$s\">");

				//redirect user to the main page
print("<a href=\"index.php?s=$s\">Click here if you don't want to wait!</a>");

				exit();
		}		

	
Print("Login Failed. Account Doesn't exist or invaild password!");

?>
	
   </td>
</tr>
</table>




</body>
</html>

