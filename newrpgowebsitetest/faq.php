<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Someguy">

	<title>RPG World Online - FAQ</title>
	<LINK href="img/style.css" rel=stylesheet>
</HEAD>

<body background="img/paperBG.jpg" leftmargin=0 topmargin=0>
	<?
		//##############PHP CODE####################
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

		<img src="img/titles/faq.gif" width="150" height="51" border="0" alt=""><br>

<?
require('config.php');
	//####Begin FAQ Listing!!!
//connect to the server, then test for failure
		if(!($dblink = mysql_pconnect($dblocation,$dbusername,$dbpassword)))
		{
			print("Failed to connect to the database!<BR>\n");
			exit();
		}

		//select the database and test if it exists

		if(!mysql_select_db($dbname,$dblink))
		{
			print("Can't use the $dbname database!<BR\n");
			exit();
		}

		$Result = mysql_query("SELECT ID, Answer, Question FROM faqpost", $dblink);
		//print($Result);
		if (!$Result) {
  			echo("<p>Error performing query on faqpost: " . mysql_error() . "</p>");
  			exit();
		}
		$admin=2;
		require('sessioncheck.php');
		if(verifyadmin($s) > 0)
		{
		$admin=1;
		}
		// now get the data array
		while($Row = mysql_fetch_array($Result))
		{
			//now print all the guilds in the db
			print("<b>");
			print("Q: ");
			print($Row["Question"]);
			print("</b><br>");
			print("A: ");
			print(nl2br($Row["Answer"]));
			//admin Options

			if($admin==1)
			{
				
				$id=$Row["ID"];
				print("<BR>");
				print("<a href=\"editfaq.php?s=$s&ID=$id\">Edit Faq</a>");
				print("  ");
				print("<a href=\"delfaq.php?s=$s&ID=$id\">Delete Faq</a>");
			}
			
			print("<BR>");

		}

?>


</td>
</tr>
</table>




</body>
</html>
