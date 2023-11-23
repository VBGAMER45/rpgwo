<?php
// Jonathan Valentin 2003
//Configuration File for Rpgwo Site
//What you need to do is edit the database constants and
//change all the baseurl in the files and make sure the includes have the correct filelocation



//Admin Login in To edit the site
$AdminName = "AdminLogin";
$AdminPass = "password";

//Database config

$dblocation = "127.0.0.1";
$dbusername = "";
$dbpassword = "";

$dbname = "vbgamer4_rpgwo2";

function site_query($sql,$link = '')
{
	global $dblink;

	if (empty($link))
	$link = $dblink;

	$result  = mysqli_query($link,$sql);

	return $result;
}

?>