<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include("../../../config/conn.php");
include('../../permission.php');
include('../../../function/cut.php');
?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel=stylesheet href="../../css/main.css" type="text/css">
<title>无标题文档</title>
</head>
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
<body>
<form id="form1" name="form1" method="post" action="message_del_x.php">
<table style="font-size:13px; color:#845622; line-height:25px;text-indent:2em;">

 <table>
            <tr>
                  <td colspan="9" style="background-color:#F1EFEF;">系统信息 >> 系统信息</td>
           </tr>
             <tr>
                   <td>选中</td>
                   <td>用户名</td>
                   <td>电话</td>
                   <td>邮箱</td>
                   <td>地址</td>
                   <td>腾讯QQ</td>
                   <td>性别</td>
                   <td>留言时间</td>
                   <td>详情</td>
              </tr>
<?php
$pagesize=20;  //定义每页显示记录条数
$page=isset($_GET["page"])?intval($_GET["page"]):1;   //定义page的初始值,如果get 传过来的page为空,则page=1,
$total=mysql_num_rows(mysql_query("select id from cms_message"));  //执行查询获取总记录数
$pagecount=ceil($total/$pagesize);  //计算总页数
if ($page>$pagecount){
    $page=$pagecount;  // 检查page
}
if ($page<=0){
    $page=1;                   // 对提交过来的page做一些检查
}
$offset=($page-1)*$pagesize;   //偏移量
$pre=$page-1;           //上一页
$next=$page+1;         //下一页
$first=1;                       //第一页
$last=$pagecount;    //末页
$exec="select * from cms_message order by id desc limit $offset,$pagesize"; //执行查询
$result=mysql_query($exec);
while ($row=mysql_fetch_array($result)){  //循环读取记录
  $id = $row["id"]; 
  $username = $row['username'];
  $username =cut($username,"13",'...');
  $tel = $row['tel'];
  $tel =cut($tel,"13",'...');
  $email = $row['email'];
  $email =cut($email,"13",'...');
  $address =$row['address'];
  $address =cut($address,"13",'...');
  $qq = $row['qq'];
  $qq =cut($qq,"13",'...');
  $sex = $row['sex'];
  $time_create = $row["time_create"];
  echo "<tr>";
  echo "<td><input type=\"checkbox\" name=\"id_del[]\" value=\"$id\" /></td>";
  echo "<td>${username}</td>";                                         
  echo "<td>$tel</td>";
  echo "<td>$email</td>";
  echo "<td>$address</td>";
  echo "<td>$qq</td>";                                        
  echo "<td>$sex</td>";
  echo "<td>$time_create</td>";
  echo "<td><a href=\"../../mod/mod_message/message_list_x.php?cz=${id}\">查看详情</a></td>";
  echo "</tr>";
}
?>
</table>
<table style="margin-top:10px;">
            <tr>
                   <td>第<?php echo $page;?>页</td>
                   <td>共<?php echo $pagecount;?>页</td>
                   <td><a href="?page=1">首页</a></td>
                   <td><a href="?page=<?php echo $pre?>">上一页</a></td> 
                   <td><a href="?page=<?php echo $next?>">下一页</a></td> 
                   <td><a href="?page=<?php echo $last?>">末页</a></td>
              </tr> 
</table>
<table>
             <tr>
                   <td><input type="checkbox" name="checkbox" value="check all" onclick="checkall();"/> <span style="color:#F00; font-size:12px;">全选</span></td>
                   <td style="text-align:center;"><input type="submit" name="Submit" value="删除所选" class="submit" onclick="return confirmOK()" /></td>
            </tr> 
</table>
</table>
</form>
</body>
</html>