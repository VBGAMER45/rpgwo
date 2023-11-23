<?
//purpose create a database for the site
//Jonathan Valentin 2003
//RPGWO Player's Guide Site!
//###Category = server type either phobos or liberty!

$dblink = @mysql_connect("localhost", "vbgamer4_vi", "1234"); 
if (!$dblink) { 
echo( "<p>Unable to connect to the " . 
"database server at this time.</p>" ); 
exit(); 
} 

//select the database

if (! @mysql_select_db("vbgamer4_rpgwo2",$dblink) ) { 
echo( "<p>Unable to locate the blackhole " . 
"database at this time.</p>" ); 
exit(); 
} 

//make the tables


$sql = "
CREATE TABLE user
(
	ID INT(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(32),
	Password VARCHAR(50),
	Realname VARCHAR(50),
	Email VARCHAR(50),
	AdminLevel INT(2),
	Title VARCHAR(50),
	Avater INT(2),
	Banned INT(2),
	IP VARCHAR(32),
	SessionID VARCHAR(32),
	Totalposts INT(5),
	PRIMARY KEY (ID)
);";



if ( @mysql_query($sql,$dblink) ) { 
  echo("<p> User table created successfully!</p>"); 
} else { 
  echo("<p>Error creating User table!: " . mysql_error() 
. "</p>"); 
} 
//Create the news post Sql Table

$sql = "
CREATE TABLE newspost
(
	ID INT(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(32),
	Date VARCHAR(10),
	News BLOB,
	Subject VARCHAR(100),
	PRIMARY KEY (ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p> User news created successfully!</p>"); 
} else { 
  echo("<p>Error creating news table!: " . mysql_error() 
. "</p>"); 
} 

//Create the link post Sql Table

$sql = "
CREATE TABLE linkpost
(
	ID INT(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(32),
	Date VARCHAR(10),
	Title VARCHAR(100),
	Category INT(2),
	Description BLOB,
	Url VARCHAR(100),
	Author VARCHAR(35),
	Email VARCHAR(50),
	PRIMARY KEY (ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p> Link table created successfully!</p>"); 
} else { 
  echo("<p>Error creating Link table!: " . mysql_error() 
. "</p>"); 
} 


//Create the download post Sql Table

$sql = "
CREATE TABLE downloadpost
(
	ID INT(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(32),
	Date VARCHAR(10),
	Title VARCHAR(100),
	Description BLOB,
	Category INT(2),
	Url VARCHAR(100),
	PRIMARY KEY (ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p> Download table created successfully!</p>"); 
} else { 
  echo("<p>Error creating Download table!: " . mysql_error() 
. "</p>"); 
} 




//Create the article post Sql Table

$sql = "
CREATE TABLE articlepost
(
	ID INT(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(32),
	Date VARCHAR(10),
	Title VARCHAR(100),
	Category INT(2),
	Description BLOB,
	Body BLOB,
	Url VARCHAR(100),
	PRIMARY KEY (ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p> article table  created successfully!</p>"); 
} else { 
  echo("<p>Error creating article  table!: " . mysql_error() 
. "</p>"); 
} 




//Create the bbsmessage Sql Table

$sql = "
CREATE TABLE bbsMessage
(
	ID INT NOT NULL AUTO_INCREMENT,
	Title VARCHAR(64),
	Poster VARCHAR(64),
	Created DATETIME,
	Parent INT,
	Body BLOB,
	Category INT(2),
	PRIMARY KEY(ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p> bbsMessage table  created successfully!</p>"); 
} else { 
  echo("<p>Error creating  bbsMessage!: " . mysql_error() 
. "</p>"); 
} 


//##############################
//###############################
//#########################
//Begin Rpgwo Specific Tables

//Create the guild post Sql Table

$sql = "
CREATE TABLE guildpost
(
	ID INT(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(32),
	Date VARCHAR(10),
	Title VARCHAR(100),
	Category INT(2),
	Description BLOB,
	Members INT(2),
	Url VARCHAR(100),
	Leader VARCHAR(35),
	Email VARCHAR(50),
	PRIMARY KEY (ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p> Guild table created successfully!</p>"); 
} else { 
  echo("<p>Error creating Guild table!: " . mysql_error() 
. "</p>"); 
} 

//Create the Store post Sql Table

$sql = "
CREATE TABLE storepost
(
	ID INT(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(32),
	Title VARCHAR(100),
	Category INT(2),
	Location VARCHAR(100),
	Description BLOB,
	Url VARCHAR(100),
	Email VARCHAR(50),
	PRIMARY KEY (ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p> store table created successfully!</p>"); 
} else { 
  echo("<p>Error creating store table!: " . mysql_error() 
. "</p>"); 
} 

//Create the Bounty post Sql Table

$sql = "
CREATE TABLE wantedpost
(
	ID INT(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(32),
	Title VARCHAR(100),
	Reward VARCHAR(100),
	Category INT(2),
	Description BLOB,
	PRIMARY KEY (ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p> wanted table created successfully!</p>"); 
} else { 
  echo("<p>Error creating wanted table!: " . mysql_error() 
. "</p>"); 
} 


?>

