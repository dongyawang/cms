<?php
include("config/conn.php");
include("config/config.php");
include('function/cut.php');
$cz=$_GET["cz"];
$NewsSql=mysql_query("select id,title,content from cms_recruitment_list where id=$cz");
$NewsInfo=mysql_fetch_array($NewsSql);
$title = $NewsInfo["title"]; 
$content = $NewsInfo["content"];
$content =cut($content,"926",'...'); 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>，职位详细信息"> 
<meta name="description" content="<?php echo $name_website;?>，人力资源招聘，招聘职位为<?php echo $title;?>">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/recruitment_details.css" type="text/css">
<title>Job Description</title>
</head>
<body>
<?php include("head.php"); ?>
<div class="main_h1">
        
        <div class="main_right">
                <div class="main_right_tm">Job list</div>
                <div class="main_right_nr">
                         <div class="main_right_title">details_<?php echo $title;?></div>
                         <div class="main_right_content"><?php echo $content;?></div>
                         </div>
        </div>
</div>
<div class="ben" style="margin-top:5px;"></div>
<?php include("foot.php"); ?>
</body>
</html>