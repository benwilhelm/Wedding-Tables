var listener ;
var pending = {} ;
startListening() ;

$(document).ready(function(){
  setHandlers() ;  
}) ;


$.fn.checkLoad = function() {
  var count = this.find('li').length ;
  if (count == 10) {
    $(this).addClass('capacity') ;
    $(this).removeClass('overloaded') ;
  } else if (count > 10) {
    $(this).addClass('overloaded') ;
    $(this).removeClass('capacity') ;
  } else {
    $(this).removeClass('overloaded capacity') ;
  }  
}

function startListening() {
  clearInterval(listener) ;
  listener = setInterval(function(){
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
      setHandlers() ;
    }) ;
  },1000) ;
}

function stopListening() {
  clearInterval(listener) ;
  listener = false ;
}

function setHandlers() {
  $('div.table ul').sortable({
    connectWith: "div.table ul" ,
    start: function(event,ui) {
      stopListening() ;
    },
    update: function(event,ui) {
      var $list = $(this) ;
      var tid = $(this).attr('data-table-id') ;
      var bds = $(this).sortable('toArray') ;
      var params = {'table_id':tid,'bodies':bds} ;
      $.post('update-table-ids.php',params,function(data){
        startListening() ;
        $list.checkLoad() ;
      }) ;
    },
    over: function(event,ui) {
      $(this).addClass('hover') ;
    },
    out: function(event,ui) {
      $(this).removeClass('hover') ;
    }
  }).disableSelection() ;
}