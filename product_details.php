<?php
include("config/conn.php");
include("config/config.php");
include('function/cut.php');
$cz=$_GET["cz"];
$NewsSql=mysql_query("select id,title,description,image_name,type,time_create from cms_product where id=$cz");
$NewsInfo=mysql_fetch_array($NewsSql);
$title = $NewsInfo["title"]; 
$description1 = $NewsInfo["description"]; 
$image_name = $NewsInfo["image_name"]; 
$type = $NewsInfo["type"]; 
$time_create = $NewsInfo["time_create"]; 
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>，产品展示，产品描述。"> 
<meta name="description" content="<?php echo $name_website;?>，产品展示,产品描述。">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/product_details.css" type="text/css">
<title>Product Details</title>
</head>
<body>
<?php include("head.php"); ?>
<div class="main_h1">
        
        <div class="main_right">
                <div class="main_right_tm">Product Show>><?php echo $title;?>>></div>
                <div class="main_right_nr">
                        <div class="main_content_foot"><?php echo "<img src=\"upfiles/product/$image_name\"/>";?></div>
                        <div class="main_content_foot_x">Features>><br/><?php echo $description1;?></div>
                 </div>       
        </div>
</div>
<div class="ben" style="margin-top:5px;"></div>
<?php include("foot.php"); ?>
</body>
</html>