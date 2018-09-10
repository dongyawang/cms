<?php
@$usernameCMS=$_SESSION['usernameCMS'];
$lifeTime = 60 * 60 * 24;   // 
setcookie(session_name(), session_id(), time() + $lifeTime, "/");   
$sql=mysql_query("select * from xcenter_user where md5(md5(username))='$usernameCMS' and type='总管理员'");
	   $info=mysql_fetch_array($sql);
	   $usernamex=$info["username"];
	   if($info==false){
	die ("<script>alert('您没有访问权限，请先登录!');window.location.href='index.php';</script>");
}
?>