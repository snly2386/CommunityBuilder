# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(window).resize(function () { 
    $('body').css('padding-top', parseInt($('#main-navbar').css("height"))+10);
});

$(window).load(function () { 
    $('body').css('padding-top', parseInt($('#main-navbar').css("height"))+10);        
});