<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

        $cz=safe($_GET["cz"]);
        $name=safe($_POST['name']);
		$rank=safe($_POST['rank']);
		$time_create=date("Y-m-d G:i:s");
        $query=mysql_query("update cms_product_type set name='$name', rank='$rank' ,time_create='$time_create' where id=$cz");
        if($query==true){ echo "<script>alert('修改成功!');window.location.href='type_list.php';</script>";
        }else{echo "<script>alert('修改失败!');window.location.href='type_list.php';</script>";}
?>