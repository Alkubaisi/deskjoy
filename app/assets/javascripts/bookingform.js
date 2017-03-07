var initTop = $('#new-booking-form').offset().top;
var initWidth = $('#new-booking-form').width() + 40; // 20 + 20 for padding
var initRight = $('#new-booking-form').offset().right;

$(window).scroll(function() {

  if($(window).width() >= 768 && $('#new-booking-form')) {
    var currentScroll = $(window).scrollTop();

    if (currentScroll < initTop) {
      $('#new-booking-form').css({
        position: 'static',
        width: initWidth
      });
    } else {

      $('#new-booking-form').css({
        position: 'fixed',
        top: 0,
        right: initRight,
        width: initWidth
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

