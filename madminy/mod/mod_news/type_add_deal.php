<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

$name = safe($_POST['name']);
$rank = safe($_POST['rank']);
$time_create=date("Y-m-d G:i:s");
$sqllink = "insert into cms_news_type (name,rank,time_create) values('$name','$rank','$time_create')";
$sqldata = mysql_query($sqllink);
if($sqldata == TRUE)
        {
        echo "<script> alert('添加成功！'); window.location.href='type_list.php';</script>";
        }
         else
        {
        echo "<script> alert('添加失败！'); window.location.href='type_add.php';</script>";
        }
?>