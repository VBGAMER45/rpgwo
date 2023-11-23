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

	/*
	** perform actions
	*/
	if(@$post != "")
	{
		if(@$post == "Post")
		{
			if(@$inputParent =="")
			{
			@$inputParent=="0";
			}
		//add slahes to make database like it!
		$body=addslashes($body);
		$subject=addslashes($subject);
		$username=getusername($s);

			$sql = "INSERT INTO bbsMessage SET 
          		Title='$subject',
			Poster='$username',
			Created='now()',
			Category='$server',
			Body='$body',
			Parent='$inputParent'"; 
	
			if(!($dbResult = mysql_query($sql, $dblink)))
			{
				//can't execute query
				print("Couldn't insert into bbsMessage table!<BR>\n");
				print("MySQL Reports: " . mysql_error() . "<BR>\n");
				exit();
			}
			if (@$email_reply=="Y")
			{
			//send email replied to their address
			}
			print("Message Posted!");
			exit();

		}

	}
}
else
{
print("You have to be a member in order to post!");
exit();
}

?>

<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<base href="http://www.projectxonline.net/rpgwo/">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO-PG: <? print($name); ?> - Post  </TITLE>
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
          <p align="center"><font style="font-weight: bold">Post:</font></p>
        </td>
      </tr>
      <tr>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">


<FORM action=phorum/post.php method=post><INPUT type=hidden value=0 name=t> 
            <INPUT type=hidden value=post name=a> <INPUT type=hidden value=1 
            name=f> <INPUT type=hidden value=0 name=p> 
            <TABLE cellSpacing=1 cellPadding=2 border=0>
              <TBODY>
              <TR>
                <TD  colSpan=2>
                  <TABLE cellSpacing=1 cellPadding=1 border=0>
                    <TBODY>
                    <TR>
                      <TD>
                        <DIV class=nav><FONT color=#7c7c85><A 
                        href="<? print("phorum/index.php?f=1&s=$s&server=$server");  ?> "><FONT 
                        color=#7c7c85>Return to Message List</FONT></A></DIV></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD  colSpan=2 height=21><FONT 
                  color=#ffffff> 
			<? if(@$inputParent=="")
			   {
				print("New Topic:");
			   }
			   else
			   {
				print("Add Reply:");
			   }

			?>

			</FONT></TD></TR>
                <TD bgColor=#181818><INPUT type=hidden maxLength=30 size=30 
              name=s value="<? print($s); ?>" ></TD>
              
		 <TD bgColor=#181818><INPUT type=hidden maxLength=50 size=30 
              name=server value="<? print($server); ?>" ></TD>

                <TD bgColor=#181818><INPUT type=hidden maxLength=50 size=30 
              name=inputParent value="<? print($inputParent); ?>" ></TD>

              <TR>
                <TD noWrap ><FONT 
                  color=#7c7c85> Subject:</FONT></TD>
                <TD ><INPUT maxLength=50 size=30 
                name=subject value="<? print(@$subject); ?> "></TD></TR>
              <TR>
                <TD noWrap align=left width="100%"  colSpan=2>
                  <TABLE cellSpacing=1 cellPadding=5 border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=top align=middle><TEXTAREA name=body rows=20 wrap=VIRTUAL cols=70></textarea></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD noWrap align=left width="100%" 
                  colSpan=2><FONT color=#7c7c85><INPUT type=checkbox value=Y 
                  name=email_reply>Email replies to this thread, to my email address 
                  </FONT></TD></TR>
              <TR>
                <TD align=right width="100%"  colSpan=2> <INPUT type=submit value="Post" name=post> <BR><IMG 
                  height=3 src="" width=3 
            border=0></TD></TR></TBODY></TABLE></FORM>




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

