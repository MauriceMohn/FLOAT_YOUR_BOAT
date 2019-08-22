//= require rails-ujs
//= require jquery
//= require_tree .

$('#booking_pickup_date').on('change', function () {
  pickup_date = new Date($(this).val())
  $('#booking_return_date').on('change', function () {
    return_date = new Date($(this).val())
    number_of_days = ((return_date - pickup_date)/60000/60/24)
    pricePerDay = parseInt($('#pricee').html())
    $('#days_calculator').html(number_of_days)
    $('#totalPrice').html(number_of_days * pricePerDay)
  });
});
