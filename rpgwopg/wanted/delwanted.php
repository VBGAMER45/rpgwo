<?

	$root_path = "../";
include($root_path . "header.php");




	include("/home2/vbgamer4/www/rpgwo/config.php");

	If(verifysession($s))
	{





		if(@$B1=="Delete Bounty")
		{




			//do msql code here


		//first connect to the database

		//connect to the server, then test for failure
		if(!($dblink = mysqli_pconnect($dblocation,$dbusername,$dbpassword)))
		{
			print("Failed to connect to the database!<BR>\n");
			exit();
		}

		//select the database and test if it exists

		if(!mysqli_select_db($dbname,$dblink))
		{
			print("Can't use the $dbname database!<BR\n");
			exit();
		}

		//#####VERIFY if they own that post!
		$Result = site_query("SELECT Username, ID FROM wantedpost", $dblink);
			if (!$Result) {
  			echo("<p>Error performing query on wantedpost: " . mysqli_error() . "</p>");
  			exit();
			}
		$good=0;
		$username=getusername($s);
		while($Row = mysqli_fetch_array($Result))
		{

			if($username == $Row["Username"] && $ID == $Row["ID"])
			{
				$good=1;
			}

		}
		if($good==0)
		{
			print("You do not own that bounty!");
			exit();
		}
		//######End of verify!


		$sql = "Delete FROM wantedpost
			WHERE ID='$ID'";


  		if (@site_query($sql)) {
    			echo("<p>Your bounty has been deleted!</p>");
 		 }
		else {
    				echo("<p>Error deleting bounty:" . mysqli_error() . "</p>");
  			}

			exit();
		}


		}
	else
	{
		exit();
	}

?>
<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<base href="http://www.projectxonline.net/rpgwo/">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO-PG: Delete Bounty </TITLE>
   </HEAD>
  <BODY style="top-margin: 0; left-margin: 0; backgroundcolor: D3E3F8; textcolor: 000000">
       <table align="center" style="background-color: #A8C8F0; position: relative; top: 2; width: 700; left: 2; border: 1 solid #000080" cellpadding="0" cellspacing="0">
      <TR>
        <td rowspan="2" width="150" height="100%" valign="top" style="border-right: 1 solid #000080">

<!-- BEGIN MENU CODE -->
<?
	$root_path = "../";
include($root_path . "menu.php");
?>
<!-- END MENU CODE -->

        </td>
        <td width="520" height="25"  style="background-color: #0080FF">
          <p align="center"><font style="font-weight: bold">Delete Bounty</font></p>
        </td>
      </tr>
      <tr>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">


<form action=wanted/delwanted.php method="POST">
  <center>

  <input type="hidden" name="ID" size="25" value="<?  print($ID); ?>" >
  <input type="hidden" name="s" size="25" value="<?  print($s); ?>" >
  <input type="hidden" name="server" size="25" value="<?  print($server); ?>">
  <p><input type="submit" value="Delete Bounty" name="B1"></p>

  </center>
</form>


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

