<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=iso-8859-1">
	<META NAME="description" CONTENT="RPG World Online Website">
	<META NAME="keywords" CONTENT="RPG World Online, RPG, multiplayer, online, Mickey, download, free">
	<META NAME="Author" CONTENT="Someguy">

	<title>RPG World Online - Design Notes></title>
	<LINK href="img/style.css" rel=stylesheet>
</HEAD>

<body background="img/paperBG.jpg" leftmargin=0 topmargin=0>
	<?
		//##############PHP CODE####################
		include("toprightbar.php");
		include("menu.php");
	?>
    <td><img src="img/right.gif" width="34" height="400" border="0" alt=""></td>
</tr>
<tr>
    <td colspan="3"><img src="img/bottomNav.gif" width="204" height="31" border="0" alt=""></td>
</tr>
</table>

<img src="img/bgWarrior.gif" width="176" height="300" border="0" alt="" align="right">
<table cellspacing="0" cellpadding="0" border="0" align="middle">
<tr>
    <td>

		<img src="img/titles/design notes.gif" width="150" height="51" border="0" alt=""><br>
<h2>Dynamic Players</h2> <p>April 12, 2001
<LI>what you wear, shows up in the view for all to see
<LI>weapons and shields and tools too </p>

<h2>Land Ownership</h2> <p>April 12, 2001
<LI>all land (most of it anyways) can be claimed, bought, or sold
<LI>players will be limited to how much they can claim at a time, maybe XP, level, or time will limit it
<LI>land owners can build whatever they want on there land anyone using the land is "tresspassing" and may earn "outlaw points"
<LI>land owners can give permission for others to use the land "plot" areas cannot be claimed/bought/sold</p>

<h2>Death: What happens on the other side?</h2> <p>April 17, 2001
Several possibilities can happen:
<LI>you get warped to a resurrect spot
<LI>you lose some vitae, weakening your skills
<LI>can lose some items, they would be left on your body where you died, easily recoverable unless someone loots it
<LI>players will have only 10 lives to lose then that player is disabled or retired for ever
<LI>players get warped to a "spirit" zone and must work vitae off there?
<LI>players lose XP or a level? </p>

<h2>Government and Law</h2> <p>April 17, 2001
<LI>each sector can have a magistrate/mayor/governor
<LI>one sector is a 200x200 part of the map, filling the client world map view
<LI>land owners elect a ruler; the more land an individual owner has, the more weight the vote carries
<LI>The Ruler:
<ul>cannot buy/sell land for self in their sector
psican levy taxes: sales, property, toll, etc
can claim/buy land as public
can build on public land using tax revenue: water works, parks, roads, walls, towers, etc.
can "make" NPC guards and set them up or command them (not directly), this uses taxes
can define law for their sector and assign "outlaw" points to each unlawful act
can give or take away outlaw points (condem or pardon)
can set a bounty on a player, giving bounty hunters right to PK them, if a hunter has a letter of bounty then they get money and outlaw gets warped to jail?
can declare war/peace/ally with other sectors (an ally shares outlaw players but not laws?) </ul>
<LI>the ruler's term last one V-year or less if they resign or are impeached!
<LI>Voting:
<ul>when a sectors land is at least 50% claimed, any land owner may initiate a vote
a vote is also initiated when the current ruler's term is over
to be a candidate you must be the ruler or have one land owner nominate you, land owners may nominate themselves
after 1 V-month or V-week? a vote starts that lasts 1 V-week or when a majority is met for one candidate </ul>
<LI>outlaw points, rstrict activity in a sector, like no buying or selling or guards attack on site
<LI>outlaw points earned when a player breaks a law defined by a ruler of the sector the crime happens in
<LI>some crimes: player killing, arson, theft, tax evasion, etc.
<LI>citizenship: any person may have one, giving them discount on taxes
<LI>a sector with out a ruler is a state of chaos, no law, every player for themselves </p>

<h2>Item manipulation</h2> <p>April 17, 2001
<LI>all items inthe world can be made or destroyed by players (including magic ones)
<LI>items will have an interaction with each other that may imply using a skill
<LI>example: Use hammer on hot iron bar to get sword. This implies using the blacksmith skill
<LI>items do have a quality value that lessons according to use, they can however be repaired by the right craftsman </p>

