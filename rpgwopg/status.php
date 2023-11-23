<?
print("<b>Game Servers:</b><BR>");
@$fp = fsockopen ("69.44.57.200",6015, $errno, $errstr, 1);
if (!$fp) {
//server doesn't exist
print("SteelTide Server is down!<BR>");
}
else
{
//server does exst
print("SteelTide Server is up!<BR>");

}
@$fp2 = fsockopen ("69.44.57.200",6016, $errno, $errstr, 1);
if (!$fp2) {
//server doesn't exist
print("Phobos Server is down!<BR>");
}
else
{
//server does exst
print("Phobos Server is up!<BR>");

}

@$fp3 = fsockopen ("64.252.15.108",6015, $errno, $errstr, 1);
if (!$fp3) {
//server doesn't exist
print("Lunatik Server is down!<BR>");
}
else
{
//server does exst
print("Lunatik Server is up!<BR>");

}
@$fp4 = fsockopen ("69.44.57.200",6016, $errno, $errstr, 1);
if (!$fp4) {
//server doesn't exist
print("UTWorld Server is down!<BR>");
}
else
{
//server does exst
print("UTWorld Server is up!<BR>");

}

?>