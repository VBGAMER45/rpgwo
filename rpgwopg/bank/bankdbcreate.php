<?
//purpose create a database for the site
//Jonathan Valentin 2003
//RPGWO Player's Guide Site!
//###Category = server type either phobos or liberty!

$dblink = @mysqli_connect("localhost", "vbgamer4_vi", "1234");
if (!$dblink) {
echo( "<p>Unable to connect to the " .
"database server at this time.</p>" );
exit();
}

//select the database

if (! @mysqli_select_db("vbgamer4_rpgwo2",$dblink) ) {
echo( "<p>Unable to locate the rpgwodb " .
"database at this time.</p>" );
exit();
}

//make the tables


$sql = "
CREATE TABLE bankrecord
(
	ID INT(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(32),
	LoanAmount INT(10),
	Date VARCHAR(12),
	PRIMARY KEY (ID)
);";

if ( @site_query($sql,$dblink) ) {
  echo("<p> Bank table created successfully!</p>");
} else {
  echo("<p>Error creating bank table!: " . mysqli_error()
. "</p>");
}


?>