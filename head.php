<?php
include("config/conn.php");
include("config/config.php");
?>
<script src="../Scripts/swfobject_modified.js" type="text/javascript"></script>

<div class="top"><h1><a href="<?php echo $iurl;?>"><img src="<?php echo $iurl;?>/img/logo.jpg" width="450" height="90" border="0" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></a></h1></div>
<div class="navigation">
<div class="navigation_center">
         <div class="navigation_text1"><a href="<?php echo $iurl; ?>/index.php" title="home">Home</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
	     <div class="navigation_text"><a href="<?php echo $iurl; ?>/introduction.php" title="introduction" >About us</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
	     <div class="navigation_text"><a href="<?php echo $iurl; ?>/news.php" title="news" >News</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
         <div class="navigation_text"><a href="<?php echo $iurl; ?>/product.php" title="product" >Product</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
		 <div class="navigation_text"><a href="<?php echo $iurl; ?>/message.php" title="message" >Message</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
         <div class="navigation_text"><a href="<?php echo $iurl; ?>/contactus.php" title="contact" >Contact</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
         <div class="navigation_text"><a href="<?php echo $iurl; ?>/recruitment.php" title="recruit" >Recruit</a></div>
         <div class="navigation_image"><img src="<?php echo $iurl;?>/images/daohang_image.gif" alt="<?php echo $name_website;?>" title="<?php echo $name_website;?>"/></div>
         <div class="navigation_text"><a href="skype:edward.huang80?chat" onclick="return skypeCheck();">Chat</a></div>
         
         
</div>
</div>
<div class="fx">
            <div class="fxt"><?php echo date("Y年n月j日 G:i:s");?></div>
</div>
<div class="top_swf" style="width:960px; margin-bottom:10px;">
		<script type="text/javascript" src="js/images_flash.js"></script>
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

