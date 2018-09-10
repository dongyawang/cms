<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

        $path = "../../../upfiles/products_moren.jpg";
        $title=safe($_POST['title']);
		$description = safe($_POST['content']);
		$type=safe($_POST['type']);
		$time_create=date("Y-m-d G:i:s");
        $sqllink = "insert into cms_product (path,title,description,type,time_create)
                    values('$path','$title','$description','$type','$time_create')";
        $sqldata = mysql_query($sqllink);
      if($sqldata == TRUE)
        {
        echo "<script> alert('产品发布成功！'); window.location.href='x_list.php';</script>";
        }
         else
        {
        echo "<script> alert('产品发布失败！'); window.location.href='x_list.php';</script>";
        }
?>