<h2>Monsters and Animals: How should they fit into the world?</h2> <p>April 16, 2001
<LI>2 kinds of animals/monsters:
<ul>Natural: rabbits, sheep, deer, bear, lions, dragon, etc <br>
Un-Natural: undead, mutations, humanoids, shadow spawn, etc </ul>
<LI>Natural animals will be dispersed according to geographic location, deer in mountains, cows in pastures, etc.  <br>
<LI>Un-Natural animals will be dispersed according to "plot" and the further away from newbie island the harder they get.  <br>
<LI>All animals/monsters are in "stasis", they leave each other alone, ie. lions don't hunt the deer (too much CPU cycles wasted and nothing gained)  <br>
<LI>Respawning
<ul>both respawn after death at same spot or maybe within a radius<br>
spawn points/places may be 10x10 to 50x50 to larger area <br>
spawn points will have a level of difficulty or type and a frequency <br>
as more deaths happen to spawn point it becomes less frequent or loses strength <br>
as less deaths happen, spawn point becomes more frequent (to a limit) or regain strength <br>
eventually a spawn point will die and not respawn any more, this is needed in order to build "safe" towns (at least from monsters anyway) <br>
"dead" spawn points may rebirth if neighbor spawn points not dead, depends on player activity in spawn area <br>
"plot" areas never lose spawn strength <br>
an animal/monster becomming tamed, is the same as if it died to the spawn point <br>
events do not affect spawn points </ul></p>

<h2>Taming Animals: Who wants a pet Dragon?</h2> <p>April 16, 2001
<LI>natural and unnatural animals can all be tamed (maybe a few exceptions)
<LI>animals may only "like" one person
<LI>person uses a "herd" or "tame" skill to increase the "likeness" of the animal
<LI>player gives commands to animal: stay, follow, guard, feed/roam, sentry, train, etc
<LI>the higher the likeness the more likely an animal will obey
<LI>even if a command fails, you still may gain "likeness" with animal
<LI>as time goes and/or the less an animal is commanded, the likeness goes down?
<LI>maybe if needs are met then likeness stays same?
<LI>tamed animals do not respawn at death? they can level? producers like sheep might not respawn, but wolfs do?
<LI>tamed animals MUST eat and drink, else likeness and death may happen
<LI>owners of a tame animal are notified about who killed/stole them? homing sense?
<LI>tamed animals like cows, reproduce under right conditions
<LI>natural animals are easier to be tamed </p>

<h2>Magic</h2> <p>April 19, 2001
<LI>the magic system isn't gonna be too complicated
<LI>there will just be spells, no words or reagents, well maybe I will have wands
<LI>items as well will be able to hold spells for casting
<LI>players will have MANA or magic "fuel", each spell will have a MANA cost, MANA does regen slowly with time
<LI>spells aslo have a difficulty, the CAST SPELL skill is employed here, the higher CAST SPELL the better chance at casting successfully
<LI>spells will have a high and a low value for difficulty meaning, if you are less than the low, then you have 0% chance to cast, if you are between the 2 values then there is a 1-99% chance, if you are above the high, then 100% chance
<LI>offensive spells may be resisted by the target using MAGIC DEFENSE skill
<LI>so caster needs to cast spell successfully and then to land it on target be better than its defense
<LI>spells can be cast on items and players to improve or decrease their abilities
<LI>wards: an area affect spell that keeps certain events from occurring, like a PK ward keeps PK from happening, wards may be DISPELLED of course, wards have a time limit before decay
<LI>items can be setup to cast spells continuosly or at intervals
<LI>casters will be able to "join" to combine MANA and CAST SPELL skill in order to do harder or very, very, very hard spells, like PK ward the whole map!
<LI>another skill required for mages is RESEARCH SPELL, it allows casters to learn spells off scrolls, write scrolls, and discover new/lost spells
<LI>READ and WRITE ANCIENT might come into play as well  </p>

