<?php
include("config/conn.php");
include("config/config.php");
include('function/cut.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>"> 
<meta name="description" content="<?php echo $name_website;?>">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/index.css" type="text/css"> 
<title><?php echo $name_website;?></title>
</head>
<body>
<?php include("head.php"); ?>

<div class="main_images"><div class="main_images1"><div class="main_images2">
       <div class="main_images_little">
               <div class="main_images_little_left"><h1>Products</h1></div>
               <div class="main_images_little_more"><a href="<?php echo $iurl; ?>/product_1.html" target="_blank">more>></a></div>
      </div>
       <div class="main_images_content">
<?php
  $SQL=mysql_query("select id,image_name,title from cms_product order by id desc limit 0,10"); 
  while($row = mysql_fetch_array($SQL))
  {
   $id = $row["id"]; 
   $image_name = $row["image_name"]; 
   $title = $row["title"]; 
   echo "<div class=\"goods_content_x\">";
   echo "<div class=\"goods_content_x_pic\"> <a href=\"product_details_${id}.html\" target=\"_blank\"><img src=\"upfiles/product/$image_name\" border=\"0\" height=\"140\" width=\"140\" /></a></div>";
   echo "<div class=\"goods_content_x_name\"><a href=\"product_details_${id}.html\" target=\"_blank\">${title}</a></div>";
   echo "</div>";
  }
?>   
       </div>
</div></div></div>


<div class="main_top">
        
        <div class=" main_top_right"><div class="main_top_right1"><div class="main_top_right2">
                 <div class="main_top_right_top"><h1>About us</h1></div>
                 <div class="main_top_right_foot">
                          <div class="main_top_right_img1" style=" width:10px; height:200px; float:left;"></div>
                           <div class="main_top_right_img" style="width:200px; height:200px; float:left;margin-top:10px; overflow:hidden; margin-right:10px;">
                                   <script language="javascript" src="js/led.js"></script>
                           </div>
                          <?php
							$SQL=mysql_query("select content from cms_about order by id desc"); 
                             while($row = mysql_fetch_array($SQL))
							{
                            $content = $row["content"];
							}
							echo $content;
						?>
                 </div>
                <div class="main_top_right_foot_h"><a href="<?php echo $iurl; ?>/introduction.php" target="_blank">more>></a></div>
        </div>
</div></div></div>



<div class="main_news"><div class="main_news1"><div class="main_news2">
       <div class="main_news_little">
               <div class="main_news_little_left"><h2>News</h2></div>
               <div class="main_news_little_more"><a href="<?php echo $iurl; ?>/news_1.html" target="_blank">more>></a></div>
       </div>
       <div class="main_news_content">
       
       <?php
  $SQL=mysql_query("select id,time_create,title from cms_news_list  order by id desc limit 0,15"); 
  while($row = mysql_fetch_array($SQL))
  {
   $id = $row["id"]; 
   $time_create = $row["time_create"];
   $time_create =date("Y-m-d",strtotime("$time_create"));
   $title = $row["title"]; 
   $title =cut($title,"16",'...');
   echo "<div class=\"main_right_content_x1\"><img src=\"Images/small.gif\" border=\"0\" width=\"3\" height=\"5\" /> <a href=\"news_details_${id}.html\">${title}</a>${time_create}</div>";
  }
?>
       </div>
</div></div></div>
<div class="link"><div class="link1"><div class="link2">
<?php
  $SQL=mysql_query("select url,note,name from cms_links order by rank asc");
  while($row = mysql_fetch_array($SQL))
  {
   $url = $row["url"]; 
   $note = $row["note"]; 
   $name = $row["name"]; 
   echo "<div class=\"link_x\"><a href=\"${url}\" target=\"_blank\" title=\"${note}\">${name}</a></div>";
  }
?>           
</div></div></div>




<?php include("foot.php"); ?>
</body>
</html>