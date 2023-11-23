<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<?
//Admin Access ONLY!
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
?>
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, Rpgwo,multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online - List Accounts</title>
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
<table cellspacing="10">
    <tr>
  <td><h3>Username</h3></td>
  <td><h3>Email</h3></td>
  <td><h3>AdminLevel</h3></td>
  <td><h3>Title</h3></td>
  <td><h3>Banned</h3></td>
 </tr>
<?
	require('config.php');

//#######Get Account Properites#######################################
//connect to the server, then test for failure
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

		$Result = mysql_query("SELECT Username, Realname, AdminLevel, Email, Avater, Banned, SessionID, Title FROM user", $dblink); 
		//print($Result);
		if (!$Result) { 
  			echo("<p>Error performing query on user: " . mysql_error() . "</p>"); 
  			exit(); 
		}  
		// now get the data array
	
		while($Row = mysql_fetch_array($Result))
		{	
			//now get account properties
		
				$ausername = $Row["Username"];
				$aemail = $Row["Email"];
				$aicon = $Row["Avater"];
				$arealname = $Row["Realname"];
				$abanned = $Row["Banned"];
				$aadmin = $Row["AdminLevel"];
				$title = $Row["Title"];
				print("<tr>");
				print("<td><a href=\"editaccount.php?s=$s&username=$ausername\">$ausername</a></td>");
				print("<td>$aemail</td>");
				print("<td>$aadmin</td>");
				print("<td>$title</td>");
				print("<td>$abanned</td>");
				print("</tr>");
			

		}
?>
</table>	
   </td>
</tr>
</table>




</body>
</html>

