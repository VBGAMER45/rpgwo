<?
//Filename: RPGWO-PG: Guilds Guilds of Rpgwo
include("header.php");



?>
<html>
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
   <base href="http://www.projectxonline.net/rpgwo/">
   <link rel="stylesheet" type="text/css" href="theme.css">
   <title>RPGWO-PG: Guilds</title>
   <script data-ad-client="ca-pub-4552520252712198" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
 </head>

 <body style="top-margin: 0; left-margin: 0; backgroundcolor: D3E3F8; textcolor: 000000">
   <table align="center" style="background-color: #A8C8F0; position: relative; top: 2; width: 700; left: 2; border: 1 solid #000080" cellpadding="0" cellspacing="0">
     <tr>
       <td rowspan="2" width="150" height="100%" valign="top" style="border-right: 1 solid #000080">
  <? include("menu.php"); ?>

       </td>
       <td width="550" height="25" style="background-color: #0080FF">
         <p align="center"><font style="font-weight: bold">Guilds of Rpgwo</font></p>
       </td>
     </tr>
     <tr>
       <td width="550" height="100%" valign="top" style="padding: 4; text-indent: 10">
Here is the place to find information on the guilds in RPGWO.  Guilds are changing all the time, so keep your guild information up to date
<HR color=#000080 noShade SIZE=1 height="1">
	<?
	$logged=0;
	If(verifysession($s))
	{
		print("<a href=\"guilds/addguild.php?s=$s&server=$server\">Add Guild</a><BR>");
		$logged=1;
	}
	else
	{
		print("<p>Please login in order to add or edit a guild");
	}

	//now display the guilds
	//connect to the server, then test for failure
	if(!($dblink = mysqli_connect($dblocation,$dbusername,$dbpassword)))
	{
		print("Failed to connect to the database!<BR>\n");
		exit();
	}

	//select the database and test if it exists

	if(!mysqli_select_db($dbname))
	{
		print("Can't use the $dbname database!<BR>\n");
		exit();
	}


	//Check if username exists
	$result = @site_query("SELECT Username, Members, Leader, ID, Category, Title FROM guildpost");
	if (!$result) {
  	echo("<p>Error performing query on Username: " . mysqli_error() .
	"</p>");
 	 exit();
	}


	while ( $row = mysqli_fetch_array($result) )
	 {
		if($row["Category"]==$server)
		{
		$ID=$row["ID"];
		$M=$row["Members"];
		$L=$row["Leader"];
		$T=$row["Title"];
		//now show the guild information
		if($logged==1)
			print(" $T : Owner : $L  : Total members: $M  <a href=\"guilds/editguild.php?s=$s&server=$server&ID=$ID\">Edit Guild</a> <a href=\"guilds/delguild.php?s=$s&server=$server&ID=$ID\">Delete Guild</a>  <BR>");
		else
			print(" $T : Owner : $L  : Total members: $M <BR>");

		}
	}




	?>
 </td>
     </tr>
   </table>
   <br>
 </body>
</html>


