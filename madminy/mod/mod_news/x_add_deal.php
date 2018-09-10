<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

$title = safe($_POST['title']);
$type=safe($_POST['type']);
$content = safe($_POST['content']);
$content= str_replace( "'", "",$content);
$time_create=date("Y-m-d G:i:s");
$sqllink = "insert into cms_news_list (title,type,content,time_create) values('$title','$type','$content','$time_create')";
$sqldata = mysql_query($sqllink);
if($sqldata == TRUE)
        {
        echo "<script> alert('新闻发布成功！'); window.location.href='x_list.php';</script>";
        }
         else
        {
        echo "<script> alert('新闻发布失败！'); window.location.href='x_list.php';</script>";
        }
?>