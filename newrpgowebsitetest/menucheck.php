<?

function verifysession2($s)
{
	$root_path = "./";
	require($root_path . 'config.php');
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

//Check if session exists		
$result = @mysql_query("SELECT SessionID FROM user"); 
if (!$result) { 
  echo("<p>Error performing query on Username: " . mysql_error() . 
"</p>"); 
  exit(); 
}  


while ( $row = mysql_fetch_array($result) ) { 
	$test = $row["SessionID"];
	if($test== $s)
	{
			return(TRUE);
	}
} 
return(FALSE);
} //end of the function

function verifyadmin2($s)
{
	$root_path = "./";
	require($root_path . 'config.php');
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

//Check if session exists		
$result = @mysql_query("SELECT SessionID, AdminLevel FROM user"); 
if (!$result) { 
  echo("<p>Error performing query on SessionID: " . mysql_error() . 
"</p>"); 
  exit(); 
}  


while ( $row = mysql_fetch_array($result) ) { 
	$test = $row["SessionID"];
	if($test== $s)
	{
			return($row["AdminLevel"]);
	}
} 
return(0);
} //end of the function

?>


