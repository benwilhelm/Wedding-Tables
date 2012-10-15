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
    <p><a href="textout.php">Download txt</a></p>
    <?php
    $i = 0 ;
    foreach ($tables as $table_id => $table) {
    
      $dl =  "<div class='table col-{$i}' id='table_{$table_id}'>" ;
      $dl .= "<h3>{$table['table_name']}</h3>" ;
      $dl .= "<ul data-table-id='{$table_id}' class='{$ul_class}'>" ;
      $dl .= "</ul>" ;
      $dl .= "</div>" ;
      
      $dl .= $table_id == 1 ? "<div class='clear'></div>" : '' ;
      
      echo $dl ;
      $i = $i >= 3 ? 1 : $i + 1;
    }
    ?>	
	</div><!-- #container -->
	</body>
</html>

