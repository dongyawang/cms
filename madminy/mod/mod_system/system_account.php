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
function checkall()
{
   var a = document.getElementsByTagName("input");
   if(a[0].checked==true){
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = false;
   }
   else
   {
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = true;
   }
}
</script>
</head>
<body>
<div class="x_content">
<form id="form1" name="form1" method="post" action="system_account_del.php">
<table>
           <tr><td colspan="5" style="background-color:#F1EFEF;">综合信息 >> 系统帐号</tr>
           <tr><td>选中</td><td>管理帐号</td><td>帐号备注</td><td>生成时间</td><td>修改帐号</td></tr>
<?php
  $SQL=mysql_query("select * from xcenter_user where type='总管理员' order by id desc"); 
  while($row = mysql_fetch_array($SQL))
  {
   $id = $row["id"]; 
   $username = $row["username"]; 
   $type = $row["type"]; 
   $time_create = $row["time_create"];
   echo "<tr>";
   echo "<td><input type=\"checkbox\" name=\"id_del[]\" value=\"${id}\" /></td>";                                          
   echo "<td>$username</td>";
   echo "<td>$type</td>";                                          
   echo "<td>$time_create</td>";      
   echo "<td><a href=\"system_account_modify.php?a=${id}\"><img src=\"../../Images/modify.gif\" border=\"0\" width=\"58\" height=\"21\" /></a></td>";
   echo "</tr>";
  }
?> 
</table>
</div>
<table>
            <tr>
                   <td><input type="checkbox" name="checkbox" value="check all" onclick="checkall();"/> <span style="color:#F00; font-size:12px;">全选</span></td>
                   <td style="text-align:center;"><input type="submit" name="Submit" value="删除所选" class="submit" onclick="return confirmOK()" /></td>
             </tr> 
</table>
</form>
</body>
</html>