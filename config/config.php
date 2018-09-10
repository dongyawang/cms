<?php

//设定网站地址
$iurl="http://www.talent-electech.com";

//获取网站基本全局信息
$SystemSql=mysql_query("select email,tel,fax,qq,postal,address,website,name_website,icp,qita,time_create from cms_contactus");
$SystemInfo=mysql_fetch_array($SystemSql);
if($SystemInfo==false){ echo "获取网站基本全局信息出错!";}   
$temail=$SystemInfo["email"]; 
$tel=$SystemInfo["tel"]; 
$fax=$SystemInfo["fax"]; 
$qq=$SystemInfo["qq"]; 
$postal=$SystemInfo["postal"]; 
$address=$SystemInfo["address"]; 
$website=$SystemInfo["website"]; 
$name_website=$SystemInfo["name_website"]; 
$icp=$SystemInfo["icp"]; 
$qita=$SystemInfo["qita"]; 
$time_create=$SystemInfo["time_create"]; 
?>
