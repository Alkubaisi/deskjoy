var bookingForm = $('.newspacewrapper').offset().top
$(window).scroll(function() {
  if($(window).width() >= 768) {
    var currentScroll = $(window).scrollTop();
    if (currentScroll >= bookingForm) {
      var currentWidth = $('.newspacewrapper').width() + 40 // 20 + 20 for padding
      var currentRightPos = $(window).width() - ($('.newspacewrapper').offset().left + $('.newspacewrapper').width() + 40) // 20 + 20 for padding
      $('.newspacewrapper').css({
        position: 'fixed',
        top: 0,
        right: currentRightPos,
        width: currentWidth
      });
    } else {
      $('.newspacewrapper').css({
        position: 'static',
        width: currentWidth
      });
    }
  }
});

$('#bookingdate-from').datetimepicker({
  format: "DD/MM/YYYY HH:mm",
  defaultDate: new Date(),
  disabledDates: [],
  sideBySide: true,
});

$('#bookingdate-to').datetimepicker({
  format: "DD/MM/YYYY HH:mm",
  defaultDate: new Date(),
  disabledDates: []
});
