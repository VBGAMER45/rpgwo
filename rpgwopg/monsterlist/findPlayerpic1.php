<?php
$PicNum = $_GET['PicNum'];
$PicSize = $_GET['PicSize'];
if($PicSize == 1) {
  $SizeX = 32;
  $SizeY = 64;
}
else {
  $SizeX = 32;
  $SizeY = 32;
}
if($PicNum < 101) $PicFile = "player0.png";
else if($PicNum < 201) $PicFile = "player1.png";
else if($PicNum < 301) $PicFile = "player2.png";
else $PicFile = "player3.png";
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
