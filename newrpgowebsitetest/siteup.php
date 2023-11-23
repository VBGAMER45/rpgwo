
<?
print("<b>Game Servers:</b><BR>");
@$fp = fsockopen ("64.252.15.108",6015, $errno, $errstr, 1);
if (!$fp) {
//server doesn't exist
print("Liberty Server is down!<BR>");
}
else
{
//server does exst
print("Liberty Server is up!<BR>");

}
@$fp2 = fsockopen ("64.252.15.108",6016, $errno, $errstr, 1);
if (!$fp2) {
//server doesn't exist
print("Phobos Server is down!<BR>");
}
else
{
//server does exst
print("Phobos Server is up!<BR>");

}
@$fp3 = fsockopen ("217.160.188.110",6016, $errno, $errstr, 1);
if (!$fp3) {
//server doesn't exist
print("Hellborn Server is down!<BR>");
}
else
{
//server does exst
print("Hellborn Server is up!<BR>");

}

@$fp4 = fsockopen ("217.160.188.110",6015, $errno, $errstr, 1);
if (!$fp4) {
//server doesn't exist
print("Lunatik Server is down!<BR>");
}
else
{
//server does exst
print("Lunatik Server is up!<BR>");

}

//print("<b>Update Servers:</b><BR>");

//$fp3 = fsockopen ("http://members.ccinet.com/~kudlo/update",80, $errno, $errstr, 1);
//if (!$fp3) {
//server doesn't exist
//print("Update Server is down!<BR>");
//}
//else
//{
//server does exst
//print("Update Server is up!<BR>");

//}

?>

