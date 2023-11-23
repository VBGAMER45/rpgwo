<?



if(@$submit=="Register!")
{
if (@$username=="")
{
	print("You need to enter a username!");
	exit();
}

if (@$password1=="")
{
	print("You need to enter a password!");
}


	if($email=="")
	{
		print("You need to supply an email address so we can send the login information");
		exit();
	}
	if($password1==$password2)
	{
	// do register account

		//connect to the server, then test for failure
		if(!($dblink = mysqli_connect($dblocation,$dbusername,$dbpassword,$dbname)))
		{
			print("Failed to connect to the database!<BR>\n");
			exit();
		}

		//select the database and test if it exists




			//Check if username exists
			$result = @site_query("SELECT Username FROM user");
			if (!$result) {
  				echo("<p>Error performing query on Username: " . mysqli_error() .
				"</p>");
  				exit();
			}
		while ( $row = mysqli_fetch_array($result) ) {

				$test = $row["Username"];

				if($test== $username)
				{
					print("Sorry someone has already taken that username!");
					exit();
				}

			}

		//Protect the Database

		$password1=addslashes($password1);
		$username=addslashes($username);
		$realname=addslashes($realname);
		$email=addslashes($email);
		//Now create the account
		$sql = "INSERT INTO user SET
          		Username='$username',
          		Password='$password1',
				Realname='$realname',
				Email='$email',
				Totalposts=0";

  		if (@site_query($sql)) {
    			echo("<p>Your account has been added.  You can now login and enjoy all the benfits of this site!</p>");
 		 }
	 else {
    			echo("<p>Error adding account :" . mysqli_error() . "</p>");
  		}



		//email the user with their login information

		$mailsubject= "RPGWO-PG: Registration";
		$mailbody = "Welcome to the RPGWO-PG ";
		$mailbody .= "Your username is $username and your password is $password1";
		$mailbody .= " Thank you for participating Jon The Great";

		$mailheaders="From: webmaster@projectxonline.net\n";
		$mailreslult = @mail($email, $mailsubject, $mailbody, $mailheaders);

		if(!$mailreslult)
		{
			print("Failed to send email to $email<BR>");
		}
		else
		{
			print("Email has been sent to your account with user information <BR>\n");
			print("<a href=\"login.php\">Login Now</a><BR>\n");
		}





	}
	else {
		print("Your Passwords do not match");
		exit();
	}


exit();
}

 include("header.php");

?>
<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO-PG: Register</TITLE>
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
          <p align="center"><font style="font-weight: bold">Register for RPGWOPG</font></p>
        </td>
      </tr>
      <tr>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">
	  <FORM action=register.php method=post>
            <TABLE width="100%">
              <TBODY>
              <TR>
                <TD vAlign=top align=right>Real Name:</TD>
                <TD vAlign=top align=left><INPUT name=realname></TD></TR>
              <TR>
                <TD vAlign=top align=right>Desired User Name:</TD>
                <TD vAlign=top align=left><INPUT maxLength=16
                name=username></TD></TR>
              <TR>
                <TD vAlign=top align=right>Password:</TD>
                <TD vAlign=top align=left><INPUT type=password
                  name=password1><BR><INPUT type=password name=password2></TD></TR>
              <TR>
                <TD vAlign=top align=right>Email Address:</TD>
                <TD vAlign=top align=left><INPUT name=email></TD></TR>
              <TR>
                <TD vAlign=top align=right> </TD>
                <TD vAlign=top align=left><INPUT type=submit value=Register! name=submit></TD></TR></TBODY></TABLE></FORM>

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

