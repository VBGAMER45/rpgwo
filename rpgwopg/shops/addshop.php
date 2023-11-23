<?
	$root_path = "../";
include($root_path . "header.php");


	include("/home2/vbgamer4/www/rpgwo/config.php");

	If(verifysession($s))
	{





		if(@$B1=="Add Shop")
		{
			//check if good post?
			if(@$title=="")
			{
				print("You need to enter a shop name!");
				exit();
			}
			if(@$body=="")
			{
				print("You need to enter some shop description!");
				exit();
			}
			if(@$location=="")
			{
				print("You need to enter a location");
				exit();
			}


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



		//add slahes to make database like it!
		$title=addslashes($title);
		$body=addslashes($body);
		$location=addslashes($location);
		$username=getusername($s);

		$sql = "INSERT INTO storepost SET
          		Username='$username',
          		Title='$title',
			Category='$server',
			Description='$body',
			Location='$location'";


  		if (@site_query($sql)) {
    			echo("<p>Your shop has been added!</p>");
 		 }
		else {
    				echo("<p>Error adding shop :" . mysqli_error() . "</p>");
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
     <TITLE>RPGWO-PG: Add Shop  </TITLE>
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
          <p align="center"><font style="font-weight: bold">Add Shop:</font></p>
        </td>
      </tr>
      <tr>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">

<form action=shops/addshop.php method="POST">
  <center>
  <p>Shop Name<input type="text" name="title" size="20" ></p>
  <p><b>Description</b></p>
  <textarea rows="15" name="body" cols="57"></textarea>
  <p>Shop Locaiton<input type="text" name="location" size="20" ></p>

  <p> </p>
  <input type="hidden" name="s" size="25" value="<?  print($s); ?>">
  <input type="hidden" name="server" size="25" value="<?  print($server); ?>">
  <p><input type="submit" value="Add Shop" name="B1"></p>

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

