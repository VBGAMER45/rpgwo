<?php
function verifylogin($username,$password)
{
global $dblocation,$dbusername,$dbpassword;
global $dblink, $dbname;


//connect to the server, then test for failure
if(!($dblink = mysqli_connect($dblocation,$dbusername,$dbpassword)))
{
	print("Failed to connect to the database!<BR>\n");
	exit();
}

//select the database and test if it exists

if(!mysqli_select_db($dblink,$dbname))
{
	print("Can't use the $dbname database!<BR>\n");
	exit();
}


//Check if username exists
$result = @site_query("SELECT Username, Password FROM user");
if (!$result) {
 echo("<p>Error performing query on Username: " . mysqli_error() . "</p>");
  exit();
}


while ( $row = mysqli_fetch_array($result) ) {

	if($row["Username"] === $username)
	{
		if($password===$row["Password"])
		{
              return(TRUE);
		}


	}


}
mysqli_free_result($result);

return(FALSE);
} //end of the function
?>