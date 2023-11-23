<?php
require 'mysql.php';
if (!isset($s))
$s = '';


?>
<a name="top"></a><a href="index.php?s=<? echo($s); ?>"><img src="img/top.jpg" width="598" height="226" border="0" alt=""></a><br>
<div style="position:absolute;top:80;left:600px;border-style : groove;padding : 3px;border-color : #6C2F17;border-width:20;">
	Join the World:
	<LI style="color: #6C2F17;"><a href="newaccount.php?s=<? echo($s); ?>" class="menuSubsection">Sign up</a></LI>
	<LI style="color: #6C2F17;"><a href="downloads.php?s=<? echo($s); ?>" class="menuSubsection">Download</a></LI>
	<LI style="color: #6C2F17;"><a href="newbie guide.php?s=<? echo($s); ?>" class="menuSubsection">Get the guide</a></LI>

</div>
<table cellspacing="0" cellpadding="0" border="0" align="left" width="204">
<tr>
    <td colspan="3"><img src="img/menuHeader.gif" width="204" height="50" border="0" alt=""></td>
</tr>
<tr>
    <td><img src="img/left.gif" width="51" height="400" border="0" alt=""></td>