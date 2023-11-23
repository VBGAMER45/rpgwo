<?
//Filename: RPGWO-PG: Shops of Rpgwo
include("header.php");



?>
<html>
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
   <base href="http://www.projectxonline.net/rpgwo/">
   <link rel="stylesheet" type="text/css" href="theme.css">
   <title>RPGWO-PG: Player's Shops</title>
   <script data-ad-client="ca-pub-4552520252712198" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
 </head>

 <body style="top-margin: 0; left-margin: 0; backgroundcolor: D3E3F8; textcolor: 000000">
   <table align="center" style="background-color: #A8C8F0; position: relative; top: 2; width: 700; left: 2; border: 1 solid #000080" cellpadding="0" cellspacing="0">
     <tr>
       <td rowspan="2" width="150" height="100%" valign="top" style="border-right: 1 solid #000080">
 <? include("menu.php"); ?>
       </td>
       <td width="550" height="25" style="background-color: #0080FF">
         <p align="center"><font style="font-weight: bold">Buying and Selling Information</font></p>
       </td>
     </tr>
     <tr>
       <td width="550" height="100%" valign="top" style="padding: 4; text-indent: 10">
Here is the place to find what people are selling and buying! You can even post your own shop to get more business<HR color=#000080 noShade SIZE=1 height="1">
	<?
	$logged=0;
	If(verifysession($s))
	{
		print("<a href=\"shops/addshop.php?s= $s&server=$server\">Add Shop</a><BR>");
		$logged=1;
	}
	else
	{
	    print("<p>In order to add a shop you have to be logged in!</p>");
	}

	//now display the guilds
	//connect to the server, then test for failure
	if(!($dblink = mysqli_pconnect($dblocation,$dbusername,$dbpassword)))
	{
		print("Failed to connect to the database!<BR>\n");
		exit();
	}

	//select the database and test if it exists

	if(!mysqli_select_db($dbname))
	{
		print("Can't use the $dbname database!<BR\n");
		exit();
	}


	//Check if username exists
	$result = @site_query("SELECT Username, Description, Location, ID, Category, Title FROM storepost");
	if (!$result) {
  	echo("<p>Error performing query on storepost: " . mysqli_error() .
	"</p>");
 	 exit();
	}


	while ( $row = mysqli_fetch_array($result) )
	 {
		if($row["Category"]==$server)
		{
		$ID=$row["ID"];
		$D=$row["Description"];
		$L=$row["Location"];
		$T=$row["Title"];
		//now show shop information
		if($logged==1)
			print(" $T : Location : $L  : <a href=\"shops/more.php?s=$s&server=$server&ID=$ID&Description=$D\"> More Information</a>  <a href=\"shops/editshop.php?s=$s&server=$server&ID=$ID\">Edit Shop</a> <a href=\"shops/delshop.php?s=$s&server=$server&ID=$ID\">Delete Shop</a>  <BR>");
		else
			print(" $T : Location : $L  : <a href=\"shops/more.php?s=$s&server=$server&ID=$ID&Description=$D\"> More Information</a><BR>");

		}
	}




	?>
 </td>
     </tr>
   </table>
   <br>
 </body>
</html>

