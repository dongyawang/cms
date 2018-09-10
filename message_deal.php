<?php   
include("config/conn.php");
include("config/config.php");
//获取提交的各变量数据
$username = $_POST['username'];
$tel = $_POST['tel'];
$email = $_POST['email'];
$address =$_POST['address'];
$qq = $_POST['qq'];
$sex = $_POST['sex'];
$content = $_POST['content'];
$time_create=date("Y-m-d G:i:s");

//向数据库中插入数据
//set_time_limit(0);
// $count=1;
// while($count<=166){
//	 $UserName=date("Y-m-d G:i:s");
//     $sqllink = "insert into cms_message (username,tel,email,address,qq,sex,content,time_create) values ('$username','$tel','$email','$address','$qq','$sex','$content','$time_create')";
//     $sqldata = mysql_query($sqllink);
//	 $count++;
// }

$sqllink = "insert into cms_message (username,tel,email,address,qq,sex,content,time_create) values('$username','$tel','$email','$address','$qq','$sex','$content','$time_create')";
$sqldata = mysql_query($sqllink);

//提示信息
if($sqldata == TRUE)
        {
        echo "<script> alert('Succeed! We will process your message ASAP'); window.location.href='message.php';</script>";
        }
         else
        {
        echo "<script> alert('Sorry! Failed,pls do it again.'); window.location.href='message.php';</script>";
        }
?>
