<?
	$root_path = "../";
include($root_path . "config.php");

//Check if the user submitted a loan.
if(@$B1=="Paid Money")
{
	if(@$account=="")
	{
		print("<b>You need to enter an Account Name</b>");
		exit();

	}
	if(@$amount=="")
	{
		print("<b>You need to enter a Paid Amount</b>");
		exit();
	}
	if(@$loan <= 0)
	{
		print("<b>Paid amount has to be greater than zero</b>");
		exit();
	}

		//first connect to the database

		//connect to the server, then test for failure
		if(!($dblink = mysqli_pconnect($dblocation,$dbusername,$dbpassword)))
		{
			print("Failed to connect to the database!<BR>\n");
			exit();
		}

		//select the database and test if it exists

		if(!mysqli_select_db($dbname,$dblink))
		{
			print("Can't use the $dbname database!<BR\n");
			exit();
		}




		//add slahes to make database like it!
		$account=addslashes($account);
		$amount=addslashes($amount);

		exit();

		$sql = "INSERT INTO bankrecord SET
          		Username='$account',
          		LoanAmount='$loan',
			Date='$loantime'";


  		if (@site_query($sql)) {
    			echo("<p>Your bank record has been added!</p>");
 		 }
		else {
    				echo("<p>Error adding bank record :" . mysqli_error() . "</p>");
  			}

			exit();



}




	$root_path = "../";
include($root_path . "header.php");



?>

<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<base href="http://www.projectxonline.net/rpgwo/">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO [Unoffical] Player's Guide - Citizen's Bank- Banker Interface</TITLE>
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
          <p align="center"><font style="font-weight: bold">Citizen's Bank -Banker Interface </font></p>
        </td>
      </tr>
      <tr>
        <td width="550" height="100%" valign="top" style="padding: 4; text-indent: 10">

<form action=bank/addpayment.php method="POST">
  <center>
  <p>Account Name:<input type="text" name="account" size="30" ></p>
  <p>Paid Amount:<input type="text" name="amount" size="10" ></p>
  <input type="hidden" name="server" size="25" value="<?  print($server); ?>">
  <input type="hidden" name="s" size="25" value="<?  print($s); ?>">
  <p><input type="submit" value="Paid Money" name="B1"></p>

  </center>
</form>


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
