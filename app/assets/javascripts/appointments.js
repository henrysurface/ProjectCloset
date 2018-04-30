/*global $*/


$(document).on("turbolinks:load", function(){
    
    
    var currentDate;
    var slot;
    var url = window.location.href;
    
    $( "#datepicker" ).datepicker({
      showOtherMonths: true,
      selectOtherMonths: true,
      dateFormat: "yy-mm-dd",
      onSelect: function(date) {
          currentDate =$(this).val();
      },
      beforeShowDay: function(date){ 
        $(".ui-datepicker").css('font-size', 20); 
        var day = date.getDay(); 
        return [day == 1 || day == 4,""];
      }
    });
    
    $(".btnc").on('click', function(){ 
      $(this).removeClass("off").addClass("on").parents().siblings().children().removeClass("on").addClass("off");
      $(this).removeClass("off").addClass("on").parents().parents().siblings().children().children().removeClass("on").addClass("off");
       slot = $(this).text();
    });
    

  

});