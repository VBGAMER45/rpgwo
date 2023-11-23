<?php


function format_size($size, $round = 0)
{
	//Size must be bytes!
	$sizes = array('B', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB');
	for ($i=0; $size > 1024 && $i < count($sizes) - 1; $i++) $size /= 1024;
	return round($size,$round).$sizes[$i];
}




			 $dir = opendir('../artwork/');

			    while ($file = readdir($dir))
			    {

						if (substr($file,0,1) != '.')
			    			echo '<a href="' . $file . '">' . $file . '  </a> <i>File Size: </i>' . format_size(filesize('../artwork/' . $file)) . '<br /><br />';


			    }