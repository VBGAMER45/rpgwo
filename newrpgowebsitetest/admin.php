<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<?
//Admin Access ONLY!
if($s=="")
{
	print("<h1>What are you trying to do??? This worries me...</h1>");
	exit();
}
else
{
	require('sessioncheck.php');
	if(verifyadmin($s) <= 0)
	{
		print("<h1>You are not an admin fool!</h1>");
		exit();
	}

}
?>

<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, Rpgwo,multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Jon The Great&Someguy">

	<title>RPG World Online - Admin Options</title>
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

	<H1>Admin Options</H1>
	<center>
	<BR>
	<a href="addnews.php?s=<? echo($s); ?>">Add News</a>
	<BR>
	<a href="adddownload.php?s=<? echo($s); ?>">Add Download</a>
	<BR>
	<a href="addguild.php?s=<? echo($s); ?>">Add Guild</a>
	<BR>
	<a href="addlink.php?s=<? echo($s); ?>">Add Link</a>
	<BR>
	<a href="addfaq.php?s=<? echo($s); ?>">Add Question and Answer</a>
	<BR>

<?
	//require('sessioncheck.php');
	if(verifyadmin($s) >= 3)
	{
	 //Is a @@@ and can edit accounts!

		print("<a href=\"editaccount.php?s=$s\">Edit Accounts</a>");
		print("<BR>");
		print("<a href=\"listaccounts.php?s=$s\">List Accounts</a>");				

	}

?>
	</center>
   </td>
</tr>
</table>




</body>
</html>

