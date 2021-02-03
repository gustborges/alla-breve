$(document).ready(function(){
  $('#counter').html($('#count-me').val().replace(/\n/g, "\n\r").length);
  $('#counter').html($(this).val().replace(/\n/g, "\n\r").length);
});


$(document).ready(function(){
    $('#present').mouseenter(function(){
        alert("MouseEnter!"); // This will create an alert box
        console.log("MouseEnter!"); // This will log to the JS console on your browser which is a bit nicer to read than alerts, you do not need both, just preference
        $(this).fadeIn('fast',1);
    }
    $('#present').mouseleave(function(){
        alert("MouseLeave!"); // This will create an alert box
        console.log("MouseLeave!");
        $(this).fadeIn('fast',0.5);
    }
});
