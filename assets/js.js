$(document).ready(function(){
  $('div.table ul').sortable({
    connectWith: "div.table ul" ,
    update: function(event,ui) {
      var tid = $(this).attr('data-table-id') ;
      var bds = $(this).sortable('toArray') ;
      var params = {'table_id':tid,'bodies':bds} ;
      console.log(params) ;
      $.post('update-table-ids.php',params) ;
      
      var count = $(this).find('li').length ;
      if (count > 10) {
        $(this).addClass('overloaded') ;
      } else {
        $(this).removeClass('overloaded') ;
      }
    },
    
    over: function(event,ui) {
      $(this).addClass('hover') ;
    },
    out: function(event,ui) {
      $(this).removeClass('hover') ;
    }
  }).disableSelection() ;
}) ;