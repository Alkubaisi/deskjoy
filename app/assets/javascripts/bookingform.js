$(window).scroll(function() {
  if($(window).width() >= 768 && $('#new-booking-form')) {
    var currentScroll = $(window).scrollTop();
    var currentRightPos = $(window).width() - ($('#new-booking-form').offset().left + $('#new-booking-form').width() + 40) // 20 + 20 for padding
    if (currentScroll >= $('#new-booking-form').offset().top) {
      var currentWidth = $('#new-booking-form').width() + 40 // 20 + 20 for padding
      $('#new-booking-form').css({
        position: 'fixed',
        top: 0,
        right: 134,
        width: currentWidth
      });
    } else {
      $('#new-booking-form').css({
        position: 'static',
        width: currentWidth
      });
    }
  }
});


$('#bookingdate-from').datepicker({
  format: "dd/mm/yyyy",
  autoclose: true,
  todayHighlight: true
  // defaultDate: new Date(),
  // disabledDates: [],
  // sideBySide: true,
  // minDate: new Date(),
});



$('#bookingdate-to').datepicker({
  format: "dd/mm/yyyy",
  autoclose: true,
  todayHighlight: true
  // defaultDate: new Date(),
  // disabledDates: [],
  // sideBySide: true,
  // minDate: new Date(),
  // useCurrent: false,
});

