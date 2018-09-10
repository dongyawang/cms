<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../config/conn.php');
include('../function/safe.php');
if($_POST['submit']<>""){
$username=safe($_POST['username']);
$userpwd=safe($_POST['userpwd']);

$sql=mysql_query("select * from xcenter_user where username='$username' and type='总管理员'");
$result=mysql_fetch_array($sql);
$username = $result["username"]; 
$userpwd_md5 = $result["userpwd"]; 
$random = $result["random"];
$userpwd=md5(md5($userpwd).$random);
if($result){
	if($userpwd==$userpwd_md5){
		 $_SESSION['usernameCMS']=md5(md5($username));
         echo"<script>alert('尊敬的管理员，您已登录成功！');window.location.href='home.php';</script>";
	                   }
	              else{ echo"<script>alert('对不起，您输入的密码有误，请重新输入！');window.location.href='home.php';</script>";
		               }
            }
       else{
    echo"<script>alert('对不起，您输入的用户名有误，请重新输入！');window.location.href='home.php';</script>";
            }
           }
?>