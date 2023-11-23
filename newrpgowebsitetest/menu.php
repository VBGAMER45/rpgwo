

    <td class="menuTop" width="119">
		 <a class="menuTop" href="index.php?s=<? echo($s); ?>">Home</a><br>


   &nbsp;&nbsp;<a class="menuSubsection" href="news.php?s=<? echo($s); ?>">News</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="features.php?s=<? echo($s); ?>">Features</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="screenshots.php?s=<? echo($s); ?>">Screenshots</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="downloads.php?s=<? echo($s); ?>">Downloads</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="requirements.php?s=<? echo($s); ?>">Requirements</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="design notes.php?s=<? echo($s); ?>">Design Notes</a><br>
 Getting Started<br>
   &nbsp;&nbsp;<a class="menuSubsection" href="rules.php?s=<? echo($s); ?>">Rules</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="basic controls.php?s=<? echo($s); ?>">Basic Controls</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="newbie guide.php?s=<? echo($s); ?>">Newbie Guide</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="game guide.php?s=<? echo($s); ?>">Game Guide</a><br>
 Community<br>
	<?
		if($s=="")
		{
			print("&nbsp;&nbsp;<a class=\"menuSubsection\" href=\"login.php?s=$s\">Login</a><br>");
		}
		else
		{
			
			print("&nbsp;&nbsp;<a class=\"menuSubsection\" href=\"youraccount.php?s=$s\">Your Account</a><br>");
			require('menucheck.php');
			if(verifyadmin2($s) > 0)
			{
				print("&nbsp;&nbsp;<a class=\"menuSubsection\" href=\"admin.php?s=$s\">Admin Options</a><br>");

			}
			print("&nbsp;&nbsp;<a class=\"menuSubsection\" href=\"logout.php?s=$s\">Logout</a><br>");

		}
		
  	?>
   &nbsp;&nbsp;<a class="menuSubsection" href="forums/">Forum</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="chat.php?s=<? echo($s); ?>">Chat</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="guilds.php?s=<? echo($s); ?>">Guilds</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="houses.php?s=<? echo($s); ?>">Houses</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="links.php?s=<? echo($s); ?>">Links</a><br>
 Support<br>
   &nbsp;&nbsp;<a class="menuSubsection" href="tech support.php?s=<? echo($s); ?>">Tech Support</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="acct support.php?s=<? echo($s); ?>">Account Support</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="downtimes.php?s=<? echo($s); ?>">Downtimes</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="faq.php?s=<? echo($s); ?>">FAQ</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="contact us.php?s=<? echo($s); ?>">Contact Us</a><br>
	</td>