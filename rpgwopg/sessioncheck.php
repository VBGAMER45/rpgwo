<?php
global $dblink;
function verifysession($s)
{
global $dblocation,$dbusername,$dbpassword,$dbname, $dblink;

//connect to the server, then test for failure
if(!($dblink = @mysqli_connect($dblocation,$dbusername,$dbpassword,$dbname)))
{
	print("Failed to connect to the database!!<BR>\n");
	//exit();
}




//Check if session exists
$result = @site_query("SELECT SessionID FROM user");
if (!$result) {
 // echo("<p>Error performing query on Username: " . mysqli_error() . "</p>");
  //exit();
}


while ( $row = @mysqli_fetch_array($result) ) {
	$test = $row["SessionID"];
	if($test== $s)
	{
			return(TRUE);
	}
}
return(FALSE);
} //end of the function

function verifyadmin($s)
{
global $dblocation,$dbusername,$dbpassword,$dbname;
//connect to the server, then test for failure
if(!($dblink = @mysqli_connect($dblocation,$dbusername,$dbpassword,$dbname)))
{
	print("Failed to connect to the database!<BR>\n");
	exit();
}



//Check if session exists
$result = @site_query("SELECT SessionID, AdminLevel FROM user");
if (!$result) {
  echo("<p>Error performing query on SessionID: " . mysqli_error() .
"</p>");
  exit();
}


while ( $row = mysqli_fetch_array($result) ) {
	$test = $row["SessionID"];
	if($test== $s)
	{
			return($row["AdminLevel"]);
	}
}
return(0);
} //end of the function

function getusername($s)
{

global $dblocation,$dbusername,$dbpassword,$dbname;
//connect to the server, then test for failure
if(!($dblink = @mysql_pconnect($dblocation,$dbusername,$dbpassword,$dbname)))
{
	print("Failed to connect to the database!<BR>\n");
	exit();
}



//Check if session exists
$result = @site_query("SELECT SessionID, Username FROM user");
if (!$result) {
  echo("<p>Error performing query on SessionID: " . mysqli_error() .
"</p>");
  exit();
}


while ( $row = mysqli_fetch_array($result) ) {
	$test = $row["SessionID"];
	if($test== $s)
	{
			return($row["Username"]);
	}
}
return(0);
} //end of the function


?>


