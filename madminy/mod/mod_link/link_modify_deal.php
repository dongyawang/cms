<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

$cz=$_GET["cz"];
$rank = safe($_POST['rank']);
$name = safe($_POST['name']);
$url = safe($_POST['url']);
$note = safe($_POST['note']);
$time_create=date("Y-m-d G:i:s");
$query=mysql_query("update cms_links set rank='$rank',name='$name',url='$url',note='$note' ,time_create='$time_create' where id=$cz");
if($query==true){ echo "<script>alert('友情链接修改成功!');window.location.href='link_list.php';</script>";
        }else{echo "<script>alert('友情链接修改失败!');window.location.href='link_list.php';</script>";}
?>