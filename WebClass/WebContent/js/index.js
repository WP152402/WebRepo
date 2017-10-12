$(document).ready(function () {
  function showLightBox() {
    $('#dark_bg').show();
    $('#dark_bg').fadeIn(500);
    $('#dark_bg').css('top', $(window).scrollTop());
    $('body').css('overflow', 'hidden');
  }
  function hideLightBox() {
    $('#dark_bg').hide();
    $('body').css('overflow', '');
  }
  function showLightBox2() {
    $('#dark_bg2').show();
    $('#dark_bg2').fadeIn(500);
    $('#dark_bg2').css('top', $(window).scrollTop());
    $('body').css('overflow', 'hidden');
  }
  function hideLightBox2() {
    $('#dark_bg2').hide();
    $('body').css('overflow', '');
  }
  $('#dark_bg').click(function () {
    hideLightBox();
  });
  $('#dark_bg2').click(function () {
    hideLightBox2();
  });
  $('#signin').click(function() {
    showLightBox();
  });
  $('#lightbox').click(function(event){
    event.stopPropagation();
  });
  $('#lightbox2').click(function(event){
    event.stopPropagation();
  });
  $('#signup').click(function() {
    showLightBox2();
  });
  });
