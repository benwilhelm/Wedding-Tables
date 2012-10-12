<?php 

include_once "include/db-connect.php" ;
include_once "include/get-tables.php" ;

?>


<html>
	<head>
		<title>Wedding Tables!</title>
		<link href="assets/style.css" rel="stylesheet" type="text/css" />
		<script src="assets/jquery-1.8.2.min.js" type="text/javascript"></script>
		<script src="assets/jquery-ui-1.9.0.custom.min.js" type="text/javascript"></script>
		<script src="assets/js.js" type="text/javascript"></script>
	</head>
	<body>

  <div id="container">
    <?php
    foreach ($tables as $table_id => $table) {
      $dl =  "<dl class='table' id='table_{$table_id}'>" ;
      $dl .= "<dt>{$table['table_name']}</dt>" ;
      if ($table['guests']) : foreach ($table['guests'] as $guest) {
        $gid = $guest['id'] ;
        $dl .= "<dd id='guest_{$gid}'>{$guest['name']}</dd>" ;
      } endif ;
      $dl .= "</dl>" ;
      
      $dl .= $table_id == 1 ? "<div class='clear'></div>" : '' ;
      
      echo $dl ;
    }
    ?>	
	</div><!-- #container -->
	</body>
</html>

