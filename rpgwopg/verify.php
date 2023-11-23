<? include("header.php");

include("logincheck.php");

If(verifylogin($username,$password))
{
//register the session
session_register("$username");
$username = addslashes($username);
$s = session_id();

$sql = "Update user SET SessionID='$s' WHERE Username='$username'";
 if (@site_query($sql))
 {

 }
 else
 	echo("<p>Error  sid :" . mysqli_error() . "</p>");

  	print("<META HTTP-EQUIV=\"REFRESH\" CONTENT=\"0;URL=index.php?s=$s\">");

	//redirect user to the main page
	print("<a href=\"index.php?s=$s\">Click here if you don't want to wait!</a>");

				exit();
}
else
{
	Print ("Invaild Password or username.");
}
?>




