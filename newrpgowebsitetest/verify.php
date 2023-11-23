<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, Rpgwo,multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online - Verify Account</title>
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

	<?
if($username=="")
{
	print("Bad account name!");
	exit();
}

//Verifys and creates the user's account
//globals passed to this function are $username $password1 $password2 $email $realname
	if($pass == $rpass)
	{
	}
	else
	{
		print("Passwords Do Not Match!");
		exit();
	}
//get the database variables

require('config.php');

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

		
		//Check if username exists		
$result = @mysql_query("SELECT Username FROM user"); 
if (!$result) { 
  echo("<p>Error performing query on Username: " . mysql_error() . 
"</p>"); 
  exit(); 
}  
while ( $row = mysql_fetch_array($result) ) { 

	$test = $row["Username"];

	if($test== $username)
	{
	print("Sorry someone has already taken that username!");
	exit();
	}

} 
		//make sure data is ok
		$username=addslashes($username);
		//encrypt the password
		///$pass=md5($pass);
		$realname=addslashes($realname);
		$icon=addslashes($icon);
		$email=addslashes($email);


		//Now create the account 
		$sql = "INSERT INTO user SET 
          		Username='$username', 
          		Password='$pass',
			Realname='$realname',
			Email='$email',
			AdminLevel=0,
			Avater=$icon,
			Totalposts=0"; 

  		if (@mysql_query($sql)) { 
    			echo("<p>Your account has been added.  You can now login via the left panel!</p>"); 
 		 }		
	 else { 
    			echo("<p>Error adding account :" . mysql_error() . "</p>"); 
  		} 

		

		//email the user with their login information
		
		$mailsubject= "Rpgwo Registration";
		$mailbody = "Welcome to the RPGWO! ";
		$mailbody .= "Your username is $username and your password is $rpass";
		
		$mailheaders="From: mickey@rpgwo.com\n";
		$mailreslult = @mail($email, $mailsubject, $mailbody, $mailheaders);

		if(!$mailreslult)
		{
			print("Failed to send email to $email");
		}
		else
		{
			print("Email has been sent to your account with user information <BR>\n");
		}

?>
	
   </td>
</tr>
</table>




</body>
</html>


