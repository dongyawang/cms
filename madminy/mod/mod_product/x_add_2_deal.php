<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

        $cz=safe($_GET["cz"]);
		$title=safe($_POST['title']);
		$description = $_POST['content'];
		$type=safe($_POST['type']);
		$time_create=date("Y-m-d G:i:s");
        $query=mysql_query("update cms_product set title='$title',description='$description',type='$type',time_create='$time_create' where id=$cz");
        if($query==true){ echo "<script>alert('添加成功!');window.location.href='x_list.php';</script>";
        }else{echo "<script>alert('添加失败!');history.back();</script>";}
?>

        