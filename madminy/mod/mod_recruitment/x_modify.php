<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

//登录数据列表
$del_a=safe($_GET["a"]);
$sql=mysql_query("select * from cms_recruitment_list where id=$del_a");
$info=mysql_fetch_array($sql);
$id=$info["id"]; 
$title=$info["title"]; 
$type=$info["type"]; 
$content=$info["content"]; 
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
<body>
<div class="main">
<form name="myform" method="post" action="x_modify_deal.php?cz=<?php echo $id;?>">
       <div class="main_x" style="background-color:#F1EFEF;">招聘管理 >> 修改招聘</div>
       <div class="main_x">招聘标题：<input type="text" name="title"style="width:500px;height:18px;color:#3E3A3A;" value="<?php echo $title;?>"></div>
       <div class="main_x">所属分类：
       <select name="type" size="1" style="color:#3E3A3A;">
                   <option selected="selected"><?php echo $type;?></option>
<?php
  $SQL=mysql_query("select * from cms_recruitment_type order by id desc"); 
  while($row = mysql_fetch_array($SQL))
  {
   $name = $row["name"]; 
   echo "<option>${name}</option>";                                          
  }
?> 
       </select>
       </div>
       <div class="main_x">招聘内容：</div>
       <div class="main_x"><textarea id="your_editor_id" name="content" cols="100" rows="8" style="width:98%;height:300px;"><?php echo $content;?></textarea></div>
       <div class="main_x"><input type="submit" value="确定" style="width:110px;height:24px;" onclick="return confirmOK()"><input type=reset value="重填" style="width:110px;height:24px;"></div>
</form> 
</div>
</body>
</html>