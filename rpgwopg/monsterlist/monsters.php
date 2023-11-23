<?php
function DoEval($string) {
  if($string == -1) return "???";
  else return $string;
}
?>
<?php require("header.php"); ?>
<h2>Monster Listing</h2>
This page contains a listing of most of the monsters found in RPG World Online.
<table border=1>
<?php
/* Connecting, selecting database */
$link = mysqli_connect("localhost", "nac2959", "marsh")
  or die("Could not connect");
print "Connected successfully";
mysqli_select_db("DB_nac2959") or die("Could not select database");

/* Performing SQL query */
$query = "SELECT * FROM monsters ORDER BY Name";
$result = site_query($query) or die("Query failed");

/* Printing results in HTML */
while ($line = mysqli_fetch_array($result, mysqli_ASSOC)) {
  echo "<tr>";
  echo "<td rowspan=9 valign=top><img src='monsters/".$line['PicURL'].".gif'>";
  echo "</td><td colspan=2><b>Name:</b></td><td colspan=2>".$line['Name']."</td></tr>";
  echo "<tr><td><b>Level</b></td><td>".$line['Level']."</td>";
  echo "<td><b>Life:</b></td><td>".DoEval($line['Life'])."</td></tr>";
  echo "<tr><td><b>Stamina:</b></td><td>".DoEval($line['Stamina'])."</td>";
  echo "<td><b>Mana:</b></td><td>".DoEval($line['Mana'])."</td></tr>";
  echo "<tr><td>Melee Attack:</td><td>".DoEval($line['MeleeAttack'])."</td>";
  echo "<td>Melee Defense:</td><td>".DoEval($line['MeleeDefense'])."</td></tr>";
  echo "<tr><td>Missle Attack:</b></td><td>".DoEval($line['MissleAttack'])."</td>";
  echo "<td>Melee Missle:</td><td>".DoEval($line['MissleDefense'])."</td></tr>";
  echo "<tr><td>Magic Attack:</td><td>".DoEval($line['MagicAttack'])."</td>";
  echo "<td>Magic Defense:</td><td>".DoEval($line['MagicDefense'])."</td></tr>";
  echo "<tr><td colspan=4><b>Items Equipped:</b> ".$line['ItemsEquiped']."</td></tr>";
  echo "<tr><td colspan=4><b>Items Droppable:</b> ".$line['ItemsDroppable']."</td></tr>";
  echo "<tr><td colspan=4><b>Comments:</b> ".$line['Comments']."</td></tr>";
  echo "<tr><td colspan=5><hr></td></tr>";
}

/* Free resultset */
mysqli_free_result($result);

/* Closing connection */
mysqli_close($link);
?>
</table>
<?php require("footer.php"); ?>
