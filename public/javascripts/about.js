/* DO NOT MODIFY. This file was compiled Tue, 12 Jul 2011 21:06:13 GMT from
 * /Users/Daren/Rails/bef/app/scripts/about.coffee
 */

(function() {
  jQuery(function() {
    $("#show_about_title").show();
    $(".edit#title_about").hide();
    $(".edit#title_about_buttons").hide();
    $("#edit_about_title").click(function() {
      $(".edit#title_about").show();
      $(".edit#title_about_buttons").show();
      return $(".show#title_about").hide();
    });
    $("#cancel_about_title").click(function() {
      $(".edit#title_about").hide();
      $(".edit#title_about_buttons").hide();
      return $(".show#title_about").show();
    });
    return $("#update_about_title").click(function() {
      $(".edit#title_about").hide();
      $(".edit#title_about_buttons").hide();
      return $(".show#title_about").replaceWith("\#{escape_javascript(render 'shared/about/about_title')}");
    });
  });
}).call(this);
