<?php
session_start(); 
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');

        $cz=$_GET["cz"];
		$post_content= trim($_POST['post_content']);
		$post_content= str_replace( "'", "",$post_content);
		$time_create=date("Y-m-d G:i:s");
        $query=mysql_query("update cms_post set post_content='$post_content',time_create='$time_create' where id=$cz");
        if($query==true){ echo "<script>alert('公司简介修改成功!');window.location.href='index.php';</script>";
        }else{echo "<script>alert('公司简介修改失败!');window.location.href='index.php';</script>";}
?>