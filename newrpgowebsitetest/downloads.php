<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Someguy">

	<title>RPG World Online - Downloads</title>
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
<img src="img/bgWarrior.gif" width="176" height="300" border="0" alt="" align="right">
<table cellspacing="0" cellpadding="0" border="0" align="middle">
<tr>
    <td>
		<img src="img/titles/downloads.gif" width="150" height="51" border="0" alt=""><br>
<table cellspacing="10">
     <tr>
  <td><h3>Description</h3></td>
  <td><h3>Size</h3></td>
  <td><h3>Filename</h3></td>
 </tr>

<?
require('config.php');
	//####Begin Dowload Listing!!!
//connect to the server, then test for failure
		if(!($dblink = mysql_connect($dblocation,$dbusername,$dbpassword)))
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

		$Result = mysql_query("SELECT ID, Size, Date, Title, Description, Url FROM downloadpost", $dblink);
		//print($Result);
		if (!$Result) {
  			echo("<p>Error performing query on downloadpost: " . mysql_error() . "</p>");
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
			$T=$Row["Title"];
			$D=$Row["Description"];
			$U=$Row["Url"];
			$Size=$Row["Size"];
			//now print all the downloads in the db
			print("<tr>");
			$D=nl2br($D);
			print("<td>$D</td>");
			print("<td>$Size</td>");
			print("<td><A HREF=\"$U\">Download</A></td>");

			//admin Options
			if($admin==1)
			{

				$id=$Row["ID"];
				print("<TD>");
				print("<a href=\"editdownload.php?s=$s&ID=$id\">Edit Download</a>");
				print("  ");
				print("<a href=\"deldownload.php?s=$s&ID=$id\">Delete Download</a>");
				print("</TD>");
			}
			print("</tr>");
			//print("<BR>");


		}
?>




</table>

</td>
</tr>
</table>




</body>
</html>
