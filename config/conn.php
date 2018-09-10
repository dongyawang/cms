<?php

//连接数据库
$dblink=mysql_pconnect("localhost","tbhdya03","dongya100"); //数据库IP、数据库用户名、数据库密码
mysql_select_db("tbhdya03",$dblink); //数据库名称
mysql_query("set names utf8"); //数据库编码
?>
