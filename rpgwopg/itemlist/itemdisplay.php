<? Include('header.php'); ?>
<?php


function GetInt($string)
{
	//print  ord(@$string[0]);
       //print  ord(@$string[1]);
       @$val1 =ord(@$string[1]) * 256 + ord(@$string[0]);
	return(@$val1);


}

function GetInt2($handle)
{
	$string[0] = fgetc($handle);
	$string[1] = fgetc($handle);
	//print  ord(@$string[0]);
       //print  ord(@$string[1]);
       @$val1 =ord(@$string[1]) * 256 + ord(@$string[0]);
	return(@$val1);


}


function GetBool($string)
{
	if(ord($string[1])==256)
	return("True");
	else
	return("False");
}
function GetBool2($handle)
{
	$string[0] = fgetc($handle);
	$string[1] = fgetc($handle);
	if(ord($string[1])==255)
	return("True");
	else
	return("False");
}
function GetSingle($handle)
{

$test="Still need to be coded/n";
return($test);
}


function GetSingle2($handle)
{
	  $string[0] = ord(fgetc($handle));
	  $string[1] = ord(fgetc($handle));
        $string[2] = ord(fgetc($handle));
        $string[3] = ord(fgetc($handle));

 	$sign=0;
	$b="";
	$m="";

	for($i=0; $i < 4; $i++)
	{
		echo("agaga" . decbin($string[i]));
	}

	//$result=decbin($string[0]) . decbin($string[1]) . decbin($string[2]) . decbin($string[3]);
$result=sprintf("%08d",decbin($string[0])) . sprintf("%08d",decbin($string[1])) . sprintf("%08d",decbin($string[2])) . sprintf("%08d",decbin($string[3]));



//get the sign
$sign=$result[0];
	for($i=1; $i < 32; $i++)
	{
		if($i > 0 && $i <9)
		{
			//get biased exponent
			$b=$b . $result[i];
		}
            else
		{
 			//get mantissa
			$m=$m . $result[i];
		}



	}
//Get the exponent
$exp=$b -127;



      $result="Still needs to be coded";
	$test="Still needs to be coded";

	return($test);
}

$page=1;

if (!empty($_REQUEST['page']))
$page = (int) $_REQUEST['page'];

if (@$page=="")
	$page=1;

$server = (int) $_REQUEST['server'];
if (isset($_REQUEST['Item']))
$Item = (int) $_REQUEST['Item'];
else
$Item = 0;

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



$Item=$Item-1;

$handle = fopen ($path . "/itemdef.dat", "r");
//seek to the item
fseek($handle, (440 * $Item));

print "</table>";

    $buffer = GetInt2($handle);

     //print $buffer;
    $buffer = fgets($handle, 31);
    print $buffer;
   //Print out Animation
   $buffer = GetInt2($handle);
