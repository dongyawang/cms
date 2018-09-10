<?php
include("config/conn.php");
include("config/config.php");
?>
<script src="../Scripts/swfobject_modified.js" type="text/javascript"></script>

<div class="top"><h1><a href="<?php echo $iurl;?>"><img src="<?php echo $iurl;?>/img/logo.png" width="450" height="90" border="0" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></a></h1></div>
<div class="navigation">
<div class="navigation_center">
         <div class="navigation_text1"><a href="<?php echo $iurl; ?>/index.php" title="首页">Home</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
	     <div class="navigation_text"><a href="<?php echo $iurl; ?>/introduction.php" title="公司简介" target="_blank">About us</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
	     <div class="navigation_text"><a href="<?php echo $iurl; ?>/news_1.html" title="新闻动态" target="_blank">News</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
         <div class="navigation_text"><a href="<?php echo $iurl; ?>/product_1.html" title="产品展示" target="_blank">Product</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
		 <div class="navigation_text"><a href="<?php echo $iurl; ?>/message.php" title="留言本站" target="_blank">Message</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
         <div class="navigation_text"><a href="<?php echo $iurl; ?>/contactus.php" title="联系我们" target="_blank">Contact</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
         <div class="navigation_text"><a href="<?php echo $iurl; ?>/recruitment_1.html" title="人才招聘" target="_blank">Recurit</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
         <div class="navigation_text"><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php $sql=mysql_query("select qq from cms_contactus");$info_sql=mysql_fetch_array($sql);if($info_sql==false){ echo "获取网站基本全局信息出错!";} $qq=$info_sql["qq"];echo $qq; ?>&site=qq&menu=yes" title="点击给我发信息">Chat</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
         <div class="navigation_text"><a href="<?php echo $iurl; ?>/product_1.html" title="产品展示" target="_blank">Services</a></div>
</div>
</div>
<div class="fx">
            <div class="fxt"><?php echo date("Y年n月j日 G:i:s");?></div>
</div>
<div class="top_swf">
		<script language="javascript" src="js/images_flash.js"></script>
</div>
<div class="post">
      <div class="post_h1"></div>
      <div class="post_h2">
             <div class="post_h2_image"></div>
             <div class="post_h2_little">Announce</div>
             <div class="post_content">
             <marquee direction="left" scrollamount="5">
<?php
  $SQL=mysql_query("select post_content from cms_post order by id asc limit 0,1");
  while($row = mysql_fetch_array($SQL))
  {
   $post_content = $row["post_content"]; 
   echo $post_content;
  }
?>
               </marquee>
               </div>
      </div>
      <div class="post_h3"></div>
</div>

