<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/random.php');
include('../../../function/safe.php');

      $username = safe($_POST['username']);
	  $userpwd = safe($_POST['userpwd']);
	  $userpwd=md5(md5($userpwd).$randomstring);
	  $type = "总管理员";
      $time_create=date("Y-m-d G:i:s");
      $sqllink = "insert into xcenter_user (username,userpwd,random,type,time_create)
                    values('$username','$userpwd','$randomstring','$type','$time_create')";
      $sqldata = mysql_query($sqllink);
      if($sqldata == TRUE)
        {

        echo "<script> alert('添加管理帐号成功！'); window.location.href='system_account.php';</script>";
        }
         else
        {
        echo "<script> alert('添加管理帐号失败！'); window.location.href='system_account_add.php';</script>";
        }
?>