<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include("../../../config/conn.php");
include('../../permission.php');
include("../../../config/config.php");
?> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel=stylesheet href="../../css/main.css" type="text/css">
<title>无标题文档</title>
</head>
<body>
<?php
$sql=mysql_query("select email,tel,postal,address,website,name_website,icp from cms_contactus");
$info_sql=mysql_fetch_array($sql);
if($info_sql==false){ echo "获取网站基本全局信息出错!";}   
$aemail=$info_sql["email"]; 
$tel=$info_sql["tel"]; 
$postal=$info_sql["postal"]; 
$address=$info_sql["address"]; 
$website=$info_sql["website"]; 
$name_website=$info_sql["name_website"]; 
$icp=$info_sql["icp"]; 
?>
<table style="color:#845622;">
           <tr>
                  <td colspan="2" style="background-color:#F1EFEF;">系统信息 >> 系统信息</td>
           </tr>
           <tr>
                  <td>网站名称：</td>
                  <td><?php echo $name_website;?></td>
           </tr>
           <tr>
                 <td>公司网址：</td>
                 <td><?php echo $website;?></td>
           </tr>
           <tr>
                 <td>电子邮箱：</td>
                 <td><?php echo $aemail;?></td>
           </tr>
           <tr>
                 <td>联系电话：</td>
                 <td><?php echo $tel;?></td>
           </tr>
           <tr>
                 <td>传真号码：</td>
                 <td><?php echo $tel;?></td>
           </tr>
           <tr>
                 <td>邮政编码：</td>
                 <td><?php echo $postal;?></td>
           </tr>
           <tr>
                 <td>备案信息：</td>
                 <td><?php echo $icp;?></td>
           </tr>
           <tr>
                 <td>详细地址：</td>
                 <td><?php echo $address;?></td>
           </tr>
           <tr>
                  <td style="background-color:#F1EFEF;">获取当前ip：</td>
                  <td><?php echo @gethostbyname($_SERVER['SERVER_NAME']);?></td>
            </tr>
            <tr>
                  <td style="background-color:#F1EFEF;">PHP版本：</td>
                  <td><?php echo phpversion();?></td>
            </tr>
            <tr>
                  <td style="background-color:#F1EFEF;">计算机名称</td>
                  <td><?php echo php_uname('n');?></td>
            </tr>
            <tr>
                  <td style="background-color:#F1EFEF;">服务器版本：</td>
                  <td><?php echo $_SERVER['SERVER_SOFTWARE'];?></td>
            </tr>
            <tr>
                  <td style="background-color:#F1EFEF;">web端口：</td>
                  <td><?php echo $_SERVER['SERVER_PORT'];?></td>
            </tr>
</table>
</body>
</html>