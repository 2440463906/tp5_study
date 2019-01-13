<?php
$base64_body = substr(strstr ($_POST['suggest'],','),1);	//去除头部
$img = base64_decode($base64_body);							//转码	
file_put_contents("./1.jpg", $img);							//创建剪裁后图片
