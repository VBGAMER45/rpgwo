<? include("header.php");




	//If(verifylogin($username,$password))
	If(verifysession($s))
	{

		if(@$B1=="Edit Site")
		{
			//check if good post?
			if(@$title=="")
			{
				print("You need to enter a website name!");
				exit();
			}
			if(@$body=="")
			{
				print("You need to enter some a website description!");
				exit();
			}
			if(@$url=="")
			{
				print("You need to a url!");
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
			print("Can't use the $dbname database!<BR>\n");
			exit();
		}

		//#####VERIFY if they own that post!
		$Result = site_query("SELECT Username, ID FROM linkpost", $dblink);
			if (!$Result) {
  			echo("<p>Error performing query on linkpost: " . mysqli_error() . "</p>");
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
			print("You do not own that post!");
			exit();
		}
		//######End of verify!


		$date=Date("z,Y");
		//add slahes to make database like it!
		$title=addslashes($title);
		$body=addslashes($body);
		$url=addslashes($url);
		$ID=addslashes($ID);
		$sql = "Update linkpost SET
          		Title='$title',
				Description='$body',
				Url='$url'
				WHERE ID='$ID'";


  		if (@site_query($sql)) {
    			echo("<p>Your site has been Updated!</p>");
 		 }
		else {
    				echo("<p>Error updating site :" . mysqli_error() . "</p>");
  			}

			exit();
		}


		}
	else
	{
		print("You have to be logged in, in order to edit!");
		exit();
	}

?>

<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<base href="http://www.projectxonline.net/rpgwo/">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO-PG: Edit Site  </TITLE>
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
          <p align="center"><font style="font-weight: bold">Edit Site</font></p>
        </td>
      </tr>
      <tr>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">


<form action=editsite.php method="POST">
  <center>
  <p>Site Name<input type="text" name="title" size="20" ></p>
  <p><b>Description</b></p>
  <textarea rows="15" name="body" cols="57"></textarea>
  <p>Url<input type="text" name="url" size="20" ></p>
  <input type="hidden" name="ID" size="25" value="<?  print($ID); ?>">
  <input type="hidden" name="server" size="25" value="<?  print($server); ?>">
<input type="hidden" name="s" size="25" value="<?  print($s); ?>">
  <p><input type="submit" value="Edit Site" name="B1"></p>

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


