jQuery ->
  $("#show_about_title").show()
  $(".edit#title_about").hide()
  $(".edit#title_about_buttons").hide()
  $("#edit_about_title").click ->
    $(".edit#title_about").show()
    $(".edit#title_about_buttons").show()
    $(".show#title_about").hide()
  $("#cancel_about_title").click ->
    $(".edit#title_about").hide()
    $(".edit#title_about_buttons").hide()
    $(".show#title_about").show()
  $("#update_about_title").click ->
    $(".edit#title_about").hide()
    $(".edit#title_about_buttons").hide()
    $(".show#title_about").replaceWith("\#{escape_javascript(render 'shared/about/about_title')}")
