<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

 $cz=safe($_GET["cz"]);
 $Submit = $_POST['Submit'];
 if($Submit=="提交"){
 $time_create=date("Y-m-d G:i:s");
 $filesize=$_FILES["images"]['size'];
 if($filesize>100000000){echo "<script> alert('对不起,您输入的图片太大,不能上传!!'); history.back();</script>";}else{
 $randomValues=mt_rand(100000,999999);//获取随机六位数字
 $time_createX=date("Y-m-d-G-i-s");
 $time_createX=$time_createX."-".$randomValues."-";
 $PicName=$_FILES['images']['name'];
 $PicName=iconv("UTF-8", "gbk",$PicName);
 $path = '../../../upfiles/product/'.$time_createX.$PicName;
 $images= $time_createX.$_FILES['images']['name'];
 if (move_uploaded_file($_FILES['images']['tmp_name'],$path)) { 
	$query1="update cms_product set time_create='$time_create',image_name='$images' where id=$cz";
	$result1=mysql_query($query1);
	if($result1=true){ 
	echo "<script> alert('图片上传成功！'); window.location.href='x_list.php';</script>";
	}else{echo "<script> alert('图片上传失败！'); window.location.href='x_list.php';</script>";}
    }}}
   ?>