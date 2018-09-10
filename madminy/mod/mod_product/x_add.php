<?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
?>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel=stylesheet href="../../css/editor.css" type="text/css">
<title>无标题文档</title>
<script charset="utf-8" src="../../../editor/kindeditor.js"></script>
<script>
        KE.show({
                id : 'your_editor_id'
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
</head>
<body>
<div class="main">
        <div class="main_x" style="background-color:#F1EFEF;">产品管理 >> 添加产品</div>
        <div class="main_x">图片上传：
        <form name="form1" method="post" action="uppic_add_deal.php" enctype="multipart/form-data">
                   <input name="images" type="file" id="images2" size="18">
                   <input type="hidden" name="MAX_FILE_SIZE" value="30000">
                   <input type="submit" name="Submit" value="提交">
        </form>
        </div>
</div>
</body>
</html>