<h2>Alchemy and cooking?</h2> <p>April 19, 2001
<LI>mixing components to get something useful
<LI>components can be food stuffs, water, powders, liquids, plants, animal parts, etc.
<LI>useful results can be healing, stamina, or mana potions, foods of all kinds I supose
<LI>also gunpowder(maybe) and anything that a spell can do (almost)
<LI>smoke bomb, fireworks, bombs, acid, tanning liquid
<LI>use of a pestle to grind and an alembic to purify?, vials and such
<LI>spells might be used to help or improve or even to make, like cast a "infuse fire" spell on a bottle of tar to make fire-tar, thrown, it would expload?
<LI>foods would give STAMINA? or "fuel" that generates STAMINA, when someone runs out of "fuel" then STAMINA then LIFE, they die?  </p>

<h2>Mining, smelting, and blacksmith/tinker</h2> <p>April 19, 2001
<LI>raw materials will be available for mining, like iron, silver, gold, limestone, granite, etc
<LI>MINING skill will be used to pull the material/ore out of the ground and for digging mines/caves
<LI>miners use shovel, pick, lamps
<LI>SMELTING skill will be for purifying and mixing ores to make ingots and such, also used for casting objects like pots and "cheap" swords?
<LI>smelters use furnace and pot and molds?, the pot needs to exceed the ore capacity of heat or it might melt?
<LI>BLACKSMITH skill is used for forming ingots into usable items like weapons and armor,but of higher quality than casts?
<LI>blacksmith uses hammer, anvil, fire, water
<LI>TINKER skill is used for making smaller items like clocks and door locks
<LI>spells may be cast on hot ingots or ores to give magic qualities?
<LI>different ores mixed give different metals like carbon(coal dust?) and iron give steel which is stronger than plain iron  </p>

<h2>Training skills</h2> <p>April 19, 2001
<LI>How do players get new skills to use?
<LI>when players level they get skill points in which to spend in order to train a skill
<LI>maybe the cost of trainng a skill can be lessened if someone else "trains" or "teaches" them
<LI>a TEACH skill could be used to help a student learn the skill with less or no skill points?
<LI>or maybe the TEACH skill is used to help raise the skill being taught, more XP than using it?  </p>

<h2>Plot and the world at birth</h2> <p>April 19, 2001
<LI>well, i have an idea but can't give all the details, wouldn't want to spoil it
<LI>The plot
<ul>the mainland was once inhabited in the past with humans that flourished and dominated the land
something happened and the survivors made it to "newbie" island and established a town
time has since past and memories of the events are sketchy, not even how long ago is known
some believe wars between human nations using powerful magic caused the destruction
some think that monsters invaded and drove out the humans
still others believe some dark evil force caused the destruction
adventurers of all types are now drawn to the main land, not just for solving the past but for shaping the future! </ul>
<LI>the world is gonna be about 2000x2000 to 3000x3000 in size with no wrapping at the edges
<LI>the world will be one main continent with several smaller island continents with also smaller ones
<LI>there will be one "newbie" island in which to train and learn the game system, once you leave it, there will be no way to go back
<LI>the "newbie" island will be the only "city" in the world to start, the rest of the world is free for players to build except "plot" areas
<LI>there will be an outpost on the main continent that has basic equiptment and trading available
<LI>scattered in the world will be ruins or "plot" areas, no building is allowed by these
<LI>natural animals will be scattered according to geographic area
<LI>un-natural animals will be gradiented, with easy close to newbie and further you go the harder they become
<LI>the plot is dynamic and will shape according to players actions </p>

<h2>Player Killers: The art of getting pissed!</h2> <p>April 19, 2001
<LI>check government and law for more info
<LI>what to do if someone keeps PK'n you?
<LI>contact the local ruler(if a sector has one) and inform them (they should know anyway though)
<LI>put a bounty out for them? not sure about this
<LI>have a town posting board for informing others about them,maybe a high level will hunt them down?
<LI>find where they live and BURN IT!
<LI>of course, contact an ADMIN and report it, it may be abuse and properly reported can get the PK'r kicked off </p>

