$(document).ready(function(){
    $('#menu').click(function(){
        $(this).toggleClass('bx-x')
        $('header').toggleClass('toggle')
    });

    $(window).on('scroll load',function(){
        $(this).removeClass('bx-x')
        $('header').removeClass('toggle')
    })
});