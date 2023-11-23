<?

include("header.php");




	//If(verifylogin($username,$password))
	If(verifysession($s))
	{

		//check if informaiton was posted to this form then process the updates
		if(@$B1=="Update Account")
		{
			if(@$password1==@$password2)
			{


		//connect to the server, then test for failure
		if(!($dblink = mysqli_connect($dblocation,$dbusername,$dbpassword,$dbname)))
		{
			print("Failed to connect to the database!<BR>\n");
			exit();
		}



		//add slahes to make database like it!
		$realname=addslashes($realname);
		$email=addslashes($email);
		$s=addslashes($s);
		$password1=addslashes($password1);

			$Result = site_query("UPDATE user Set Realname='$realname', Email='$email', Password='$password1 ' WHERE SessionID = '$s'", $dblink);

			if (!$Result) {
  			echo("<p>Error performing query on user: " . mysqli_error() . "</p>");
  			exit();
			}





			print("<p>Account Updated</p>");

			exit();
			}
			else
			{
				print("<p>Passwords do not match!</p>");
			}

		}
		//now get account information

		//connect to the server, then test for failure
		if(!($dblink = mysqli_connect($dblocation,$dbusername,$dbpassword,$dblink)))
		{
			print("Failed to connect to the database!<BR>\n");
			exit();
		}

		//select the database and test if it exists


			//$Query = "SELECT * FROM user";
			$Result = site_query("SELECT Username, SessionID, Password, Realname, Email FROM user", $dblink);
			//print($Result);
			if (!$Result) {
  			echo("<p>Error performing query on user: " . mysqli_error() . "</p>");
  			exit();
			}

		while($Row = mysqli_fetch_array($Result))
		{


			//if($username == $Row["Username"])
			if($s == $Row["SessionID"])
			{
				$iname=$Row["Realname"];
				$ipass=$Row["Password"];
				$imail=$Row["Email"];
				$iuser=$Row["Username"];

			}
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
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO-PG: Your Account</TITLE>
   </HEAD>
  <BODY style="top-margin: 0; left-margin: 0; backgroundcolor: D3E3F8; textcolor: 000000">
       <table align="center" style="background-color: #A8C8F0; position: relative; top: 2; width: 700; left: 2; border: 1 solid #000080" cellpadding="0" cellspacing="0">
      <TR>
        <td rowspan="2" width="150" height="100%" valign="top" style="border-right: 1 solid #000080">

<!-- BEGIN MENU CODE -->
  <?

include("menu.php");?>
<!-- END MENU CODE -->

        </td>
        <td width="520" height="25"  style="background-color: #0080FF">
          <p align="center"><font style="font-weight: bold">Your account Information</font></p>
        </td>
      </tr>
      <tr>
	<td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">

		<form action=account.php method="POST">
 		 <center>
  		<p>Real Name <input type="text" name="realname" size="20" value="<?  print($iname); ?>" ></p>
 		 <p>Email
 		 <input type="text" name="email" size="20" value="<?  print($imail); ?>" >  </p>
  		<p>Password
  		<input type="password" name="password1" size="20" value="<?  print($ipass); ?>" > </p>
 		 <p>  Confirm Password <input type="password" name="password2" size="20" value="<?  print($ipass); ?>"></p>
  		<p> </p>
  		<input type="hidden" name="username" size="25" value="<?  print($iuser); ?>" >
  		<input type="hidden" name="password" size="25" value="<?  print($ipass); ?>">
  		<p><input type="submit" value="Update Account" name="B1"></p>

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

