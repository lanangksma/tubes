$(document).ready(function(){
    $('#menu').click(function(){
        $(this).toggleClass('bx-x')
        $('header').toggleClass('toggle')
    });

    $(window).on('scroll load',function(){
        $('#menu').removeClass('bx-x')
        $('header').removeClass('toggle')
    })

    // smooth scrolling 

  $('a[href*="#"]').on('click',function(e){
    e.preventDefault();
    $('html, body').animate({
      scrollTop : $($(this).attr('href')).offset().top,
    },
      500, 
      'linear'
    );
  });
});