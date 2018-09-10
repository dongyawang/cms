<?php
include("config/conn.php");
include("config/config.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>，留言本站"> 
<meta name="description" content="<?php echo $name_website;?>留言本站提交信息。">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/message.css" type="text/css"> 
<title>Leave a message to <?php echo $name_website;?></title>
</head>
<body>
<?php include("head.php"); ?>
<div class="main_h1">
        
        <div class="main_right">
                 <div class="main_right_tm">Leave a message>></div>
                  <div class="main_right_nr">
                  <form name="form" method="post" action="message_deal.php" onsubmit="return check();">
                     Name：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="text" name="username" style="width:260px;height:16px; border-style:solid; border-width:1px; border-color:#A2BBC0;"><br/><br/>
                     Tel：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="text" name="tel" style="width:260px;height:16px;border-style:solid; border-width:1px; border-color:#A2BBC0;"><br/><br/>
                     Email：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="text" name="email" style="width:260px;height:16px;border-style:solid; border-width:1px; border-color:#A2BBC0;"><br/><br/>
                     Address：&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="text" name="address" style="width:260px;height:16px;border-style:solid; border-width:1px; border-color:#A2BBC0;"><br/><br/>
                     Skype/QQ：&nbsp;
                     <input type="text" name="qq" style="width:260px;height:16px;border-style:solid; border-width:1px; border-color:#A2BBC0;"><br/><br/>
                     
                     Content：
                     <textarea name="content" cols="60" rows="10" style="border-style:solid; border-width:1px; border-color:#A2BBC0"></textarea><br/><br/><br/>
                     <input type="submit" value="submit" style="width:110px;height:26px;border-style:solid; border-width:1px; border-color:#A2BBC0;"> <input type=reset value="reset"  style="width:110px;height:26px;border-style:solid; border-width:1px; border-color:#A2BBC0;">
                </form>   
                </div>                                     
        </div>
</div>
<div class="ben" style=" margin-top:5px;"></div>
<?php include("foot.php"); ?>

</body>
</html>