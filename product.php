<?php
session_start();
include("config/conn.php"); 
include("config/config.php"); 
include('function/cut.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>,产品列表。"> 
<meta name="description" content="<?php echo $name_website;?>，描述，产品展示列表。">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/product.css" type="text/css"> 
<title>Our Products</title>
</head>
<body>
<?php include("head.php"); ?>
<div class="main_h1">
        
        <div class="main_right">
                <div class="main_right_tm">Products</div>
                <div class="main_right_nr">
 <?php
$pagesize=12;  //定义每页显示记录条数
$page=isset($_GET["page"])?intval($_GET["page"]):1;   //定义page的初始值,如果get 传过来的page为空,则page=1,
$total=mysql_num_rows(mysql_query("select id from cms_product"));  //执行查询获取总记录数
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
$exec="select id,image_name,title from cms_product order by id desc limit $offset,$pagesize"; //执行查询
$result=mysql_query($exec);
while ($row=mysql_fetch_array($result)){  //循环读取记录
   $id = $row["id"]; 
   $image_name = $row["image_name"];
   $title = $row["title"];
   $title =cut($title,"6",'...'); 
   echo "<div class=\"product_x\">";  
   echo "<div class=\"product_x_pic\"> <a href=\"product_details.php?cz=${id}\"><img src=\"upfiles/product/$image_name\" border=\"0\" height=\"140\" width=\"140\" /></a></div>";  
   echo "<div class=\"product_x_name\"> <a href=\"product_details.php?cz=${id}\">${title}</a></div>";  
   echo "</div>";  
}
?>
                        <br/>
                        <br/><br/><br/><br/><br/><br/><br/>
                        <?php /*?><table style="margin-top:10px;">
                                   <tr>
                                       <td>current page:<?php echo $page;?></td>
                                        <td>total page:<?php echo $pagecount;?></td>
                                        <td><a href="<?php echo $iurl;?>/product_1.html">first page</a></td>
                                        <td><a href="<?php echo $iurl;?>/product_<?php echo $pre;?>.html">previous page</a></td> 
                                        <td><a href="<?php echo $iurl;?>/product_<?php echo $next;?>.html">next page</a></td> 
                                        <td><a href="<?php echo $iurl;?>/product_<?php echo $last;?>.html">final page</a></td>
                                 </tr> 
                        </table><?php */?>
                   </div>     
        </div>
</div>
<div class="ben" style="margin-top:5px;"></div>
<?php include("foot.php"); ?>
</body>
</html>