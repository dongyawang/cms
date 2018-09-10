<?php
session_start();
include("config/conn.php"); 
include("config/config.php"); 
include("function/safe.php"); 
include('function/cut.php');
#获取传递参数
@$typeid=safe($_GET["typeid"]);
$sql_type=mysql_query("select name from cms_product_type where id=$typeid");
$info_type=mysql_fetch_array($sql_type);
$name_type = $info_type["name"];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>，产品展示"> 
<meta name="description" content="<?php echo $name_website;?>，产品展示列表。">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/product.css" type="text/css"> 
<title>Our Products</title>
</head>
<body>
<?php include("head.php"); ?>
<div class="main_h1">
        
        <div class="main_right">
                <div class="main_right_tm">Products list</div>
                <div class="main_right_nr">
                                  <?php
$pagesize=12;  //定义每页显示记录条数
$page=isset($_GET["page"])?intval($_GET["page"]):1;   //定义page的初始值,如果get 传过来的page为空,则page=1,
$total=mysql_num_rows(mysql_query("select id from cms_product where type='$name_type'"));  //执行查询获取总记录数
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
$exec="select id,image_name,title from cms_product where type='$name_type'  order by id desc limit $offset,$pagesize"; //执行查询
$result=mysql_query($exec);
while ($row=mysql_fetch_array($result)){  //循环读取记录
   $id = $row["id"]; 
   $image_name = $row["image_name"];
   $title = $row["title"];
   $title =cut($title,"6",'...'); 
   echo "<div class=\"product_x\">";  
   echo "<div class=\"product_x_pic\"> <a href=\"product_details_${id}.html\"><img src=\"upfiles/product/$image_name\" border=\"0\" height=\"140\" width=\"140\" /></a></div>";  
   echo "<div class=\"product_x_name\"> <a href=\"product_details_${id}.html\">${title}</a></div>";  
   echo "</div>";  
}
?>
                        <br/>
                        <table style="margin-top:10px;">
                                   <tr>
                                        <td>第<?php echo $page;?>页</td>
                                        <td>共<?php echo $pagecount;?>页</td>
                                        <td><a href="product_list_<?php echo $typeid;?>_1.html">首页</a></td>
                                        <td><a href="product_list_<?php echo $typeid;?>_<?php echo $pre;?>.html">上一页</a></td> 
                                        <td><a href="product_list_<?php echo $typeid;?>_<?php echo $next?>.html">下一页</a></td> 
                                        <td><a href="product_list_<?php echo $typeid;?>_<?php echo $last?>.html">末页</a></td>
                                 </tr> 
                        </table>
                   </div>     
        </div>
</div>
<div class="ben" style="margin-top:5px;"></div>
<?php include("foot.php"); ?>
</body>
</html>