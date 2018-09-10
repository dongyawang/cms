<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
//获取网站简介内容
$sql=mysql_query("select * from cms_about limit 0 ,1");
$info=mysql_fetch_array($sql);
$id=$info["id"];
$content=$info["content"];
$time_create=$info["time_create"];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel=stylesheet href="../../css/editor.css" type="text/css">
<title>无标题文档</title>
<script charset="utf-8" src="../../../editor/kindeditor.js"></script>
<script charset="utf-8" src="../../../editor/lang/zh_CN.js"></script>

<script>
        var editor;
        KindEditor.ready(function(K) {
                editor = K.create('#your_editor_id', {
                });
        });
</script>



<script type="text/javascript" language="javascript">
<!-- 
function confirmOK() 
{ 
    if(confirm('确定要执行此操作吗?'))
         { 
         return true; 
    } 
        return false; } 
//--> 

</script> 
<STYLE type=text/css>
<!--
body {font-size:10pt}
td {font-size:10pt}
-->
</STYLE>
<SCRIPT language=JavaScript type=text/JavaScript>
function format(){
var body = "\n"+document.getElementById("thebody").value;
body = body.replace(/ |　/ig,"");
body = body.replace(/\r\n/ig,"\n");
body = body.replace(/\n\n/ig,"\n");
body = body.replace(/\n\n/ig,"\n");
body = body.replace(/\n\n/ig,"\n");
body = body.replace(/\n\n/ig,"\n");
body = body.replace(/\n/ig,"\n\n　　");
body = body.replace("\n\n","");
document.getElementById("thebody").value=body;
}
</script>
</head>
<body>
<div class="main">
<form name="myform" method="post" action="modify_deal.php?cz=<?php echo $id;?>">
        <div class="main_x" style="background-color:#F1EFEF;">公司简介 >> 公司简介</div>
        <div class="main_x">公司简介：</div>
        <div class="main_x"><textarea id="your_editor_id" name="content" cols="100" rows="8" style="width:98%;height:300px;"><?php echo $content;?></textarea></div>
        <div class="main_x"><input type="submit" value="确定" style="width:110px;height:24px;" onclick="return confirmOK()"><input type=reset value="重填" style="width:110px;height:24px;"></div>
</form> 
</div>
</body>
</html>