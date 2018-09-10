 <?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../config/conn.php');
include('permission.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel=stylesheet href="css/home.css" type="text/css">
</head>
<body>
<div class="top"><img src="images/top.jpg" width="980" height="89" style="float:left;"/></div>
<div class="daohang">
        <div class="daohang_left">系统功能管理中心>></div>
        <div class="daohang_right">
	            <div class="daohang_text"><a href="../index.php" target="_blank"><span>网站首页</span></a></div>
                <div class="daohang_image"></div>
	            <div class="daohang_text"><a href="login_out.php" target="_parent"><span>安全退出</span></a></div>
         </div>
</div>
</html>