print "<br>Animation0=" . $buffer;
 $PicSize=0;
 $buffer=$buffer+1;
 echo "<img src=\"itemlist/findItempic.php?server=$server&PicNum=".$buffer."&PicSize=".$PicSize."\">";


    for($i=1;$i<10; $i++)
   {
    $buffer=GetInt2($handle);
    print "<br>";
    print "Animation$i=" . $buffer;
    if($buffer != 0)
   {
     $buffer=$buffer+1;
    echo "<img src=\"itemlist/findItempic.php?server=$server&PicNum=".$buffer."&PicSize=".$PicSize."\">";
   }
   }
    //Get class
    print "<br>Class:" . GetInt2($handle);
    //Get Value
    print "<br>Value:" . GetInt2($handle);
   //unknown values
  $buffer = GetInt2($handle);
  $buffer = GetInt2($handle);
    //Get burden
    print "<br>Burden:" . GetInt2($handle);
    //Get NotMovable
    print "<br>NotMovable:" . GetBool2($handle);
   //unknown values
    $buffer = GetInt2($handle);
    $buffer = GetInt2($handle);

    print "<br>PROJECTILEANIMATION:" . GetInt2($handle);
    //Get DegradeItem
    print "<br>DegradeItem:" . GetInt2($handle);
    //Get DegradeDelta
    print "<br>DegradeDelta:" . GetInt2($handle);
    //Get GrowthItem
    print "<br>GrowthItem:" . GetInt2($handle);
    //Get GrowthDelta
    print "<br>GrowthDelta:" . GetInt2($handle);
    //Get GrowthWater
    print "<br>GrowthWater:" . GetInt2($handle);

    //UNKNOWN
    $buffer = GetInt2($handle);
    //Get Weapon Max Range
    print "<br>Weapon Max Range:" . GetInt2($handle);
    //Get Missile Weapon
    print "<br>Missile Weapon:" . GetBool2($handle);
    //Get Combat Skill
    print "<br>Combat Skill:" . GetInt2($handle);
    //Get Damage Low
    print "<br>Damage Low:". GetInt2($handle);
    //Get Damage High
    print "<br>Damage High:" . GetInt2($handle);
    //Get Attack Speed
    print "<br>Attack Speed:" . GetSingle($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    //Get ArmorLevel
    print "<br>ArmorLevel:" . GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    //Get Food
    print "<br>Food:" . GetInt2($handle);
    //Get Water
    print "<br>Water:" . GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    //Get Food Life
    print "<br>Food Life:" . GetInt2($handle);
    //Get Food Stamina
    print "<br>Food Stamina:" . GetInt2($handle);
    //Get Food Mana
    print "<br>Food Mana:" . GetInt2($handle);
    //Get Posion Cure
    print "<br>Posion Cure:" . GetInt2($handle);
    //Get Posion Damage
    print "<br>Posion Damage:" . GetInt2($handle);
    //Get BlockMovement
    print "<br>BlockMovement:" . GetBool2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    //Get Light
    print "<br>Light:" . GetInt2($handle);
    //Get MagicArmorLevel
    print "<br>MagicArmorLevel:" . GetInt2($handle);
    //Get HoldDamage
    print "<br>HoldDamage:" . GetInt2($handle);
   //Get StandDamage
    print "<br>StandDamage:" . GetInt2($handle);
    //Get OpenLineofSight
    print "<br>OpenLineofSight:" . GetBool2($handle);
    //Get Lockable
    print "<br>Lockable:" . GetBool2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    print "<br>Magic Power:" . GetSingle($handle);
    print "<br>Magic Break Chance:" . GetSingle($handle);
    print "<br>MagicBreakItemID:" . GetInt2($handle);
    print "<br>MagicBreakDamage:" . GetInt2($handle);
    print "<br>MagicWeaponDamage:" . GetInt2($handle);
    print "<br>Stackable:" . GetBool2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    print "<br>NODROP:" . GetBool2($handle);
    print "<br>TwoHandWeapon:" . GetBool2($handle);
    print "<br>Readable:" . GetBool2($handle);
    print "<br>Starter Skill:" . GetInt2($handle);
    print "<br>IGNORESHIELDS:" . GetBool2($handle);
    print "<br>NoDeathDrop:" . GetBool2($handle);
    print "<br>Group:" . GetInt2($handle);
    print "<br>MAGICSTABILITY :" . GetInt2($handle);
    print "<br>Forest:" . GetBool2($handle);
    print "<br>TOTALUSES:" . GetInt2($handle);
    print "<br>Rarity:" . GetInt2($handle);
    print "<br>OneAllowed:" . GetBool2($handle);
    print "<br>NoEconomyValueDrop:" . GetBool2($handle);
    print "<br>DESTROYABLE:" . GetBool2($handle);
    print "<br>BreakID:" . GetInt2($handle);
    print "<br>BreakDurability:" . GetInt2($handle);
    print "<br>STRENGTHBONUS:" . GetInt2($handle);
    print "<br>DEXTERITYBONUS:" . GetInt2($handle);
    print "<br>QUICKNESSBONUS:" . GetInt2($handle);
    print "<br>INTELLIGENCEBONUS:" . GetInt2($handle);
    print "<br>WISDOMBONUS:" . GetInt2($handle);
    print "<br>BonusCount:" . GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    print "<br>SKILLIDBONUS:" . GetInt2($handle);
    print "<br>SkillBonus:" . GetInt2($handle);
    print "<br>TRIGGERID:" . GetInt2($handle);
    print "<br>WeaponDurability:" . GetInt2($handle);
    print "<br>ArmorDurability:" . GetInt2($handle);
    print "<br>VitaePenalty:" . GetSingle($handle);
    print "<br>SkillReq:" . GetInt2($handle);
    print "<br>Ammo:" . GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    print "<br>Blood:" . GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    print "<br>StepOnID:" . GetInt2($handle);
    print "<br>PKDAMAGE:" . GetBool2($handle);
    //UNKNOWN
   $buffer = fgetc($handle);
   //Get ImageType
   $buffer = fgetc($handle);
   print "<br>ImageType:" . ord($buffer);
    //UNKNOWN
    $buffer = GetInt2($handle);
    print "<br>INVISIBLE:" . GetBool2($handle);
    print "<br>TraderMax:" . GetInt2($handle);
    print "<br>AlwaysStock:" . GetBool2($handle);
    print "<br>WeaponAL:" . GetInt2($handle);
    print "<br>SHIELDBREAK:" . GetBool2($handle);
    print "<br>STAMINADAMAGE:" . GetBool2($handle);
    print "<br>NOTPICKUPABLE:" . GetBool2($handle);
    print "<br>CRITICALBONUS:" . GetInt2($handle);
    print "<br>INNDOOR:" . GetBool2($handle);
    print "<br>INNKey:" . GetBool2($handle);
    print "<br>Postable:" . GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    $buffer = GetInt2($handle);
    $buffer = GetInt2($handle);
    $buffer = GetInt2($handle);
    print "<br>Fire AL" . GetInt2($handle);
    print "<br>Cold AL:" . GetInt2($handle);
    print "<br>ElectricAL:" . GetInt2($handle);
    print "<br>Data1:" . GetInt2($handle);
    print "<br>Data2:" . GetInt2($handle);
    print "<br>Data3:" . GetInt2($handle);
    print "<br>Data4:" . GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    $buffer = GetInt2($handle);
    $buffer = GetInt2($handle);
    $buffer = GetInt2($handle);
    print "<br>Ancient:" . GetBool2($handle);
    print "<br>NOTCONTAINERABLE:" . GetBool2($handle);
    print "<br>SPAWNMONSTER:" . GetInt2($handle);
    print "<br>SPAWNMONSTERTIMEOUT:" . GetInt2($handle);
    print "<br>SPAWNMONSTERCHANCE:" . GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
    $buffer = GetInt2($handle);
    print "<br>GrowthDeadItem:" . GetInt2($handle);
    print "<br>Warmth:" . GetInt2($handle);
    //UNKNOWN
    $buffer = GetInt2($handle);
   //Get sub class type
    $buffer = fgets($handle, 11);
    print "<br>Sub Class Type:" . $buffer;
    print "<br>WarmthRadius:" . GetInt2($handle);
    print "<br>ATTACKANIMATION:" . GetInt2($handle);
    print "<br>WearImage:" . GetInt2($handle);
    print "<br>APARTMENTMARKER:" . GetBool2($handle);
    print "<br>APARTMENTRENTER:" . GetBool2($handle);
    print "<br>RESTGAIN:" . GetInt2($handle);
    print "<br>DynamicCycle:" . GetInt2($handle);
    print "<br>GROWTHSPROUTITEM:" . GetInt2($handle);
    print "<br>REFLECT:" . GetBool2($handle);
    print "<br>FASTPROJECTILE:" . GetBool2($handle);
    //UNKNOWN
   $buffer = fgetc($handle);
    print "<br>EXPLODESHELLE:" . GetBool2($handle);
    //$buffer = fgets($handle, 102);
  // for ($k=1; $k < 102; $k++)
   // {
  // $buffer = fgetc($handle);
   //}


fclose ($handle);


?>
</TABLE>