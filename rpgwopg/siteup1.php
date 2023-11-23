<?
include('header.php');
?>

<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO [Unoffical] Player's Guide - Rpgwo Server Status</TITLE>
   </HEAD>
  <BODY style="top-margin: 0; left-margin: 0; backgroundcolor: D3E3F8; textcolor: 000000">
    <table align="center" style="background-color: #A8C8F0; position: relative; top: 2; width: 700; left: 2; border: 1 solid #000080" cellpadding="0" cellspacing="0">
      <TR>
        <td rowspan="2" width="150" height="100%" valign="top" style="border-right: 1 solid #000080">

<!-- BEGIN MENU CODE -->
            <? include('menu.php');?>


<!-- END MENU CODE -->

        </td>

      <td width="550" height="15"  style="background-color: #0080FF">
          <p align="center"><font style="font-weight: bold">Server Status!</font></p>
        </td>
      </tr>
      <tr>
        <td width="550" height="100%" valign="top" style="padding: 4; text-indent: 10">
<?
print("<b>Game Servers:</b><BR>");
@$fp = fsockopen ("69.44.57.200",6015, $errno, $errstr, 1);
if (!$fp) {
//server doesn't exist
print("Liberty Server is down!<BR>");
}
else
{
//server does exst
print("Liberty Server is up!<BR>");

}
@$fp2 = fsockopen ("69.44.57.200",6016, $errno, $errstr, 1);
if (!$fp2) {
//server doesn't exist
print("Phobos Server is down!<BR>");
}
else
{
//server does exst
print("Phobos Server is up!<BR>");

}

@$fp3 = fsockopen ("64.252.15.108",6015, $errno, $errstr, 1);
if (!$fp3) {
//server doesn't exist
print("Lunatik Server is down!<BR>");
}
else
{
//server does exst
print("Lunatik Server is up!<BR>");

}
@$fp4 = fsockopen ("69.44.57.200",6017, $errno, $errstr, 1);
if (!$fp4) {
//server doesn't exist
print("UTWorld Server is down!<BR>");
}
else
{
//server does exst
print("UTWorld Server is up!<BR>");

}
@$fp5 = fsockopen ("69.44.57.200",6017, $errno, $errstr, 1);
if (!$fp5) {
//server doesn't exist
print("Carnage Server is down!<BR>");
}
else
{
//server does exst
print("Carnage Server is up!<BR>");

}

//print("<b>Update Servers:</b><BR>");

//$fp3 = fsockopen ("http://members.ccinet.com/~kudlo/update",80, $errno, $errstr, 30);
//if (!$fp3) {
//server doesn't exist
//print("Update Server is down!<BR>");
//}
//else
//{
//server does exst
//print("Update Server is up!<BR>");

//}

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











