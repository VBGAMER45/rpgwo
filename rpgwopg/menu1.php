<?
//include("logincheck.php");



?>
<script language="JavaScript">

document.write("<a style='margin-left: 8' href='./index.<? print("php?server=$server&s=$s"); ?>'>RPGWO-PG</a><br>");
</script>


<?


//If(verifylogin($username,$password))
//{
if(verifysession($s))
{
print("<a style='margin-left: 16' href='./account.php?server=$server&s=$s'>Your Account</a><br>");
print("<a style='margin-left: 16' href='./index.php?server=$server&s=0'>Logout</a><br>");

}

else
{

print("<a style='margin-left: 16' href='./login.php?server=$server&s=$s'>Login</a><br>");

}




?>
<script language="JavaScript">

 document.write("<a style='margin-left: 16' href='./News.<? print("php?server=$server&s=$s"); ?>'>News</a><br>");
  document.write("<a style='margin-left: 16' href='./The_Basics.<? print("php?server=$server&s=$s"); ?>'>The Basics</a><br>");
  document.write("<a style='margin-left: 16' href='./artwork/'>Artwork for Rpgwo</a><br>");

</script>


 <script language="JavaScript">
document.write("<a style='margin-left: 16' href='./skills/index.<? print("php?server=$server&s=$s"); ?>'>Skills</a><br>");

if (window.location.href.indexOf('/skills/') > -1) {
    document.write("<a style='margin-left: 24' href='./skills/Alchemy.<? print("php?server=$server&s=$s"); ?>'>Alchemy</a><br>");
    document.write("<a style='margin-left: 24' href='./skills/runes.<? print("php?server=$server&s=$s"); ?>'>Rune Meanings</a><br>");
    document.write("<a style='margin-left: 24' href='./skills/Black_Magic.<? print("php?server=$server&s=$s"); ?>'>Black Magic</a><br>");
    document.write("<a style='margin-left: 24' href='./skills/White_Magic.<? print("php?server=$server&s=$s"); ?>'>White Magic</a><br>");
    document.write("<a style='margin-left: 24' href='./skills/Red_Magic.<? print("php?server=$server&s=$s"); ?>'>Red Magic</a><br>");
    document.write("<a style='margin-left: 24' href='./skills/Blue_Magic.<? print("php?server=$server&s=$s"); ?>'>Blue Magic</a><br>");
    }
  document.write("<a style='margin-left: 16' href='./profiles/index.<? print("php?server=$server&s=$s"); ?>'>NPCs</a><br>");

</script>
<?
print("<a style='margin-left: 16' href='./liberty/index.php?server=1&s=$s'>Liberty</a><br>");

if($server==1)
{

   print("<a style='margin-left: 24' href='./servernews.php?server=$server&s=$s'>World News</a><br>");
   print("<a style='margin-left: 24' href='./poi/index.php?server=$server&s=$s'>Points of Interest</a><br>");
   print("<a style='margin-left: 24' href='./phorum/index.php?server=$server&s=$s'> Liberty Forum</a><br>");
   print("<a style='margin-left: 24' href='./guilds.php?server=$server&s=$s'>Guilds</a><br>");
   print("<a style='margin-left: 24' href='./shops.php?server=$server&s=$s'>Player's Shops</a><br>");
   print("<a style='margin-left: 24' href='./wanted.php?server=$server&s=$s'>Wanted List</a><br>");

}
print("<a style='margin-left: 16' href='./phobos/index.php?server=2&s=$s'>Phobos</a><br>");

