<?

function verifylogin($username,$password)
{

require('config.php');

//EDIT THE ABOVE VARIBALES TO MAKE IT work on your computer

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
$result = @mysql_query("SELECT Username, Password FROM user"); 
if (!$result) { 
  echo("<p>Error performing query on Username: " . mysql_error() . 
"</p>"); 
  exit(); 
}  


while ( $row = mysql_fetch_array($result) ) { 

	$test = $row["Username"];

	if($test== $username)
	{
		if($password==$row["Password"])
		{	
			return(TRUE);
		}

		
	}


} 
return(FALSE);
} //end of the function

?>


