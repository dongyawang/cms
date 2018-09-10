<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../config/conn.php');
@$usernameCMS=$_SESSION["usernameCMS"];
$lifeTime = 60 * 60 * 24;   // 
setcookie(session_name(), session_id(), time() + $lifeTime, "/");   
$sql=mysql_query("select * from xcenter_user where md5(md5(username))='$usernameCMS'");
@$info=mysql_fetch_array($sql);
	   if($info==true){
	die ("<script>window.location.href='home.php';</script>");
}
?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1- transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel=stylesheet href="css/index.css" type="text/css">
<title>管理登录</title>
</head>
<script language="javascript">
	function check(myform){
		if(myform.username.value==""){
			alert("请输入用户名!");myform.username.focus();return false;		
		}
		if(myform.userpwd.value==""){
			alert("请输入密码!");myform.userpwd.focus();return false;
		}
	}
</script>
<body>
<div class="main">
	    <form name="myform" method="post" action="login_deal.php" onSubmit="return Mycheck()">   
		管理帐号: <input  name="username" style="width:150px;height:16px;"><br/><br/>
		登陆密码: <input  name="userpwd" type="password"  style="width:150px;height:16px;"><br/><br/>
        <input type="submit" value="登录后台" name="submit" onClick="return check(form)" style="width:110px;height:26px;">
        <input type=reset value="清空重写" style="width:110px;height:26px;">
	    </form>
</div>
</body>
</html> 