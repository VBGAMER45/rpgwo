<?php
/*
 * mastermaker.php
 * AGPLv3
 * https://git.sr.ht/~catboy/pmastermaker/
 */


// Change this - basefiles is where you put your files to make
// This tool will output into ./update alongside the basefiles folder. You can point
// your web server to the ./update folder.
define('YOUR_FILE_DIRECTORY', './basefiles');

function writeback_compressed($path)
{
    $basefilename = basename($path);
    $basefilename_OUT = str_replace('basefiles', 'update', $path . ".zlib");
    $f = fopen($basefilename_OUT, 'wb+');
    fwrite($f, pack('i', filesize($path)));
    fwrite($f, gzcompress(file_get_contents($path), 9));
    fclose($f);
    return filesize($basefilename_OUT);
}

function checksum($path)
{
    $long_Number = 0;
    $handle = fopen($path, "rb");
    while (!feof($handle)) {
        $get_1_sum = @unpack('s', fread($handle, 2));
        $long_Number = $long_Number + 1;
    }
    fclose($handle);
    return $long_Number;
}

$path = __DIR__ . '/' . YOUR_FILE_DIRECTORY;
$files = glob($path . '/*.{bmp,wav,dat,rtf}', GLOB_BRACE);

$_VERSION = 8;
@mkdir(__DIR__ . '/update');
$out = fopen(__DIR__ . '/update/MASTER2.dat', 'wb');
fwrite($out, pack('v', $_VERSION));
$_NUMBER_OF_FILES = count($files) - 1;
fwrite($out, pack('v', $_NUMBER_OF_FILES));

foreach ($files as $f) {
    if (basename($f) === 'MASTER2.dat') {
        continue;
    }
    echo $f . "\n";
    fwrite($out, pack('v', strlen(basename($f))));
    fwrite($out, basename($f));
    fwrite($out, pack('i', filesize($f)));
    fwrite($out, pack('i', writeback_compressed($f))); // compressed size
    fwrite($out, pack('i', checksum($f))); // checksum

    $systime = filemtime($f);
    fwrite($out, pack('v', (int) date('Y', $systime)));
    fwrite($out, pack('v', (int) date('n', $systime)));
    fwrite($out, pack('v', (int) date('w', $systime)));
    fwrite($out, pack('v', (int) date('j', $systime)));
    fwrite($out, pack('v', (int) date('G', $systime)));
    fwrite($out, pack('v', (int) date('i', $systime)));
    fwrite($out, pack('v', (int) date('s', $systime)));
    fwrite($out, pack('v', (int) date('v', $systime)));
}

fclose($out);
