<?php require("header.php"); ?>
<h2>Monster Listing</h2>
This page contains a listing of <i>all</i> of the monsters found in RPG World Online.
However, it can only determine the level, picture, and name of the monsters.<br>
(That's all that's stored in the data file for some unknown reason...)<br><br>
Note that sometimes pages 'overlap'. Sorry about this, it's due to NULL space in the monsterfile.
<center>
<?php
$page = (int) $_GET['page'];
if(!$page) $page = 0;
$pageplus = $page + 1;
$pageminus = $page - 1;
if($page != 0) echo "<a href='monsterlist.php?page=".$pageminus."'>< Previous 25 Monsters</a>";
if($page != 0 && $page < 18) echo " | ";
if($page < 18) echo "<a href='monsterlist.php?page=".$pageplus."'>Next 25 Monsters ></a>";
echo "</center>";
$offset = 135 + $page * 131 * 25;
$fp = fopen("monsterdef.dat","r");
//fseek($fp,$offset);
fseek($fp,135);
for($i = 1; $i <= $page * 25; $i = $i) {
  $val = fread($fp,2);
  if(strcmp($val,"\xFF\xFF") == 0) {
    //echo $i."|".$page."|";
    $i++;
  }
  fread($fp,129);
}
echo "<table>";
for($i = 0; $i < 25; $i = $i) {
  $Val = fread($fp,2);
  if(strcmp($Val,"\xFF\xFF") == 0) {
    fread($fp,2);
    $Name = rtrim(fread($fp,20));
    $PicValStr = fread($fp,2);
    $PicSize = ord(fread($fp,1));
    fread($fp,1);
    $Level = ord(fread($fp,1));
    echo "<tr><td>";
    $ThePicNum = ord($PicValStr[1]) * 256 + ord($PicValStr[0]);
    echo "<img src=\"findPlayerpic.php?PicNum=".$ThePicNum."&PicSize=".$PicSize."\"></td><td>";
    echo "<b>".$Name."</b></td><td>Level:</td><td>";
    echo $Level;
    echo "</td></tr>";
    fread($fp,102);
    $i++;
  }
  else fread($fp,129);
  if(feof($fp) == TRUE) $i = 25;
}
fclose($fp);
?>
<?php require("footer.php"); ?>
