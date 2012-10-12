var listener ;
startListening() ;

$(document).ready(function(){
  $('div.table ul').sortable({
    connectWith: "div.table ul" ,
    start: function(event,ui) {
      stopListening() ;
    },
    update: function(event,ui) {
      var tid = $(this).attr('data-table-id') ;
      var bds = $(this).sortable('toArray') ;
      var params = {'table_id':tid,'bodies':bds} ;
      $.post('update-table-ids.php',params) ;
      $(this).checkLoad() ;
    },
    stop: function (event,ui) {
      startListening() ;
    },
    over: function(event,ui) {
      $(this).addClass('hover') ;
    },
    out: function(event,ui) {
      $(this).removeClass('hover') ;
    }
  }).disableSelection() ;
  
}) ;


$.fn.checkLoad = function() {
  var count = this.find('li').length ;
  if (count > 10) {
    $(this).addClass('overloaded') ;
  } else {
    $(this).removeClass('overloaded') ;
  }  
}

function startListening() {
  listener = setInterval(function(){
    console.log('  poll') ;
    var tables ;
    $.get('tables.php',function(data){
      tables = $.parseJSON(data) ;
      for (var table_id in tables) {
        var table = tables[table_id] ;
        var list_id = "table_" + table_id ;
        var $list = $('#' + list_id + ' ul') ;
        $list.html('') ;
        if (typeof table.guests != 'undefined') {
          for (var idx=0; idx<table.guests.length; idx++) {
            var guest = table['guests'][idx] ;
            var guest_li = "<li id='guest_" + guest.id + "' data-guest-id='" + guest.id + "' >" ;
            guest_li += guest.name ;
            guest_li += "</li>" ;
            $list.append(guest_li) ;
          }
        }
        $list.checkLoad() ;
      }
    }) ;
  },1000) ;
}

function stopListening() {
  clearInterval(listener) ;
  listener = false ;
}