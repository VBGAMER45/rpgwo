<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, multiplayer, online, Mickey Kudlo, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online</title>
	<LINK href="img/style.css" rel=stylesheet>
</HEAD>

<body background="img/paperBG.jpg" leftmargin=0 topmargin=0>
	<?
	$root_path = "./";
	include($root_path."toprightbar.php");
	//require "toprightbar.php?s=$s";
	include($root_path."menu.php");
	require('config.php');
	//	include("C:\\Program Files\\Abyss Web Server\\htdocs\\rpgwotest\\toprightbar.php?S=$S");
	//	include("C:\\Program Files\\Abyss Web Server\\htdocs\\rpgwotest\\menu.php?S=$s");
	?>
    <td width="34"><img src="img/right.gif" width="34" height="400" border="" alt=""></td>
</tr>
<tr>
    <td colspan="3"><img src="img/bottomNav.gif" width="204" height="31" border="0" alt=""></td>



</tr>

</table>
<img src="img/bgWarrior.gif" width="176" height="300" border="0" alt="" align="right">
<table cellspacing="0" cellpadding="0" border="0" align="middle">
<tr>
    <td>

	<img src="img/titles/news.gif" width="150" height="51" border="0" alt=""><br>

<?
/*
	//####Begin News Listing!!!
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

		$Result = mysql_query("SELECT ID, Username, Date, News, Subject, Icon FROM newspost", $dblink);
		if (!$Result) {
  			echo("<p>Error performing query on newspost: " . mysql_error() . "</p>");
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

			print("<!-- news -->");
			print("<table cellspacing=\"2\" cellpadding=\"2\" border=\"0\">");
			print("<tr>");
			$T=$Row["Subject"];
			$I=$Row["Icon"];
			$D=$Row["Date"];
			$U=$Row["Username"];
			print("<td><img src=\"img/$I.gif\" border=\"0\" height=\"54\" width=\"54\" alt=\"\"></td>");
			print("<td align=\"left\"><p class=\"newsTitle\">$T<div class=\"newsDetail\">$D<br>By: <a href=\"mailto:mickey@rpgwo.com\" class=\"menuSubsection\">$U</a></div></td>");
			print("</tr>");
			print("</table>");
			//Now the main body of the news
			print("<table cellspacing=\"2\" cellpadding=\"2\" border=\"0\">");
			print("<tr>");
			print("<td colspan=\"2\" class=\"newsPost\">");
				print(nl2br($Row["News"]));
			print("</td>");
			print("</tr>");
			print("</table>");
			print("<!-- /news -->");
			print("<hr color=\"brown\" width=\"25%\">");
			//admin Options
			if($admin==1)
			{
				$id=$Row["ID"];
				print("<a href=\"editnews.php?s=$s&ID=$id\">Edit news</a>");
				print("  ");
				print("<a href=\"delnews.php?s=$s&ID=$id\">Delete news</a>");
			}

		}
		*/

?>



	<br><a href="news.php?s=<? echo($s); ?>" class="menuSubsection">News Archives</a>
</td>
</tr>
</table>




</body>
</html>
