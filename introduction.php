<?php
include("config/conn.php");
include("config/config.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>，公司简介，详细内容。"> 
<meta name="description" content="<?php echo $name_website;?>">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/introduction.css" type="text/css"> 
<title>Introduction_<?php echo $name_website;?></title>
</head>
<body>
<?php include("head.php"); ?>
<div class="main_h1">
            
            <div class="main_right">
                    <div class="main_right_tm">Introduction</div>
                    <div class="main_right_nr">
					        <?php
					           $SQL=mysql_query("select content from cms_about order by id desc"); 
                               while($row = mysql_fetch_array($SQL))
		                       {
                               $content = $row["content"];
		                    	}
			                    echo $content;
		                    ?>
                   </div>
         </div>
</div>
<div class="ben" style="margin-top:5px;"></div>
<?php include("foot.php"); ?>
</body>
</html>