<?php

$sql = "SELECT `groups`.name as table_name, 
        `groups`.id as table_id, 
        bodies.*
        FROM `groups` LEFT JOIN bodies
         ON `groups`.id = bodies.group_id
        ORDER BY groups.display_order, display_order" ;
$rslt = $dbc->query($sql) ;
while ($body = $rslt->fetch_array()) {
  $tables[$body['table_id']]['table_name'] = $body['table_name'] ;
  if ($body['name']) {
    $tables[$body['table_id']]['guests'][] = $body ;
  }
}

