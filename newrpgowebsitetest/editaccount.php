
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<?
//Admin Only
if($s=="")
{
	print("<h1>What are you trying to do??? This worries me...</h1>");
	exit();
}
else
{
	require('sessioncheck.php');
	if(verifyadmin($s) < 3)
	{
		print("<h1>You are not an admin fool!</h1>");
		print("<h1>Or you are not a @@@</h1>");
		exit();
	}

}
if(@$username=="")
{
	print("<p>Enter the username of the account</p>");
	print("<form action=\"editaccount.php\" method=\"post\">");
  	print("<input type=\"hidden\" name=\"s\" size=\"25\" value=\"$s\">");
 	print("Username:");
 	print("<input maxLength=\"16\" size=\"16\" name=\"username\">");
	print("<input type=\"submit\" value=\"Select Account\" name=\"submit\"><br>");
	print("</form>");

	exit();
}
if(@$submit=="Select Account")
{

}


if(@$submit=="Edit Account")
{
//Update the account
require('config.php');

//test if information submited is valid


//connect to the server, then test for failure
if(!($dblink = mysql_pconnect($dblocation,$dbusername,$dbpassword)))
{
	print("Failed to connect to the database!<BR>\n");
	exit();
}

//select the database and test if it exists

if(!mysql_select_db($dbname))
{
	print("Can't use the $dbname database!<BR\n");
	exit();
}


		$sql = "Update user SET Realname='$realname', Email='$email', AdminLevel='$admin', Title='$title', Avater='$icon', Banned='$ban' WHERE Username='$username'";
  		if (@mysql_query($sql))
 			echo("<H1>Account Updated!!</h1>");
 		else
    			echo("<p>Error  update account :" . mysql_error() . "</p>");


exit();
}


require('config.php');

//#######Get Account Properites#######################################
//connect to the server, then test for failure
		if(!($dblink = mysql_pconnect($dblocation,$dbusername,$dbpassword)))
		{
			print("Failed to connect to the database!<BR>\n");
			exit();
		}
		//select the database and test if it exists
		if(!mysql_select_db($dbname,$dblink))
		{
			print("Can't use the $dbname database!<BR>\n");
			exit();
		}

		$Result = mysql_query("SELECT Username, Realname, AdminLevel, Email, Avater, Banned, SessionID, Title FROM user", $dblink); 
		//print($Result);
		if (!$Result) { 
  			echo("<p>Error performing query on user: " . mysql_error() . "</p>"); 
  			exit(); 
		}  
		// now get the data array
		$bad=1;
		while($Row = mysql_fetch_array($Result))
		{	
			//now get account properties
			if($username==$Row["Username"])
			{
				$ausername = $Row["Username"];
				$aemail = $Row["Email"];
				$aicon = $Row["Avater"];
				$arealname = $Row["Realname"];
				$abanned = $Row["Banned"];
				$aadmin = $Row["AdminLevel"];
				$title = $Row["Title"];
				$bad=2;
			}

		}
		if($bad==1)
		{
			print("<h1>Account NOT Found!</h1>");
			exit();
		}

?>
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, Rpgwo,multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online - Edit Account</title>
	<LINK href="img/style.css" rel=stylesheet>
</HEAD>

<body background="img/paperBG.jpg" leftmargin=0 topmargin=0>
	<?
		include("toprightbar.php");
		include("menu.php");
	?>

    <td><img src="img/right.gif" width="34" height="400" border="0" alt=""></td>
</tr>
<tr>
    <td colspan="3"><img src="img/bottomNav.gif" width="204" height="31" border="0" alt=""></td>
</tr>
</table>

<img src="img/bgMage.gif" width="227" height="300" border="0" alt="" align="right">
<table cellspacing="0" cellpadding="0" border="0" align="middle">
<tr>
    <td>

	<font color="#000000" size="+3"><b>Edit Account</b></font>
<form action="editaccount.php" method="post">

  <pre> <font color="#000000" size="-1">All fields marked with <font color="#ff0000">*</font> are Required.</font>
 <input type="hidden" name="s" size="25" value="<?  print($s); ?>" >
 Username:<font color="#ff0000">*</font>
 <input maxLength="16" size="16" name="username" value="<? echo($ausername); ?>">

 E-Mail Address:<font color="#ff0000">*</font>
 <input maxLength="128" size="64" name="email" value="<? echo($aemail); ?>">

 Real Name:<font color="#ff0000">*</font>
 <input maxLength="32" size="32" name="realname" value="<? echo($arealname); ?>">

 Icon #:<font color="#ff0000">*</font>
 <input maxLength="3" size="32" name="icon" value="<? echo($aicon); ?>">

 Admin Level:<font color="#ff0000"></font>
 <input maxLength="10" size="32" name="admin" value="<? echo($aadmin); ?>">

Title:<font color="#ff0000"></font>
 <input maxLength="30" size="32" name="title" value="<? echo($atitle); ?>">

Banned:<font color="#ff0000"></font>
 <input maxLength="2" size="32" name="ban" value="<? echo($abanned); ?>">

  &nbsp;<input type="submit" value="Edit Account" name="submit"><br>
</form>
	
   </td>
</tr>
</table>




</body>
</html>


