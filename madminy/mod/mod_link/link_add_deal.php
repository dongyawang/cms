<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

$rank = safe($_POST['rank']);
$name = safe($_POST['name']);
$url = safe($_POST['url']);
$note = safe($_POST['note']);
$time_create=date("Y-m-d G:i:s");
$sqllink = "insert into cms_links (rank,name,url,note,time_create)values('$rank','$name','$url','$note','$time_create')";
$sqldata = mysql_query($sqllink);
if($sqldata == TRUE)
        {
        echo "<script> alert('添加友情链接成功！'); window.location.href='link_list.php';</script>";
        }
         else
        {
        echo "<script> alert('添加友情链接失败！'); window.location.href='link_add.php';</script>";
        }
?>