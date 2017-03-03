var bookingForm = $('#new-booking-form').offset().top
$(window).scroll(function() {
  console.log("dom is ready")
  if($(window).width() >= 768) {
    var currentScroll = $(window).scrollTop();
    var currentRightPos = $(window).width() - ($('#new-booking-form').offset().left + $('#new-booking-form').width() + 40) // 20 + 20 for padding
    if (currentScroll >= bookingForm) {
      var currentWidth = $('#new-booking-form').width() + 40 // 20 + 20 for padding
      $('#new-booking-form').css({
        position: 'fixed',
        top: 0,
        right: 14,
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

$('#bookingdate-from').datetimepicker({
  format: "DD/MM/YYYY HH:mm",
  defaultDate: new Date(),
  disabledDates: [],
  sideBySide: true,
});

$('#bookingdate-to').datetimepicker({
  format: "DD/MM/YYYY HH:mm",
  defaultDate: new Date(),
  disabledDates: [],
  sideBySide: true,
});
