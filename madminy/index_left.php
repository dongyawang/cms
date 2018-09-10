 <?php
session_start();
header("Content-Type: text/html;charset=utf-8");
include('../config/conn.php');
include('permission.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>内容管理系统模块管理主页面</title>
<link rel=stylesheet href="css/index_left.css" type="text/css">
<script language="javascript" src="../js/daohang.js"></script> 
</head>
<body>
<ul id="menu">
      <li class="item"><a href="javascript:void(0)" class="title" name="1">※ 系统页面</a>
           <ul id="opt_1" class="optiton">
                 <li><a href="mod/mod_system/index.php" target="content">系统信息</a></li>
                 <li><a href="mod/mod_system/system_account_add.php" target="content">添加帐号</a></li>
                 <li><a href="mod/mod_system/system_account.php" target="content">帐号列表</a></li>
            </ul>
      </li>
      <li class="item"><a href="javascript:void(0)" class="title" name="2">※ 公司简介</a>
           <ul id="opt_2" class="optiton">
                 <li><a href="mod/mod_about/index.php" target="content">公司简介</a></li>
           </ul>
       </li>
       <li class="item"><a href="javascript:void(0)" class="title" name="3">※ 新闻管理</a>
           <ul id="opt_3" class="optiton">
                   <li><a href="mod/mod_news/type_list.php" target="content">新闻分类</a></li>
                   <li><a href="mod/mod_news/type_add.php" target="content">添加分类</a></li>
                   <li><a href="mod/mod_news/x_list.php" target="content">新闻列表</a></li>
                   <li><a href="mod/mod_news/x_add.php" target="content">添加新闻</a></li>
           </ul>
       </li>
      <li class="item"><a href="javascript:void(0)" class="title" name="4">※ 产品管理</a>
           <ul id="opt_4" class="optiton">
                   <li><a href="mod/mod_product/type_list.php" target="content">分类列表</a></li>
                   <li><a href="mod/mod_product/type_add.php" target="content">增加分类</a></li>
                   <li><a href="mod/mod_product/x_list.php" target="content">产品列表</a></li>
                   <li><a href="mod/mod_product/x_add.php" target="content">添加产品</a></li>
           </ul>
       </li>
       <li class="item"><a href="javascript:void(0)" class="title" name="5">※ 留言管理</a>
           <ul id="opt_5" class="optiton">
                 <li><a href="mod/mod_message/index.php" target="content">留言列表</a></li>
           </ul>
       </li>
      <li class="item"><a href="javascript:void(0)" class="title" name="6">※ 详细信息</a>
           <ul id="opt_6" class="optiton">
                 <li><a href="mod/mod_contactus/index.php" target="content">修改详情</a></li>
           </ul>
       </li>
       <li class="item"><a href="javascript:void(0)" class="title" name="7">※ 招聘管理</a>
           <ul id="opt_7" class="optiton">
                     <li><a href="mod/mod_recruitment/x_list.php" target="content">招聘列表</a></li>
                     <li><a href="mod/mod_recruitment/x_add.php" target="content">添加招聘</a></li>
                     <li><a href="mod/mod_recruitment/type_list.php" target="content">分类列表</a></li>
                     <li><a href="mod/mod_recruitment/type_add.php" target="content">添加分类</a></li>
           </ul>
       </li>
       <li class="item"><a href="javascript:void(0)" class="title" name="8">※ 友情链接</a>
           <ul id="opt_8" class="optiton">
                      <li><a href="mod/mod_link/link_list.php" target="content">链接列表</a></li>
                      <li><a href="mod/mod_link/link_add.php" target="content">添加链接</a></li>
           </ul>
              </li>
              <li class="item"><a href="javascript:void(0)" class="title" name="10">※ 站内公告</a>
           <ul id="opt_10" class="optiton">
                      <li><a href="mod/mod_post/index.php" target="content">公告修改</a></li>
           </ul>
       </li>
</ul>
</body>
</html>