<?php
$PicNum = $_GET['PicNum'];
$PicSize = $_GET['PicSize'];

$server = (int) $_REQUEST['server'];
if (@$server==1)
  $path="liberty";
if (@$server==2)
  $path="phobos";
if (@$server==3)
  $path="lunatik";
if (@$server==4)
  $path="utworld";
if (@$server==5)
  $path="steeltide";

if($PicSize == 1) {
  $SizeX = 32;
  $SizeY = 64;
}
else {
  $SizeX = 32;
  $SizeY = 32;
}
if($PicNum < 101) $PicFile = $path . "/item0.png";
else if($PicNum < 201) $PicFile = $path ."/item1.png";
else if($PicNum < 301) $PicFile =  $path . "/item2.png";
else if($PicNum < 401) $PicFile =  $path . "/item3.png";
else if($PicNum < 501) $PicFile =  $path . "/item4.png";
else if($PicNum < 601) $PicFile =  $path . "/item5.png";
else if($PicNum < 701) $PicFile =  $path . "/item6.png";
else if($PicNum < 801) $PicFile =  $path . "/item7.png";
else if($PicNum < 901) $PicFile =  $path . "/item8.png";
else if($PicNum < 1001) $PicFile =  $path . "/item9.png";
else if($PicNum < 1101) $PicFile =  $path . "/item10.png";
else if($PicNum < 1201) $PicFile =  $path . "/item11.png";
else if($PicNum < 1301) $PicFile =  $path . "/item12.png";
else if($PicNum < 1401) $PicFile =  $path . "/item13.png";
else if($PicNum < 1501) $PicFile =  $path . "/item14.png";
else if($PicNum < 1601) $PicFile =  $path . "/item15.png";
else if($PicNum < 1701) $PicFile =  $path . "/item16.png";
else if($PicNum < 1801) $PicFile =  $path . "/item17.png";
else if($PicNum < 1901) $PicFile =  $path . "/item18.png";
else if($PicNum < 2001) $PicFile =  $path . "/item19.png";
else if($PicNum < 2101) $PicFile =  $path . "/item20.png";
else if($PicNum < 2201) $PicFile =  $path . "/item21.png";
else if($PicNum < 2301) $PicFile =  $path . "/item22.png";
else if($PicNum < 2401) $PicFile =  $path . "/item23.png";
else if($PicNum < 2501) $PicFile =  $path . "/item24.png";
else $PicFile = "item0.png";
$InFileNum = $PicNum;
while($InFileNum > 100) $InFileNum -= 100;
$InFileX = $InFileNum;
while($InFileX > 10) $InFileX -= 10;
$InFileX--;
$InFileY = floor(($InFileNum) / 10);
if($InFileX == 9) $InFileY--;
$PlayerPic = imagecreatefrompng($PicFile);
$ThePic = ImageCreate($SizeX,$SizeY);
ImageFill($ThePic,0,0,ImageColorAllocate($ThePic,255,255,255));
ImageCopy($ThePic,$PlayerPic,0,0,$InFileX * 32,$InFileY * 32,$SizeX,$SizeY);
ImageColorTransparent($ThePic,ImageColorExact($ThePic, 255, 255, 255));
ImagePNG($ThePic);
?>
