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
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel=stylesheet href="css/home.css" type="text/css">
<title>网站后台管理系统</title>
</head>
<frameset rows="120,*" cols="*" frameborder="no" border="0" framespacing="0">
<frame src="home_top.php" name="top" scrolling="no" noresize="noresize" id="top" title="top"/>
<frameset rows="*" cols="170,*" framespacing="0" frameborder="no" border="0">
   <frame src="index_left.php" name="mulu"  scrolling="yes" noresize="noresize" id="mulu" title="mulu"/>
   <frame src="mod/mod_system/index.php" name="content" id="content" scrolling="auto" title="content"/>
</frameset>
</frameset>
<noframes>
</noframes>
</html>