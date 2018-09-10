<?php   
session_start();  
header("Content-Type: text/html;charset=utf-8");
unset($_SESSION['usernameCMS']);   
echo "<script>alert('您已经安全退出本系统!');window.location.href='../index.php';</script>";
?> 