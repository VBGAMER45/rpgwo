<?
	$root_path = "../";
include($root_path . "header.php");
?>

<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<base href="http://www.projectxonline.net/rpgwo/">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO [Unoffical] Player's Guide - Citizen's Bank</TITLE>
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
          <p align="center"><font style="font-weight: bold">Citizen's Bank </font></p>
        </td>
      </tr>
      <tr>
        <td width="550" height="100%" valign="top" style="padding: 4; text-indent: 10">
		
		<p><a href="bank/viewaccount.php?<? print("s=$s&server=$server"); ?>">View Account Balance</a></p>

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


