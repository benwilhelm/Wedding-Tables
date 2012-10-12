$(document).ready(function(){
  $('div.table ul').sortable({
    connectWith: "div.table ul" ,
    update: function(event,ui) {
      var tid = $(this).attr('data-table-id') ;
      var bds = $(this).sortable('toArray') ;
      var params = {'table_id':tid,'bodies':bds} ;
      console.log(params) ;
      $.post('update-table-ids.php',params) ;
    }
  }).disableSelection() ;
}) ;