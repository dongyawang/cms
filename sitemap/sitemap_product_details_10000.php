<?php
header("Content-Type: text/html;charset=utf-8");
include("../config/conn.php"); 

$sql=mysql_query("select id from cms_product where id>0 and (`id`<1001) order by id asc"); 
  while($row = mysql_fetch_array($sql))
  {
   $id = $row["id"];    
   echo htmlspecialchars("http://www.caiyixing.com/product_details_$id.html\n"); 
  }
?>