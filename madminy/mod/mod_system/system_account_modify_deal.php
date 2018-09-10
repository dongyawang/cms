<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/random.php');
include('../../../function/safe.php');
        $cz=safe($_GET["cz"]);
        $username=safe($_POST['username']);
		$userpwd=safe($_POST['userpwd']);
		$userpwd=md5(md5($userpwd).$randomstring);
		$type="总管理员";
		$time_create=date("Y-m-d G:i:s");
        $query=mysql_query("update xcenter_user set username='$username',userpwd='$userpwd',random='$randomstring',type='$type',time_create='$time_create' where id=$cz");
        if($query==true){ echo "<script>alert('此帐号修改成功!');window.location.href='system_account.php';</script>";
        }else{echo "<script>alert('此帐号修改失败!');window.location.href='system_account.php';</script>";}
?>