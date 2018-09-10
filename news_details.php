<?php
include("config/conn.php");
include("config/config.php");
include('function/cut.php');
$cz=$_GET["cz"];
$NewsSql=mysql_query("select id,title,content from cms_news_list where id=$cz");
$NewsInfo=mysql_fetch_array($NewsSql);
$title = $NewsInfo["title"]; 
$title =cut($title,"30",'...');
$content = $NewsInfo["content"]; 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>，新闻列表"> 
<meta name="description" content="<?php echo $name_website;?>，描述，详细新闻。">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/news_details.css" type="text/css"> 
<title>News <?php echo $name_website;?></title>
</head>
<body>
<?php include("head.php"); ?>
<div class="main_h1">
     
        <div class="main_right">
                <div class="main_right_tm"><?php echo $title;?></div>
                <div class="main_right_nr"><?php echo $content;?></div>
        </div>
</div>        
<div class="ben"></div>
<?php include("foot.php"); ?>
</body>
</html>
