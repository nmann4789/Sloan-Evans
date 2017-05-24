if($('.homepage').length>0){
  /*document.getElementById('hero-video').addEventListener('ended',restartVideo,false);
  function restartVideo(e) {
    var heroVideo = document.getElementById('hero-video');
    heroVideo.currentTime=0;
    $('#hero-video').removeClass('playing');
    $('.watch-overlay').addClass('show');
  }*/
}

$(document).ready(function(){
  if($('.homepage').length>0) {
    $('#loader .line').addClass('open');
    setTimeout(function () {
      $('#loader').removeClass('open');
      $('body').removeClass('loading');
      var heroVideo = document.getElementById('hero-video');
      heroVideo.play();
    }, 2000);

    $('.hero video').on('click', function () {
      var heroVideo = document.getElementById('hero-video');
      $(this).toggleClass('playing');
      if ($(this).hasClass('playing')) {
        var heroVideo = document.getElementById('hero-video');
        heroVideo.play();
      } else {
        var heroVideo = document.getElementById('hero-video');
        heroVideo.pause();
      }
    });
  }

  if($('.videos iframe').length > 0){
    var $videoWidth = $('.videos iframe').width();
    var $videoHeight = (9/16)*$videoWidth;
    $('.videos iframe').css({height:$videoHeight+"px"});
    $(window).resize(function(){
      var $rvideoWidth = $('.videos iframe').width();
      var $rvideoHeight = (9/16)*$rvideoWidth;
      $('.videos iframe').css({height:$rvideoHeight+"px"});
    })
  }


});