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
if ($server=="3")
{
$name="Lunatik Forum";
}


?>
<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<base href="http://www.projectxonline.net/rpgwo/">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO-PG: <? print($name); ?> </TITLE>
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
          <p align="center"><font style="font-weight: bold">Forum</font></p>
        </td>
      </tr>
      <tr>
        <td width="520" height="100%" valign="top" style="padding: 4; text-indent: 10">

	
<?
if($name=="Forum")
{
	print("Please Select a Forum!<BR>");
	print("<a href=\"phorum/index.php?s=$s&server=1\">Liberty Forum</a><BR>");
	print("<a href=\"phorum/index.php?s=$s&server=2\">Phobos Forum</a><BR>");

}
else
{
print("<a href=\"phorum/post.php?s=$s&server=$server\">New Topic</a><BR>");

}

//Loop messages here in php

include("/home2/vbgamer4/www/rpgwo/config.php");
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

//show the messages

	/*
	** recursive function that spits out all 
	** descendent messages
	*/
	function showMessages($parentID,$username,$s,$server)
	{
		//global $dbLink;

		$dateToUse = Date("U");

		print("<UL>\n");

		$Query = "SELECT ID, Title, Created, Poster, Category ";
		$Query .= "FROM bbsMessage ";
		$Query .= "WHERE Parent=$parentID ";
		$Query .= "ORDER BY Created ";

		if(!($dbResult = mysql_query($Query)))
		{
			//can't execute query
			print("Couldn't query bbsMessage table!<BR>\n");
			print("MySQL Reports: " . mysql_error() . "<BR>\n");
			exit();
		}
		

		while($row = mysql_fetch_object($dbResult))
		{
			 if($row->Category==$server)
			{
			//show message title as a link to view the body
			print("<LI>($row->Created) <A HREF=\"");
			print("phorum/index.php?messageID=$row->ID&s=$s&server=$server\">");
			print("$row->Title</A><BR>\n");

			//show children of this message	
			showMessages($row->ID,$username,$password,$server);
			}
		}
		
		

		print("</UL>\n");
	}


	/*
	** Show Message or show list of messages
	*/
	if(@$messageID > 0)
	{
		$Query = "SELECT ID, Title, Poster, Created, Parent, Body ";
		$Query .= "FROM bbsMessage ";
		$Query .= "WHERE ID=$messageID ";

		if(!($dbResult = mysql_query($Query, $dblink)))
		{
			//can't execute query
			print("Couldn't query bbsMessage table!<BR>\n");
			print("MySQL Reports: " . mysql_error() . "<BR>\n");
			exit();
		}

		if($row = mysql_fetch_object($dbResult))
		{
	
		// Text appearence
		$row->Body = str_replace("[b]","<b>",$row->Body); //Start bold tag
		$row->Body = str_replace("[/b]","</b>",$row->Body); // End bold tag
		$row->Body = str_replace("[u]","<u>",$row->Body);
		$row->Body = str_replace("[/u]","</u>",$row->Body);
		$row->Body = str_replace("[i]","<i>",$row->Body);
		$row->Body = str_replace("[/i]","</i>",$row->Body);
		$row->Body = str_replace("[s]","<s>",$row->Body);
		$row->Body = str_replace("[/s]","</s>",$row->Body);
		// Smilies
		$row->Body = str_replace(":)","<img src=images/happy.gif>",$row->Body);
		$row->Body = str_replace(":(","<img src=images/mad.gif>",$row->Body);
		$row->Body = str_replace(";)","<img src=images/wink.gif>",$row->Body);
		$row->Body = str_replace(";(","<img src=images/sad.gif>",$row->Body);
			


			print("<TABLE BORDER=\"1\" CELLSPACING=\"0\" ");
			print("CELLPADDING=\"5\" WIDTH=\"800\">\n");
			
			print("<TR>");
			print("<TD WIDTH=\"300\"><B>Title</B></TD>");
			print("<TD WIDTH=\"600\">$row->Title</TD>");
			print("</TR>\n");
			
			print("<TR>");
			print("<TD WIDTH=\"300\"><B>Poster</B></TD>");
			print("<TD WIDTH=\"600\">$row->Poster</TD>");
			print("</TR>\n");

			print("<TR>");
			print("<TD WIDTH=\"300\"><B>Posted</B></TD>");
			print("<TD WIDTH=\"600\">$row->Created</TD>");
			print("</TR>\n");

			print("<TR>");
			print("<TD COLSPAN=\"2\" WIDTH=\"800\">");
			print(nl2br($row->Body));
			print("</TD>");
			print("</TR>\n");
			
			print("</TABLE>\n");

			print("<A HREF=\"phorum/index.php?s=$s&server=$server\">List of Messages</A><BR>\n");
			print("<A HREF=\"phorum/post.php?inputParent=$messageID&s=$s&server=$server&subject=$row->Title\">Add Reply</A>");
			//now if the user owns the post allow them to edit it!
			$username=getusername($s);
			if($username==$row->Poster)
			{
					print("<A HREF=\"phorum/editpost.php?ID=$messageID&s=$s&&server=$server&subject=$row->Title\">  Edit Post</A>");
					print("<A HREF=\"phorum/delpost.php?ID=$messageID&s=$s&server=$server\">  Delete Post</A><BR>\n");
			}
	




		}
		

	}
	else
	{
		//print("<H2>List of Messages</H2>\n");

		// get entire list
		showMessages(0,$username,$s,$server);


	}


?>                    






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



