<?
include('header.php');

if (@$server=="")
{

$server=0;
$name="";
}
if ($server=="1")
{
	$name="Liberty";
}
if ($server=="2")
{
	$name="Phobos";
}
if ($server=="3")
{
	$name="Lunatik";
}

?>

<HTML>
   <HEAD>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
     <LINK REL="STYLESHEET" TYPE="TEXT/CSS" HREF="theme.css">
     <TITLE>RPGWO [Unoffical] Player's Guide - <? print($name); ?> World News</TITLE>
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
          <p align="center"><font style="font-weight: bold">World News for <? print($name); ?> </font></p>
        </td>
      </tr>
      <tr>
        <td width="550" height="100%" valign="top" style="padding: 4; text-indent: 10">
<?
	if (verifyadmin($s) == 1)
	{

	}


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

