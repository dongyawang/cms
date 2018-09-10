<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

$cz=safe($_GET["cz"]);
$title=safe($_POST['title']);
$type=safe($_POST['type']);
$content= safe($_POST['content']);
$content= str_replace( "'", "",$content);
$time_create=date("Y-m-d G:i:s");
$query=mysql_query("update cms_news_list set title='$title',type='$type',content='$content' ,time_create='$time_create' where id=$cz");
if($query==true){ echo "<script>alert('新闻修改成功!');window.location.href='x_list.php';</script>";
        }else{echo "<script>alert('新闻修改失败!');window.location.href='x_modify.php';</script>";}
?>