<h2>Item Editor</h2> <p>April 19, 2001
<LI>not sure how to implement, i don't want to write a whole other program
<LI>ADMINS will be able to design items, online with server, in a "reserved" place
<LI>probably add into the client somehow, a popup window with all the parameters to add
<LI>graphics? not sure but you just send them to me and i put it in on the nextupdate
<LI>server may need a "download graphic to client" feature but that would use bandwidth
<LI>admins will be able to "create" these items and test their functionality
<LI>right now, items have some 40 qualities to tweak, from name to burn rate </p>

<h2>Newbie Island: Dah, what is this place?</h2> <p>coming soon </p>

<h2>Events: Scavenger hunt anyone?</h2> <p>April 19, 2001
<LI>couple of kinds of events: plot, random, player
<LI>plot relates directly to the plot/storyline and will have major affects on the world
<LI>random events would be non-plot related, to keep things interesting, like suddenly an army of baddies mass near a town and attack it
<LI>player events would be run by players and could be anything they can do in the world, like a race, scavenger hunt, gladiators, war, cook out!, etc
<LI>of course since this is a dynamic world, all actions/events that player partake affect the world in some way </p>

<h2>Fire! Fire! Fire!</h2> <p>April 19, 2001
<LI>everything can burn assuming it can, what?
<LI>wood burns readily but granite will take a lot to burn it
<LI>items and grass(not really an item) can fuel a fire
<LI>each item has burn properties like fuel, spread, intensity, tolerance, etc.
<LI>spread is how easily the fire on the item spreads to other items, say a torch will not spread but a log will have a medium where as oil has a high
<LI>fire creates smoke, heat, and light
<LI>smoke, um, not sure if that is a little too much, walking around at night is annoying enough
<LI>i do want smoke spells or something though
<LI>light, to see where you are going, outside it is OK, but inside (home, caves) needed
<LI>heat is needed for smelting and such, may also play a role with weather and cold, the closer you are to a camp fire the more heat you get, lessening any cold damage?
<LI>players will be able to make fire with a tinder box or flint or spell
<LI>items and ground may turn to ash
<LI>players can catch on fire too, or at least the items they wear, a player on fire gets hit with fire damage every game turn until they die or fire is out? </p>

<h2>Non-Player Characters</h2> <p>coming soon </p>

<h2>Player Accountability</h2> <p>April 19, 2001
<LI>a problem arose to me: what if someone makes a player or client to do bad things with, just to be bad?
<LI>they never use there main player to do outlaw cause of getting into trouble so they make a throw away to do it
<LI>they use the throw away to burn everything in sight, whole towns would be in peril cause of someone
<LI>also what if ADMINs banned someone, they just make a new client and come back mad
<LI>pay to play games don't have this trouble cause they can track players with a credit card (to some extent)
<LI>we can assign clients on a per request basis, given a valid email, this can be automated
<LI>we can let anyone play the newbie island, but then get more info on them if they want to go to leave the newbie island
<LI>email address is not a good way 'cause anyone can get one nowadays, unless it is ISP given email which can't be changed and is validated by the ISP
<LI>any ideas? or should we not worry until your nice house is torched and the player is no where to be seen?
<LI>i hope i mentioned in LAW section that all outlaw acts are recorded, outlaw points </p>

<h2>Economy and Money</h2> <p>coming soon</p>

<h2>Gateways and teleporting</h2> <p>coming soon </p>

<h2>Admins</h2> <p>April 19, 2001
<LI>what do admins do anyway?
<LI>build the map, ecspecially in plot areas
<LI>help players with technical trouble
<LI>maybe help newbies with basic stuff?
<LI>keep track of abuse and confront players who do abuse the game and can ban them too
<LI>keep track of bugs that players report and ideas too
<LI>will be able to design new items and test them
<LI>admins will NOT help with the game beyond newbie island
<LI>they will NOT help recover your body
<LI>they will NOT have the power to "create" anything like make a Magic Sword for players
<LI>they will NOT have the power to restore your player or items in case of technical trouble
<LI>they will NOT be able to help players recover dead bodies
<LI>abuse is defined by the "User Agreement" all players agree to when they start playing </p>

<h2>The Underground: mines, dungeons, etc</h2> <p>coming soon </p>

<h2>Weather and Climate</h2> <p>coming soon </p>
<br><a href="#top" class="menuSubsection">Back to top</a>

</td>
</tr>
</table>




</body>
</html>
