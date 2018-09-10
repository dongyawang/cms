<?php 
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../../../config/conn.php');
include('../../permission.php');
        $cz=$_GET["cz"];
		$temail= trim($_POST['email']);
		$temail= str_replace( "'", "",$temail);
		$tel= trim($_POST['tel']);
		$tel= str_replace( "'", "",$tel);
		$fax= trim($_POST['fax']);
		$fax= str_replace( "'", "",$fax);
		$qq= trim($_POST['qq']);
		$qq= str_replace( "'", "",$qq);
		$postal= trim($_POST['postal']);
		$postal= str_replace( "'", "",$postal);
		$address= trim($_POST['address']);
		$address= str_replace( "'", "",$address);
		$website= trim($_POST['website']);
		$website= str_replace( "'", "",$website);
		$name_website= trim($_POST['name_website']);
		$name_website= str_replace( "'", "",$name_website);
        $icp= trim($_POST['icp']);
		$icp= str_replace( "'", "",$icp);
		$qita= trim($_POST['qita']);
		$qita= str_replace( "'", "",$qita);
        $time_create=date("Y-m-d G:i:s");
        $query=mysql_query("update cms_contactus set email='$temail',tel='$tel',fax='$fax',qq='$qq',postal='$postal',address='$address',website='$website',name_website='$name_website',icp='$icp',qita='$qita',time_create='$time_create' where id=$cz");
        if($query==true){ echo "<script>alert('修改成功!');window.location.href='index.php';</script>";
        }else{echo "<script>alert('修改失败!');window.location.href='index.php';</script>";}
?>