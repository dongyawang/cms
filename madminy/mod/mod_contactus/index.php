<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
?>
<?php
$iurl="http://127.0.0.1/one";
$sql=mysql_query("select * from cms_contactus");
$info_sql=mysql_fetch_array($sql);
if($info_sql==false){ echo "获取网站基本全局信息出错!";}   
$id=$info_sql["id"]; 
$temail=$info_sql["email"]; 
$tel=$info_sql["tel"]; 
$fax=$info_sql["fax"]; 
$qq=$info_sql["qq"]; 
$postal=$info_sql["postal"]; 
$address=$info_sql["address"]; 
$website=$info_sql["website"];
$name_website=$info_sql["name_website"]; 
$icp=$info_sql["icp"]; 
$qita=$info_sql["qita"];
$time_create=$info_sql["time_create"]; 
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
       <div class="main_x" style="background-color:#F1EFEF;">系统信息 >> 联系方式>>信息修改>></div>
       <div class="main_x">公司邮箱：<input type="text" name="email"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $temail;?>"></div>
       <div class="main_x">联系电话：<input type="text" name="tel"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $tel;?>"></div>
       <div class="main_x">公司传真：<input type="text" name="fax"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $fax;?>"></div>

       <div class="main_x">邮政编码：<input type="text" name="postal"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $postal;?>"></div>
       <div class="main_x">联系地址：<input type="text" name="address"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $address;?>"></div>
       <div class="main_x">公司网址：<input type="text" name="website"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $website;?>"></div>
       <div class="main_x">网站名称：<input type="text" name="name_website"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $name_website;?>"></div>
       <div class="main_x">备案信息：<input type="text" name="icp"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $icp;?>"></div>
       <div class="main_x">联系Q Q：<input type="text" name="qq"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $qq;?>"></div>
       <div class="main_x">其它内容编辑：</div>
       <div class="main_x"><textarea id="your_editor_id" name="qita" cols="100" rows="8" style="width:98%;height:300px;"><?php echo $qita;?></textarea></div>
       <div class="main_x"><input type="submit" value="确定修改" style="width:200px;height:24px;" onclick="return confirmOK()"></div>
</form> 
</div>
</body>
</html>