<?
//purpose create a database for the site
//Jonathan Valentin 2003

$dblink = @mysql_connect("localhost", "vbgamer4_vi", "1234"); 
if (!$dblink) { 
echo( "<p>Unable to connect to the " . 
"database server at this time.</p>" ); 
exit(); 
} 


if (! @mysql_select_db("vbgamer4_rpgwotest",$dblink) ) { 
echo( "<p>Unable to locate the brpgwo " . 
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
  echo("<p User table created successfully!p>"); 
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
	Date VARCHAR(30),
	News BLOB,
	Subject VARCHAR(100),
	Icon INT(2),
	PRIMARY KEY (ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p User news created successfully!p>"); 
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
  echo("<p Link table created successfully!p>"); 
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
  echo("<p Download table created successfully!p>"); 
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
	Body BLOB,
	Url VARCHAR(100),
	PRIMARY KEY (ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p article table  created successfully!p>"); 
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
	PRIMARY KEY(ID)
);";

if ( @mysql_query($sql,$dblink) ) { 
  echo("<p bbsMessage table  created successfully!p>"); 
} else { 
  echo("<p>Error creating project  bbsMessage!: " . mysql_error() 
. "</p>"); 
} 

?>