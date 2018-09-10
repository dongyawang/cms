<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
include('../../../function/safe.php');

//登录数据列表
$del_a=safe($_GET["a"]);
$sql=mysql_query("select * from cms_product where id=$del_a");
$info=mysql_fetch_array($sql);
$id=$info["id"]; 
$title=$info["title"]; 
$description=$info["description"]; 
$type=$info["type"]; 
$image_name=$info["image_name"]; 
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
        <div class="main_x" style="background-color:#F1EFEF;">
        <form name="form1" method="post" action="uppic_modify_deal.php?cz=<?php echo $id;?>" enctype="multipart/form-data">
                  <input name="images" type="file" id="images2" size="18">
                  <input type="hidden" name="MAX_FILE_SIZE" value="30000">
                  <input type="submit" name="Submit" value="提交">
         </form>
         </div>
         <div class="main_x" style="background-color:#F1EFEF;">产品管理 >> 产品信息修改</div>
         <div class="main_x">图片预览：<img src="../../../upfiles/product/<?php echo $image_name;?>" border="0" height="140" width="140"/></div>
         <form name="myform" method="post" action="x_modify_deal.php?cz=<?php echo $id;?>">
         <div class="main_x">产品标题： <input type="text" name="title"style="width:350px;height:18px;color:#3E3A3A;"  value="<?php echo $title;?>"></div>
         <div class="main_x">所属分类：
         <select name="type" size="1" style="color:#3E3A3A;">
                  <option selected="selected"><?php echo $type;?></option>
<?php
  $SQL=mysql_query("select * from cms_product_type order by id desc"); 
  while($row = mysql_fetch_array($SQL))
  {
   $name = $row["name"]; 
   echo "<option>${name}</option>";                                          
  }
?> 
         </select>
         </div>
         <div class="main_x">产品描述：</div>
         <div class="main_x"><textarea id="your_editor_id" name="content" cols="100" rows="8" style="width:98%;height:300px;"><?php echo $description;?></textarea></div>
         <div class="main_x"><input type="submit" value="确定" style="width:110px;height:24px;" onclick="return confirmOK()"><input type=reset value="重填" style="width:110px;height:24px;"></div>
         </form> 
</div>
</body>
</html>