<?

	$root_path = "../";
include($root_path . "header.php");

if (@$server=="")
{

$server=0;
$name="Forum";
}
if ($server=="1")
{
$name="Liberty Forum";
}
if ($server=="2")
{
$name="Phobos Forum";
}



	include("/home2/vbgamer4/www/rpgwo/config.php");

	If(verifysession($s))
	{
					




		if(@$B1=="Edit Post")
		{
			//check if good post?
			if(@$title=="")
			{
				print("You need to enter a subject!");
				exit();
			}
			if(@$body=="")
			{
				print("You need to enter some text!");
				exit();
			}

			
			
			//do msql code here


		//first connect to the database

		//connect to the server, then test for failure
		if(!($dblink = mysql_pconnect($dblocation,$dbusername,$dbpassword)))
		{
			print("Failed to connect to the database!<BR>\n");
			exit();
		}

		//select the database and test if it exists

		if(!mysql_select_db($dbname,$dblink))
		{
			print("Can't use the $dbname database!<BR\n");
			exit();
		}

		//#####VERIFY if they own that post!
		$Result = mysql_query("SELECT Poster, ID FROM bbsMessage", $dblink);
			if (!$Result) { 
  			echo("<p>Error performing query on bbsmessage: " . mysql_error() . "</p>"); 
  			exit(); 
			}  
		$good=0;
		$username=getusername($s);
		while($Row = mysql_fetch_array($Result))
		{	
			
			if($username == $Row["Poster"] && $ID == $Row["ID"])
			{
				$good=1;
			}

		}
		if($good==0)
		{
			print("You do not own that post!");
			exit();
		}
		//######End of verify!


		$date=Date("z,Y"); 
		//add slahes to make database like it!
		$title=addslashes($title);
		$body=addslashes($body);
		
		$sql = "Update bbsMessage SET 
          		Title='$title',
			Body='$body',
			Created='$date'
			WHERE ID='$ID'";


  		if (@mysql_query($sql)) { 
    			echo("<p>Your Post has been Updated!</p>"); 
 		 }		
		else { 
    				echo("<p>Error updating post :" . mysql_error() . "</p>"); 
  			} 		

			exit();
		}
		

		}
	else
	{
		exit();
	}

?>
<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<base href="http://www.projectxonline.net/rpgwo/">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO-PG: <? print($name); ?> - Edit Post </TITLE>
   </HEAD>
  <BODY style="top-margin: 0; left-margin: 0; backgroundcolor: D3E3F8; textcolor: 000000">
       <table align="center" style="background-color: #A8C8F0; position: relative; top: 2; width: 700; left: 2; border: 1 solid #000080" cellpadding="0" cellspacing="0">
      <TR>
        <td rowspan="2" width="150" height="100%" valign="top" style="border-right: 1 solid #000080">

<!-- BEGIN MENU CODE -->
 <? 
	$root_path = "../";
include($root_path . "menu.php");?>
<!-- END MENU CODE -->

        </td>
        <td width="520" height="25"  style="background-color: #0080FF">
          <p align="center"><font style="font-weight: bold">Edit Post</font></p>
        </td>
      </tr>
      <tr>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">


<form action=phorum/editpost.php method="POST">
  <center>
  <p>Subject <input type="text" name="title" size="20" value="<?  print($subject); ?>" ></p>
  <p><b>Message Text</b></p>
  <textarea rows="15" name="body" cols="57" value="<?  print($body); ?>"></textarea> 

  <p> </p>
  <input type="hidden" name="ID" size="25" value="<?  print($ID); ?>" >

  <input type="hidden" name="s" size="25" value="<?  print($s); ?>">
  <input type="hidden" name="server" size="25" value="<?  print($server); ?>">	
  <p><input type="submit" value="Edit Post" name="B1"></p>

  </center>
</form>


     </td>
      </tr>
      <tr>
        <td width="100" height="100%" valign="top" style="border-right: 1 solid #000080">

        </td>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">
        </td>
      </tr>
    </table>
  </BODY>
</html>




