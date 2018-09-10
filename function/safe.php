<?php
function safe($content) {
    $check=preg_match('/select|insert|update|delete|\'|\\*|\*|\.\.\/|\.\/|union|into|load_file|outfile/i',$content);
    if($check){
        echo "对不起，请检查您输入的内容中是否含有非法字符！";
        exit();
    }else{
        return trim($content);
    }
}
?>