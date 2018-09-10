<?php
session_start();
include("config/conn.php"); 
include("config/config.php"); 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>，人才招聘。"> 
<meta name="description" content="<?php echo $name_website;?>，人才招聘列表。">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/recruitment.css" type="text/css">
<title>Recurit</title>
</head>
<body>
<?php include("head.php"); ?>
<div class="main_h1">
       
        <div class="main_right">
                <div class="main_right_tm">Job List</div>
                <div class="main_right_nr">
                        <table>
                                  <tr><td>Category</td><td>Name</td><td>Details</td><td>Release Time</td></tr>
<?php
$pagesize=20;  //定义每页显示记录条数
$page=isset($_GET["page"])?intval($_GET["page"]):1;   //定义page的初始值,如果get 传过来的page为空,则page=1,
$total=mysql_num_rows(mysql_query("select id from cms_recruitment_list"));  //执行查询获取总记录数
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
if($pagecount==1){$next=1;}
$first=1;                       //第一页
$last=$pagecount;    //末页
if($next>$last){$next=$last;}
$exec="select id,type,title,time_create from cms_recruitment_list  order by id desc limit $offset,$pagesize"; //执行查询
$result=mysql_query($exec);
while ($row=mysql_fetch_array($result)){  //循环读取记录
   $id = $row["id"]; 
   $type = $row["type"];
   $title = $row["title"]; 
   $time_create = $row["time_create"]; 
   echo "<tr>";
   echo "<td>${type}</td>";  
   echo "<td>${title}</td>";  
   echo "<td><a href=\"recruitment_details_${id}.html\">查看详情</a></td>";  
   echo "<td>${time_create}</td>";  
   echo "</tr>";
}
?>
                       </table><br/>
                        <table style="margin-top:15px; margin-bottom:15px;">
                                   <tr>
                                        <td>current page:<?php echo $page;?></td>
                                        <td>total page:<?php echo $pagecount;?></td>
                                        <td><a href="<?php echo $iurl;?>/recruitment_1.html">first page</a></td>
                                        <td><a href="<?php echo $iurl;?>/recruitment_<?php echo $pre;?>.html">previous page</a></td> 
                                        <td><a href="<?php echo $iurl;?>/recruitment_<?php echo $next;?>.html">next page</a></td> 
                                        <td><a href="<?php echo $iurl;?>/recruitment_<?php echo $last;?>.html">final page</a></td>
                                 </tr> 
                        </table>
                 </div>
        </div>
</div>
<div class="ben"></div>
<?php include("foot.php"); ?>
</body>
</html>