if($server==2)
{


   print("<a style='margin-left: 24' href='./servernews.php?server=$server&s=$s'>World News</a><br>");
   print("<a style='margin-left: 24' href='./poi/index2.php?server=$server&s=$s'>Points of Interest</a><br>");
   print("<a style='margin-left: 24' href='./phorum/index.php?server=$server&s=$s'> Phobos Forum</a><br>");
   print("<a style='margin-left: 24' href='./guilds.php?server=$server&s=$s'>Guilds</a><br>");
   print("<a style='margin-left: 24' href='./shops.php?server=$server&s=$s'>Player's Shops</a><br>");
   print("<a style='margin-left: 24' href='./wanted.php?server=$server&s=$s'>Wanted List</a><br>");

}
print("<a style='margin-left: 16' href='./Lunatik/index.php?server=3&s=$s'>Lunatik</a><br>");

if($server==3)
{

   print("<a style='margin-left: 24' href='./servernews.php?server=$server&s=$s'>World News</a><br>");
   print("<a style='margin-left: 24' href='./poi/index2.php?server=$server&s=$s'>Points of Interest</a><br>");
   print("<a style='margin-left: 24' href='./phorum/index.php?server=$server&s=$s'> Lunatik Forum</a><br>");
   print("<a style='margin-left: 24' href='./guilds.php?server=$server&s=$s'>Guilds</a><br>");
   print("<a style='margin-left: 24' href='./shops.php?server=$server&s=$s'>Player's Shops</a><br>");
   print("<a style='margin-left: 24' href='./wanted.php?server=$server&s=$s'>Wanted List</a><br>");

}
?>

 <script language="JavaScript">

 document.write("<a style='margin-left: 16' href='./topten/index.<? print("php?server=$server&s=$s"); ?>'>Top Ten</a><br>");
  if (window.location.href.indexOf('/topten/') > -1) {
    document.write("<a style='margin-left: 24' href='./topten/Farming.<? print("php?server=$server&s=$s "); ?>'>Farming</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Level.<? print("php?server=$server&s=$s"); ?>'>Level</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Cooking.<? print("php?server=$server&s=$s"); ?>'>Cooking</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Carpentry.<? print("php?server=$server&s=$s"); ?>'>Carpentry</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Blacksmith.<? print("php?server=$server&s=$s"); ?>'>Blacksmith</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Alchemy.<? print("php?server=$server&s=$s"); ?>'>Alchemy</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Fishing.<? print("php?server=$server&s=$s"); ?>'>Fishing</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Read_Ancient.<? print("php?server=$server&s=$s"); ?>'>Read Ancient</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Strength.<? print("php?server=$server&s=$s"); ?>'>Strength</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Dexterity.<? print("php?server=$server&s=$s"); ?>'>Dexterity</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Quickness.<? print("php?server=$server&s=$s"); ?>'>Quickness</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Intelligence.<? print("php?server=$server&s=$s"); ?>'>Intelligence</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Wisdom.<? print("php?server=$server&s=$s"); ?>'>Wisdom</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Black_Magic.<? print("php?server=$server&s=$s"); ?>'>Black Magic</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Sword.<? print("php?server=$server&s=$s"); ?>'>Sword</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Mining.<? print("php?server=$server&s=$s"); ?>'>Mining</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Axe.<? print("php?server=$server&s=$s"); ?>'>Axe</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Run.<? print("php?server=$server&s=$s"); ?>'>Run</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Bow.<? print("php?server=$server&s=$s"); ?>'>Bow</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Blue Magic.<? print("php?server=$server&s=$s"); ?>'>Blue Magic</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Scan.<? print("php?server=$server&s=$s"); ?>'>Scan</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Mana.<? print("php?server=$server&s=$s"); ?>'>Mana</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Mace.<? print("php?server=$server&s=$s"); ?>'>Mace</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Dagger.<? print("php?server=$server&s=$s"); ?>'>Dagger</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Staff.<? print("php?server=$server&s=$s"); ?>'>Staff</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Crossbow.<? print("php?server=$server&s=$s"); ?>'>Crossbow</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Flail.<? print("php?server=$server&s=$s"); ?>'>Flail</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Spear.<? print("php?server=$server&s=$s"); ?>'>Spear</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Swim.<? print("php?server=$server&s=$s"); ?>'>Swim</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Magic Defense.<? print("php?server=$server&s=$s"); ?>'>Magic Defense</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Mana Conversion.<? print("php?server=$server&s=$s"); ?>'>Mana Conversion</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Melee Defense.<? print("php?server=$server&s=$s"); ?>'>Melee Defense</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Missle Defense.<? print("php?server=$server&s=$s"); ?>'>Missle Defense</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Red Magic.<? print("php?server=$server&s=$s"); ?>'>Red Magic</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Scythe.<? print("php?server=$server&s=$s"); ?>'>Scythe</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Throwing.<? print("php?server=$server&s=$s"); ?>'>Throwing</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/Unarmed Attack.<? print("php?server=$server&s=$s"); ?>'>Unarmed Attack</a><br>");
    document.write("<a style='margin-left: 24' href='./topten/White Magic.<? print("php?server=$server&s=$s"); ?>'>White Magic</a><br>");
 }



  document.write("<a style='margin-left: 16' href='./uses/index.<? print("php?server=$server&s=$s"); ?>'>Usage List</a><br>");
  	if (window.location.href.indexOf('/uses/') > -1) {
    document.write("<a style='margin-left: 24' href='./uses/Alchemy.<? print("php?server=$server&s=$s"); ?>'>Alchemy</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/BlackSmith.<? print("php?server=$server&s=$s"); ?>'>BlackSmith</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/Carpentry.<? print("php?server=$server&s=$s"); ?>'>Carpentry</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/Cooking.<? print("php?server=$server&s=$s"); ?>'>Cooking</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/Farming.<? print("php?server=$server&s=$s"); ?>'>Farming</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/Fishing.<? print("php?server=$server&s=$s"); ?>'>Fishing</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/Fletching.<? print("php?server=$server&s=$s"); ?>'>Fletching</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/LockSmith.<? print("php?server=$server&s=$s"); ?>'>LockSmith</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/Masonry.<? print("php?server=$server&s=$s"); ?>'>Masonry</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/Mining.<? print("php?server=$server&s=$s"); ?>'>Mining</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/Tailor.<? print("php?server=$server&s=$s"); ?>'>Tailor</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/Trap.<? print("php?server=$server&s=$s"); ?>'>Trap</a><br>");
    document.write("<a style='margin-left: 24' href='./uses/none.<? print("php?server=$server&s=$s"); ?>'>Other</a><br>");
    }


  document.write("<a style='margin-left: 16' href='./monsterlist/monsterlist.php?page=0'>Monster List</a><br>");
  document.write("<a style='margin-left: 16' href='./itemlist/index.<? print("php?server=$server&s=$s"); ?>'>Item List</a><br>");
  document.write("<a style='margin-left: 16' href='./screen.<? print("php?server=$server&s=$s"); ?>'>ScreenShots</a><br>");
  document.write("<a style='margin-left: 16' href='./Downloads.<? print("php?server=$server&s=$s"); ?>'>Downloads</a><br>");
  document.write("<a style='margin-left: 16' href='http://forum.cjb.net:81/cgi-bin/forum.cgi?forum=rpgwopg'>Forum</a><br>");

document.write("<a style='margin-left: 16' href='./FAQ.<? print("php?server=$server&s=$s"); ?>'>FAQ</a><br>");
  document.write("<a style='margin-left: 16' href='./reviews/index.<? print("php?server=$server&s=$s"); ?>'>Reviews</a><br>");
    document.write("<a style='margin-left: 16' href='./online.<? print("php?server=$server&s=$s"); ?>'>Whos Online Rpgwo</a><br>");
  document.write("<a style='margin-left: 16' href='./links.<? print("php?server=$server&s=$s"); ?>'>Links</a><br>");
  document.write("<a style='margin-left: 16' href='./Contact.<? print("php?server=$server&s=$s"); ?>'>Contact</a><br>");
</script>