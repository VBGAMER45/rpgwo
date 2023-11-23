<?
include 'header.php';

if (isset($_REQUEST['page']))
$page = (int) $_REQUEST['page'];
else
	$page=1;

$server = (int) $_REQUEST['server'];


if(@$server==0)
{
print "<center>";
print "<a href=\"itemlist/index.php?server=5\">SteelTide</a><br>";
print "<a href=\"itemlist/index.php?server=2\">Phobos</a><br>";
print "<a href=\"itemlist/index.php?server=3\">Lunatik</a><br>";
print "<a href=\"itemlist/index.php?server=4\">UT World</a><br>";
print "<a href=\"itemlist/index.php?server=1\">Liberty</a><br>";


print "</center>";
print "<table>";
exit();
}
if (@$server==1)
  $path="liberty";
if (@$server==2)
  $path="phobos";
if (@$server==3)
  $path="lunatik";
if (@$server==4)
  $path="utworld";
if (@$server==5)
  $path="steeltide";


$number=50;

function GetInt2($handle)
{
	$string[0] = fgetc($handle);
	$string[1] = fgetc($handle);
	//print  ord(@$string[0]);
       //print  ord(@$string[1]);
       @$val1 =ord(@$string[1]) * 256 + ord(@$string[0]);
	return(@$val1);


}

$num=$page-1;
if ($num >1)
print "<center>";
print "<br><b><a href=\"itemlist/index.php?page=$num&server=$server\">Previous 50</a>";
$num2=$page +1;
print "<br><b><a href=\"itemlist/index.php?page=$num2&server=$server\">Next 50</a>";
print "</center>";


$handle = fopen ($path  . "/itemdef.dat", "r");
$g=0;

if ($page!=1)
{
fseek($handle, (440 * ($page*50)));
$g=($page*50);
}

//while (!feof ($handle)) {

for ($i=0; $i <50; $i++)
{
$g++;

    $buffer = GetInt2($handle);

    $buffer = fgets($handle, 31);
   if (trim($buffer) != "")
   {
   print "<BR><a href=\"itemlist/itemdisplay.php?Item=$g&server=$server\">$buffer</a>";
   }

//for ($i=0; $i <204; $i++)
    //$buffer = GetInt2($handle);
  fseek($handle, 408, SEEK_CUR);

}

//}
fclose ($handle);
$num=$page-1;
if ($num >1)
print "<center>";
print "<br><b><a href=\"itemlist/index.php?page=$num&server=$server\">Previous 50</a>";
$num2=$page +1;
print "<br><b><a href=\"itemlist/index.php?page=$num2&server=$server\">Next 50</a>";
print "</center>";

?>
</table>