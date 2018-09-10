<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
?>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel=stylesheet href="../../css/main.css" type="text/css">
<title>无标题文档</title>
<script type="text/javascript" language="javascript">
<!-- 
function confirmOK() 
{ 
    if(confirm('确定要执行此操作吗?'))
         { 
         return true; 
    } 
        return false; } 
//--> 

</script> 
</head>
<body>
<table>
<form name="form_one" method="post" action="system_account_add_deal.php">
           <tr>
                 <td colspan="2" style="background-color:#F1EFEF;">系统信息 >> 添加帐号</td>
           </tr>
           <tr>
                 <td>管理帐号：</td>
                 <td><input type="text" name="username"style="width:150px;height:18px;color:#3E3A3A;"></td>
            </tr>
            <tr>
                  <td>管理密码：</td>
                  <td><input type="password" name="userpwd"style="width:150px;height:18px;color:#3E3A3A;"></td>
             </tr>
             <tr>
                   <td>帐号类型：</td>
                   <td>总管理员</td>
             </tr>
             <tr>
                   <td colspan="2" style="text-align:center; height:40px;"><input type="submit" value="确定" style="width:110px;height:24px;"onclick="return confirmOK()"><input type=reset value="重填" style="width:110px;height:24px;"></td>
              </tr>
</form> 
</table>
</body>
</html>