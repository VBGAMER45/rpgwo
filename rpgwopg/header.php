<?php
require_once('config.php');
//check session
if(@$s=="")
{
$s=0;
}
$s=addslashes($s);
//Check server
if(@$server=="")
{
$server=0;
}
$server=addslashes($server);


$badstuff="http://";
//Hack Check
$check1 = substr($s, 0, 7);
$check2 = substr($server, 0, 7);

if(strcmp($check1,$badstuff) ==0)
{
  header("Location: http://www.projectxonline.net/rpgwo/youare.swf");
  die;
}
if(strcmp($check2,$badstuff) ==0)
{
  header("Location: http://www.projectxonline.net/rpgwo/youare.swf");
  die;
}


include("sessioncheck.php");
?>