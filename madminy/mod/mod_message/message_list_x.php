<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include("../../../config/conn.php");
include('../../permission.php');
include('../../../function/cut.php');
$cz=$_GET["cz"];
$NewsSql=mysql_query("select * from cms_message where id=$cz");
$NewsInfo=mysql_fetch_array($NewsSql);
$username = $NewsInfo["username"]; 
$tel = $NewsInfo["tel"]; 
$temail = $NewsInfo["email"]; 
$address = $NewsInfo["address"]; 
$bqq = $NewsInfo["qq"]; 
$sex = $NewsInfo["sex"]; 
$content = $NewsInfo["content"]; 
$time_create = $NewsInfo["time_create"]; 
?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel=stylesheet href="../../css/main.css" type="text/css">
<title>无标题文档</title>
</head>
<body>
<table>
<table>
            <tr>
                  <td colspan="9" style="background-color:#F1EFEF;">留言列表 >> 详细信息</td>
           </tr>
  <tr>
    <td>用户名称：</td>
    <td><?php echo $username;?></td>
  </tr>
  <tr>
    <td>联系电话：</td>
    <td><?php echo $tel;?></td>
  </tr>
  <tr>
    <td>联系邮箱：</td>
    <td><?php echo $temail;?></td>
  </tr>
  <tr>
    <td>用户地址：</td>
    <td><?php echo $address;?></td>
  </tr>
  <tr>
    <td>腾讯Q Q：</td>
    <td><?php echo $bqq;?></td>
  </tr>
  <tr>
    <td>用户性别：</td>
    <td><?php echo $sex;?></td>
  </tr>
  <tr>
    <td>留言时间：</td>
    <td><?php echo $time_create;?></td>
  </tr>
    <tr>
    <td colspan="2">留言内容：</td>
  </tr>
    <tr>
    <td colspan="2" style="text-indent:2em;"><?php echo $content;?></td>
  </tr>
</table>
</table>
</body>
</html>