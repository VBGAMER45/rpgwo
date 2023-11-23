<?php

$ip = getenv("REMOTE_ADDR");

print "Your Ip Address has been logged.  $ip Access Attempt logged.";

$handle = fopen("/home2/vbgamer4/public_html/log.txt", "a");
fwrite($handle, "$ip + $PHP_SELF");
fclose($handle);