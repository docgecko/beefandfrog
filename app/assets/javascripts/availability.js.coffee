# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

customRange = (a) ->
  b = new Date()
  c = new Date(b.getFullYear(), b.getMonth(), b.getDate())
  c = $(".bStartDate").datepicker("getDate")  if $(".bStartDate").datepicker("getDate")?  if a.id is "booking_end_date"
  minDate: c

$(document).ready ->
  $("#booking_start_at, #booking_end_at").datepicker
    numberOfMonths: 2
    showButtonPanel: true
    beforeShow: customRange
    dateFormat: "dd-mm-yy"
    showOn: "both"
    buttonImage: "/assets/calendar.gif"
    buttonImageOnly: true
    buttonText: "Show Date Picker"