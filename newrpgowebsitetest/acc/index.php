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
	//require "toprightbar.php?S=$S";
	include($root_path."menu.php");
	require('config.php');
	//	include("C:\\Program Files\\Abyss Web Server\\htdocs\\rpgwotest\\toprightbar.php?S=$S");
	//	include("C:\\Program Files\\Abyss Web Server\\htdocs\\rpgwotest\\menu.php?S=$S");
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

		$Result = mysql_query("SELECT Username, Date, News, Subject, Icon FROM newspost", $dblink); 
		if (!$Result) { 
  			echo("<p>Error performing query on newspost: " . mysql_error() . "</p>"); 
  			exit(); 
		}  
		// now get the data array
		while($Row = mysql_fetch_array($Result))
		{	
			
			print("<!-- news -->");
			print("<table cellspacing=\"2\" cellpadding=\"2\" border=\"0\">");			
			print("<tr>");
			$I=$Row["Icon"];
			print("<td><img src=\"img/$I.jpg\" border=\"0\" height=\"54\" width=\"54\" alt=\"\"></td>");
			print("<td align=\"left\"><p class=\"newsTitle\">Site and World woes...<div class="newsDetail">Tuesday, July 8, 2003<br>By: <a href="mailto:mickey@rpgwo.com" class="menuSubsection">Mickey</a></div></td>");


			
			print("<!-- /news -->");
			print("<hr color=\"brown\" width=\"25%\">");


			//now print all the news posts in the db
			//if($Row["Subject"] == "")
			//{
			//}
			//else	
			//{
				//print("<b>" . $Row["Subject"] . "</b><br> " . nl2br($Row["Body"]);
				print("<BR>");
			//}
		}

?>



	<br><a href="news.php?S=<? echo($S); ?>" class="menuSubsection">News Archives</a>
</td>
</tr>
</table>




</body>
</html>
