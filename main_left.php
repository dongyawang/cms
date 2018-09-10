<?php
include("config/conn.php");
include("config/config.php");
?>
<div class="main_left">
     <div class="main_left_h"><div class="main_left_hx1"><div class="main_left_hx2">
        <div class="main_left_h1">导航列表>></div>    
        <div class="main_left_h2">
        <div class="main_left_h2_1"><a href="<?php echo $iurl; ?>/news_1.html" title="新闻中心"><img src="images/li.gif" width="9" height="9" border="0"/>&nbsp;&nbsp;1.新闻中心</a></div>
        <div class="main_left_h2_1"><a href="<?php echo $iurl; ?>/recruitment_1.html" title="人力资源"><img src="images/li.gif" width="9" height="9" border="0" />&nbsp;&nbsp;2.人力资源</a></div>
        <div class="main_left_h2_1"><a href="<?php echo $iurl; ?>/introduction.php" title="公司简介"><img src="images/li.gif" width="9" height="9"  border="0"/>&nbsp;&nbsp;3.公司简介</a></div>
        <div class="main_left_h2_1"><a href="<?php echo $iurl; ?>/contactus.php" title="联系方式"><img src="images/li.gif" width="9" height="9" border="0" />&nbsp;&nbsp;4.联系方式</a></div>
        <div class="main_left_h2_1"><a href="<?php echo $iurl; ?>/message.php" title="留言本站"><img src="images/li.gif" width="9" height="9"  border="0"/>&nbsp;&nbsp;5.留言本站</a></div>
        </div>
        </div></div></div>
       
		<div class="main_left_h3">
<div id="demo" style="overflow:hidden;height:458px;width:161px; border:0px solid #dde5bc; overflow:hidden;float:left">
<div id=demo1> 
<img src="<?php echo $iurl; ?>/images/hd1.jpg" width="161" height="160">
<img src="<?php echo $iurl; ?>/images/hd2.jpg" width="161" height="160"> 
<img src="<?php echo $iurl; ?>/images/hd3.jpg" width="161" height="160">
<img src="<?php echo $iurl; ?>/images/hd4.jpg" width="161" height="160">
</div>
<div id=demo2></div>
</div>
<script>
var speed=40
var demo=document.getElementById("demo");
var demo2=document.getElementById("demo2");
var demo1=document.getElementById("demo1");
demo2.innerHTML=demo1.innerHTML
function Marquee(){
if(demo2.offsetTop-demo.scrollTop<=0)
demo.scrollTop-=demo1.offsetHeight
else{
demo.scrollTop++
}
}
var MyMar=setInterval(Marquee,speed)
demo.onmouseover=function() {clearInterval(MyMar)}
demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
</script>  
         </div>
</div>