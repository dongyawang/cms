<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');

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
	$query1="insert into cms_product (time_create,image_name) values ('$time_create','$images')";
	$result1=mysql_query($query1);
	if($result1=true){ 
	 $sql=mysql_query("select * from cms_product order by id desc limit 0 , 1");
     $info=mysql_fetch_array($sql);
     $id = $info["id"];
	echo "<script> alert('图片上传成功！'); window.location.href='x_add_2.php?a=$id';</script>";
	}
    }
	}
    }
   ?>