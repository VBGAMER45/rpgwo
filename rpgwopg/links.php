<?
include("header.php");


?>
<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>Links</TITLE>
   </HEAD>

  <BODY style="top-margin: 0; left-margin: 0; backgroundcolor: D3E3F8; textcolor: 000000">
       <table align="center" style="background-color: #A8C8F0; position: relative; top: 2; width: 700; left: 2; border: 1 solid #000080" cellpadding="0" cellspacing="0">
      <TR>
        <td rowspan="2" width="150" height="100%" valign="top" style="border-right: 1 solid #000080">

<!-- BEGIN MENU CODE -->
          <? include("menu.php"); ?>
<!-- END MENU CODE -->

        </td>
        <td width="520" height="25"  style="background-color: #0080FF">
          <p align="center"><font style="font-weight: bold">Links</font></p>
        </td>
      </tr>
      <tr>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">
          <p align="center">Here is a list of Rpgwo related web sties.
          <hr height="1" noshade size="1" color="#000080">
          <b><font size="4"><a href="http://www.rpgwo.com">Rpgwo</a></font> </b>-
          <b>the official web site of the game.</b>
          <p><b><font size="3"><a href="http://www.angelfire.com/super/rummager">Rummager's
          Site</a></font></b></p>
          <p><b><font size="3"><a href="http://www.avidgamers.com/Whos/">The
          Whos Website (DEAD Link)</a></font></b></p>
          <p><b><font size="3"><a href="http://www.geocities.com/rpgwofan/">Mystic Paladin's RPGWO fan site</a></font></b></p>
          <p><b>Rpgwo Message Boards:</b></p>
          <p><b><font size="3"><a href="http://pyr8.net/rpgwo/forums2/">Main
          Rpgwo Message Board</a></font></b></p>
	    <p><b><font size="3">
          <a href="http://www.chatarea.com/RPGWorldOnlineForums">Last
          Rpgwo Board</a></font></b></p>

          <p><b><font size="3">
          <a href="http://www.fragomatic.net/rpgworld/forums/index.asp">Old
          Rpgwo Board</a></font></b></p>


          <p><font size="3"><b><a href="http://pub83.ezboard.com/brpgworldonline">Older Rpgwo Board</a></b></font></p>
          <p><font size="3"><b><a href="http://pub40.ezboard.com/brpgonline85789">Oldest
          Rpgwo Board</a></b></font></p>
          <p><font size="3"><b><a href="http://pub89.ezboard.com/brpgwoshangout">Rummager's
          Message Board</a></b></font></p>
	    <p><b>User Submitted Sites:</b></p>
	<?
	$logged=0;

	If(verifysession($s))
	{
		print("<a href=\"addsite.php?s=$s&server=$server\">Add Site</a><BR><br>");
		$logged=1;
	}
	else
	{
		print("<p>Login in order to add or edit a site.</p>");
	}
	//now display the guilds
	//connect to the server, then test for failure
	if(!($dblink = mysqli_connect($dblocation,$dbusername,$dbpassword,$dbname)))
	{
		print("Failed to connect to the database!<BR>\n");
		exit();
	}

	//select the database and test if it exists




	//Check if username exists
	$result = @site_query("SELECT Username, ID, Description, Url, Title FROM linkpost");
	if (!$result) {
  	echo("<p>Error performing query on Username: " . mysqli_error() .
	"</p>");
 	 exit();
	}


	while ( $row = mysqli_fetch_array($result) )
	 {
		$ID=$row["ID"];
		$U=$row["Url"];
		$D=$row["Description"];
		$T=$row["Title"];
		$U=stripslashes($U);
		$T=stripslashes($T);
		$D=stripslashes($D);

		//now show the link information
		if($logged==1)
			print("<font size=\"3\"><a href=\"$U\">$T</a> - $D  <a href=\"editsite.php?s=$s&server=$server&ID=$ID\">Edit Site</a> <a href=\"delsite.php?s=$s&server=$server&ID=$ID\">Delete Site</a><BR>");
		else
			print("<font size=\"3\"><a href=\"$U\">$T</a> - $D<BR>");

	}




	?>

        </td>
      </tr>
      <tr>
        <td width="100" height="100%" valign="top" style="border-right: 1 solid #000080">

        </td>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">
        </td>
      </tr>
    </table>
  </BODY>
</html>

