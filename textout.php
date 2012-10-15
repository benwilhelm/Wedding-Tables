<?php 

header('Content-Type: text/plain');
header('Content-Disposition: attachment; filename: "wedding-tables.txt";');

require_once "include/db-connect.php" ;
require_once "include/get-tables.php" ;

foreach ($tables as $table) {
  echo "\n{$table['table_name']}\n" ;
  echo "================================\n" ;
  
  if ($table['guests']): foreach ($table['guests'] as $guest) {
    echo $guest['name'] . "\n" ;
  } endif ;
}

exit ;