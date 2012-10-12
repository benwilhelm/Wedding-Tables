<?php
require_once 'include/db-connect.php' ;

$table_id = (int)$_POST['table_id'] ;
$bodies = $_POST['bodies'] ;

foreach ($bodies as $idx => $body_id) {
  $a = explode('_',$body_id) ;
  $body_id = (int)$a[sizeof($a) - 1] ;
  $disp_order = (int)$idx ;
  
  $sql = "UPDATE bodies SET group_id='{$table_id}', display_order='{$disp_order}' WHERE id='{$body_id}'" ;
  $rslts[] = $dbc->query($sql) ;
}

