<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

if(@trim($_POST[Submit])<>""){
 $id_del=$_POST["id_del"];
 $id_del=implode(",",$id_del);
 $sql="delete from `cms_recruitment_type` where id in(".$id_del.")";
 $query=mysql_query($sql);
}
echo "<script> alert('友情提示，删除操作成功！');history.back();</script>";
?>