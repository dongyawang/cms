<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');
include('../../../function/cut.php');

//获取网站管理员参数
$del_a=safe($_GET["a"]);
$sql=mysql_query("select * from xcenter_user where id=$del_a");
$info=mysql_fetch_array($sql);
$id=$info["id"]; 
$username=$info["username"]; 
$userpwd=$info["userpwd"]; 
$userpwd =cut($userpwd,"2",'..');
$type=$info["type"]; 
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
<form name="myform" method="post" action="system_account_modify_deal.php?cz=<?php echo $id; ?>">
            <tr>
                  <td colspan="2" style="background-color:#F1EFEF;">系统信息 >> 添加帐号</td>
            </tr>
            <tr>
                 <td>管理帐号</td>
                 <td><input type="text" name="username"style="width:150px;height:18px;color:#3E3A3A;" value="<?php echo $username; ?>"></td>
             </tr>
             <tr>
                   <td>管理密码</td>
                   <td><input type="password" name="userpwd"style="width:300px;height:18px;color:#3E3A3A;"  value="<?php echo $userpwd; ?>" ></td>
             </tr>
             <tr>
                   <td>帐号类型</td>
                   <td><input type="text" name="type"style="width:150px;height:18px;color:#3E3A3A;" value="<?php echo $type; ?>"></td>
             </tr>
             <tr>
                   <td colspan="2" style="text-align:center; height:40px;"><input type="submit" value="确认修改" style="width:110px;height:24px;"onclick="return confirmOK()"><input type=reset value="重填" style="width:110px;height:24px;"></td>
             </tr>
</form> 
</table>
</body>
</html>