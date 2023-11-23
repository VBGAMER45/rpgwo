<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<?
if($s=="")
{
	print("<h1>What are you trying to do??? This worries me...</h1>");
	exit();
}

if(@$submit=="Update Account Profile")
{
if($pass=="")
{
	print("<h1>Invaild Password</h1>");
	exit();
}

if($pass !=$rpass)
{
	print("<h1>Passwords do not match!</h1>");
	exit();
}
else
{
	$pass=md5($pass);
}

if($email=="")
{
	print("<h1>You need an email address!</h1>");
	exit();
}
if($realname=="")
{
	print("<h1>You need to enter a realname</h1>");
	exit();
}
if(@$icon < 0 || @$icon > 100)
{
	print("<h1>Invaild Picture number!</h1>");
	exit();
}


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
$email=addslashes($email);
$realname=addslashes($realname);
$icon=addslashes($icon);

		$sql = "Update user SET Realname='$realname', Password='$pass', Email='$email', Avater='$icon' WHERE SessionID='$s'";
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
		if (!$Result) { 
  			echo("<p>Error performing query on user: " . mysql_error() . "</p>"); 
  			exit(); 
		}  
		// now get the data array
		while($Row = mysql_fetch_array($Result))
		{	
			//now get account properties
			if($s==$Row["SessionID"])
			{
				$ausername = $Row["Username"];
				$aemail = $Row["Email"];
				$aicon = $Row["Avater"];
				$arealname = $Row["Realname"];
				$abanned = $Row["Banned"];
				$aadmin = $Row["AdminLevel"];
				$title = $Row["Title"];
			}
		}
?>
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, Rpgwo,multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online - Update Account</title>
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

	<font color="#000000" size="+3"><b>Update Account</b></font>
<form action="youraccount.php" method="post">
<input type="hidden" name="s" size="25" value="<?  print($s); ?>" >

  <pre> <font color="#000000" size="-1">All fields marked with <font color="#ff0000">*</font> are Required.</font>

 Username:<? echo($ausername); ?>

 E-Mail Address:<font color="#ff0000">*</font>
 <input maxLength="128" size="64" name="email" value='<? echo($aemail); ?>'>

 New Password (case sensitive):<font color="#ff0000">*</font>
 <input type="password" maxLength="32" size="32" value name="pass">

 Re-Enter New Password:<font color="#ff0000">*</font>
 <input type="password" maxLength="32" size="32" value name="rpass">

 Real Name:<font color="#ff0000">*</font>
 <input maxLength="32" size="32" name="realname" value='<? echo($arealname); ?>'>
 
Icon:<font color="#ff0000">*</font>
 <input maxLength="3" size="32" name="icon" value='<? echo($aicon); ?>'>
 <img src="icons/icon_<? echo($aicon); ?>.gif" width="32" height="32" border="0" alt="">
  &nbsp;<input type="submit" value="Update Account Profile" name="submit"><br>
</form>
	
   </td>
</tr>
</table>




</body>
</html>

