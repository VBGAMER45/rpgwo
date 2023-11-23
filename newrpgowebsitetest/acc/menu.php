

    <td class="menuTop" width="119">
		 <a class="menuTop" href="index.php?=S=<? echo($S); ?>">Home</a><br>


   &nbsp;&nbsp;<a class="menuSubsection" href="news.php?S=<? echo($S); ?>">News</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="features.php?S=<? echo($S); ?>">Features</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="screenshots.php?S=<? echo($S); ?>">Screenshots</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="downloads.php?S=<? echo($S); ?>">Downloads</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="requirements.php?S=<? echo($S); ?>">Requirements</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="design notes.php?S=<? echo($S); ?>">Design Notes</a><br>
 Getting Started<br>
   &nbsp;&nbsp;<a class="menuSubsection" href="rules.php?S=<? echo($S); ?>">">Rules</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="basic controls.php?S=<? echo($S); ?>">Basic Controls</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="newbie guide.php?S=<? echo($S); ?>">Newbie Guide</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="game guide.php?S=<? echo($S); ?>">Game Guide</a><br>
 Community<br>
	<?
		if($S=="")
		{
			print("&nbsp;&nbsp;<a class=\"menuSubsection\" href=\"login.php?S=<? echo($S); ?>">Login</a><br>");
		}
		else
		{
			print("&nbsp;&nbsp;<a class=\"menuSubsection\" href=\"youraccount.php?S=<? echo($S); ?>">Your Account</a><br>");
			print("&nbsp;&nbsp;<a class=\"menuSubsection\" href=\"logout.php?S=<? echo($S); ?>">Logout</a><br>");

		}
		
   //&nbsp;&nbsp;<a class="menuSubsection" href="login.php?S=<? echo($S); ?>">Login</a><br>
	?>
   &nbsp;&nbsp;<a class="menuSubsection" href="forums/">Forum</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="chat.php?S=<? echo($S); ?>">Chat</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="guilds.php?S=<? echo($S); ?>">Guilds</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="houses.php?S=<? echo($S); ?>">Houses</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="links.php?S=<? echo($S); ?>">Links</a><br>
 Support<br>
   &nbsp;&nbsp;<a class="menuSubsection" href="tech support.php?S=<? echo($S); ?>">Tech Support</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="acct support.php?S=<? echo($S); ?>">Account Support</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="downtimes.php?S=<? echo($S); ?>">Downtimes</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="faq.php?S=<? echo($S); ?>">FAQ</a><br>
   &nbsp;&nbsp;<a class="menuSubsection" href="contact us.php?S=<? echo($S); ?>">Contact Us</a><br>
	</td>