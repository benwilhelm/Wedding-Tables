<?php
require_once 'include/db-connect.php' ;
$table_id = (int)$_POST['table_id'] ;
$guest_id = (int)$_POST['guest_id'] ;

$sql = "UPDATE bodies SET group_id='{$table_id}' WHERE id='{$guest_id}'" ;
$saved = $dbc->query($sql) ;

echo $saved ? 1 : 0 ;