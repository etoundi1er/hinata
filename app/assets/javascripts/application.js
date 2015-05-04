// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery.tmpl.min
//= require jquery.offline
//= require json
//= require foundation
//= require jquery-ui/datepicker
//= require chosen-jquery
//= require best_in_place

//= require turbolinks
//= require_tree .

$(function() { 
  $(document).foundation(); 
  $.retrieveJSON("./40.json", function(data) {
    $("#attendance_items").html($("#attendance_template").tmpl(data));
 });
  
  
  $.retrieveJSON("/groups.json", function(data) {
    $("#group_items").html($("#group_template").tmpl(data));
 });
  
});



