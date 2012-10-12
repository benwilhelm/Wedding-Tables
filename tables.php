<?php 

include 'include/db-connect.php' ;
include 'include/get-tables.php' ;

echo json_encode($tables) ;