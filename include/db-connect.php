<?php

if ($_SERVER['REMOTE_ADDR'] == '127.0.0.1') {
  $host = 'localhost' ;
  $user = 'root' ;
  $pass = 'root' ;
  $db = 'sandbox_groupme' ;
} else {
  $host = 'mysql.jenandbenswedding.com' ;
  $user = 'jenandbensweddin' ;
  $pass = 'XgAdQgy2' ;
  $db = 'wedding_tables' ;
}

$dbc = mysqli_connect($host, $user, $pass, $db) ;