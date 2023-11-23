<?
	$root_path = "../";
include($root_path . "header.php");
include($root_path . "config.php");
?>

<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<base href="http://www.projectxonline.net/rpgwo/">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO [Unoffical] Player's Guide - Citizen's Bank- Account Balance</TITLE>
   </HEAD>
  <BODY style="top-margin: 0; left-margin: 0; backgroundcolor: D3E3F8; textcolor: 000000">
    <table align="center" style="background-color: #A8C8F0; position: relative; top: 2; width: 700; left: 2; border: 1 solid #000080" cellpadding="0" cellspacing="0">
      <TR>
        <td rowspan="2" width="150" height="100%" valign="top" style="border-right: 1 solid #000080">

<!-- BEGIN MENU CODE -->
<?
	$root_path = "../";
include($root_path . "menu.php");
?>


<!-- END MENU CODE -->

        </td>

      <td width="550" height="15"  style="background-color: #0080FF">
          <p align="center"><font style="font-weight: bold">Citizen's Bank -Account Balance </font></p>
        </td>
      </tr>
      <tr>
        <td width="550" height="100%" valign="top" style="padding: 4; text-indent: 10">

<?
	if(@$B1=="")
	{
		include("bankform.php");
	}
	else
	{
		//Check if account exists
	//connect to the server, then test for failure
	if(!($dblink = mysqli_pconnect($dblocation,$dbusername,$dbpassword)))
	{
		print("Failed to connect to the database!<BR>\n");
		exit();
	}

	//select the database and test if it exists

	if(!mysqli_select_db($dbname))
	{
		print("Can't use the $dbname database!<BR>\n");
		exit();
	}


	//Check if username exists
	$result = @site_query("SELECT Username, LoanAmount, Date FROM bankrecord");
	if (!$result) {
  	echo("<p>Error performing query on Bank Record: " . mysqli_error() .
	"</p>");
 	 exit();
	}

	print("<p>Your Current Loans</p>");
	while ( $row = mysqli_fetch_array($result) )
	 {
		if($row["Username"]==$title)
		{
		$A=$row["LoanAmount"];
		$D=$row["Date"];
		//now show the loans
		print("<P>Current Loan is for $A and was taken out on $D</p><hr>");
		//Check if you need to compute interest

		}
	}


	} //end of if test

?>


        </td>
      </tr>
      <tr>
        <td width="150" height="100%" valign="top" style="border-right: 1 solid #000080">

        </td>
        <td width="550" height="100%" valign="top" style="padding: 4; text-indent: 10">
        </td>






    </table>

  </BODY>

</html>



