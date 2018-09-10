<?php 
include("config/conn.php");
include("config/config.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="<?php echo $name_website;?>，联系方式。"> 
<meta name="description" content="<?php echo $name_website;?>联系方式内容。">
<link rel=stylesheet href="<?php echo $iurl; ?>/css/contactus.css" type="text/css"> 
<title>Contact us </title>
</head>
<body>
<?php include("head.php"); ?>
<div class="main_h1">
       
        <div class="main_right">
                <div class="main_right_tm">Contact Us</div>
                <div class="main_right_nr">
                        <?php /*?><p>联系方式</p>
                        <p> 公司邮箱：<?php echo $temail;?></p>
                        <p>电话：<?php echo $tel;?></p>
                        <p>传真：<?php echo $fax;?></p>
                        <p><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo $qq;?>&site=qq&menu=yes">QQ：<?php echo $qq;?><img border="0" src="http://wpa.qq.com/pa?p=2:83736127:44" alt="点击这里给我发消息" title="点击这里给我发消息"></a></p>
                        <p>邮政编码：<?php echo $postal;?></p>
                        <p>联系地址：<?php echo $address;?> </p>
                        <p> <a href="http://www.hengmang.com" target="_blank">公司网址：<?php echo $website;?></a></p><?php */?>
                        <br />
                        <p><?php echo $qita;?></p>
               </div>
        </div>
</div>
<div class="ben" style=" margin-top:5px;"></div>
<?php include("foot.php"); ?>
</body>
</html>