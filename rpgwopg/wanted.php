<?
//Filename: RPGWO-PG: Wanted
include("header.php");



?>
<html>
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
   <base href="http://www.projectxonline.net/rpgwo/">
   <link rel="stylesheet" type="text/css" href="theme.css">
   <title>RPGWO-PG: Bounty Information</title>
   <script data-ad-client="ca-pub-4552520252712198" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
 </head>

</center>
 <body style="top-margin: 0; left-margin: 0; backgroundcolor: D3E3F8; textcolor: 000000">
   <table align="center" style="background-color: #A8C8F0; position: relative; top: 2; width: 700; left: 2; border: 1 solid #000080" cellpadding="0" cellspacing="0">
     <tr>
       <td rowspan="2" width="150" height="100%" valign="top" style="border-right: 1 solid #000080">
 <? include("menu.php"); ?>
       </td>
       <td width="550" height="25" style="background-color: #0080FF">
         <p align="center"><font style="font-weight: bold">Bounty Information</font></p>
       </td>
     </tr>
     <tr>
       <td width="550" height="100%" valign="top" style="padding: 4; text-indent: 10">
Here is the place where you place bounties on people's head and you can also find rewards for killing people here!<HR color=#000080 noShade SIZE=1 height="1">
	<?
	$logged=0;
	If(verifysession($s))
	{
		print("<a href=\"wanted/addwanted.php?s=$s&server=$server\">Add Bounty</a><BR>");
		$logged=1;
	}
	else
	{
		print("<p>You need to be logged in to add and edit a bounty!</p>");
	}
	//now display the guilds
	//connect to the server, then test for failure
	if(!($dblink = mysqli_connect($dblocation,$dbusername,$dbpassword,$dblink)))
	{
		print("Failed to connect to the database!<BR>\n");
		exit();
	}

	//select the database and test if it exists



	//Check if username exists
	$result = @site_query("SELECT Username, Description, Reward, ID, Category, Title FROM wantedpost");
	if (!$result) {
  	echo("<p>Error performing query on wantedpost: " . mysqli_error() .
	"</p>");
 	 exit();
	}


	while ( $row = mysqli_fetch_array($result) )
	 {
		if($row["Category"]==$server)
		{
		$ID=$row["ID"];
		$U=$row["Username"];
		$D=$row["Description"];
		$R=$row["Reward"];
		$T=$row["Title"];
		//now show shop information
		if($logged==1)
			print("Wanted: $T : Reward : $R  : Posted by: $U <a href=\"wanted/more.php?s=$s&server=$server&ID=$ID&Description=$D\"> More Information</a>  <a href=\"wanted/editwanted.php?s=$s&server=$server&ID=$ID\">Edit Bounty</a> <a href=\"wanted/delwanted.php?s=$s&server=$server&ID=$ID\">Delete Bounty</a>  <BR>");
		else
			print("Wanted: $T : Reward : $R  : Posted by: $U <a href=\"wanted/more.php?s=$s&server=$server&ID=$ID&Description=$D\"> More Information</a><BR>");

		}
	}




	?>
 </td>
     </tr>
   </table>
   <br>
 </body>
</html>

