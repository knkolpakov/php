<?php
$date = date('Y');
$html = file_get_contents('tmp.html');
$html = str_replace('{Date}', $date, $html);
echo $html;
?>