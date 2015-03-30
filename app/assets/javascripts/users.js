$(document).ready(function(){
	 $('.smooth-scroll a').click(function(){
      $('html, body').animate({
          scrollTop: $( $.attr(this, 'href') ).offset().top
      }, 400);
      return false;
  });

})