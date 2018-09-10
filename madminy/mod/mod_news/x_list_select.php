<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');
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
<form id="form1" name="form1" method="post" action="x_del.php">
<table>
           <tr><td colspan="6" style="background-color:#F1EFEF;text-align:left;">新闻文章 >> 分类列表</tr>
           <tr><td>选中</td><td>ID</td><td>新闻类别</td><td>新闻标题</td><td>修改新闻</td><td>更新时间</td></tr>
<?php
$pagesize=10;  //定义每页显示记录条数
$page=isset($_GET["page"])?intval($_GET["page"]):1;   //定义page的初始值,如果get 传过来的page为空,则page=1,
$id = safe($_POST['id']);
$title = safe($_POST['title']);
$total=mysql_num_rows(mysql_query("select * from cms_news_list where id='$id' or title like '%$title%' order by id desc"));  //执行查询获取总记录数
$pagecount=ceil($total/$pagesize);  //计算总页数
if ($page>$pagecount){
    $page=$pagecount;  // 检查page
}
if ($page<=0){
    $page=1;                   // 对提交过来的page做一些检查
}
$offset=($page-1)*$pagesize;   //偏移量
$pre=$page-1;           //上一页
if($pre==0){$pre=1;}
$next=$page+1;         //下一页
$first=1;                       //第一页
$last=$pagecount;    //末页
if($next>$last){$next=$last;}
$exec="select * from cms_news_list where id='$id' or title like '%$title%' order by id desc limit $offset,$pagesize"; //执行查询
$result=mysql_query($exec);
while ($row=mysql_fetch_array($result)){  //循环读取记录
   $id = $row["id"]; 
   $type = $row["type"];
   $title = $row["title"]; 
   $time_create = $row["time_create"]; 
   echo "<tr>";  
   echo "<td><input type=\"checkbox\" name=\"id_del[]\" value=\"${id}\" /></td>";  
   echo "<td>${id}</td>"; 
   echo "<td>${type}</td>";  
   echo "<td><a href=\"../../../news/${id}.html\" target=\"_blank\">${title}</a></td>";  
   echo "<td><a href=\"x_modify.php?a=${id}\"><img src=\"../../Images/modify.gif\" border=\"0\" width=\"58\" height=\"21\" /></a></td>"; 
   echo "<td>${time_create}</td>";  
   echo "<tr>"; 
}
?>
</table>
<div class="bottom">
<table>
            <tr>
                   <td>第<?php echo $page;?>页</td>
                   <td>共<?php echo $pagecount;?>页</td>
                   <td><a href="?page=1">首页</a></td>
                   <td><a href="?page=<?php echo $pre?>">上一页</a></td> 
                   <td><a href="?page=<?php echo $next?>">下一页</a></td> 
                   <td><a href="?page=<?php echo $last?>">末页</a></td>
            </tr> 
</table>
</div>
<table>
            <tr>
                  <td><input type="checkbox" name="checkbox" value="check all" onclick="checkall();"/> <span style="color:#F00; font-size:12px;">全选</span></td>
                  <td style="text-align:center;"><input type="submit" name="Submit" value="删除所选" class="submit" onclick="return confirmOK()" /></td>
           </tr> 
</table>
</form>
<table>
      <form name="myform" method="post" action="x_list_select.php">
      <tr>
          <td colspan="5" style="background-color:#F1EFEF;">新闻管理 >> 查询</td>
      </tr>
      <tr>
          <td>新闻ID：</td>
          <td><input type="text" name="id" style="width:100px;height:15px;color:#3E3A3A;"></td>
          <td>新闻标题：</td>
          <td><input type="text" name="title" style="width:250px;height:15px;color:#3E3A3A;" value="输入查询内容"></td>
          <td><input type="submit" value="点此查询" style="width:110px;height:24px;"></td>
      </tr>
      </form> 
</table>
</body>
</html>