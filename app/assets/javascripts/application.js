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
  
//   $('#addSubmit').on('submit', function() {
//     $('#myModal').modal('hide');
//   });

// if ($.support.localStorage) {
//     $(window.applicationCache).bind("error", function() {
//       console.log("There was an error when loading the cache manifest.");
//     });
//     if (!localStorage["pendingGroups"]) {
//       localStorage["pendingGroups"] = JSON.stringify([]);
//     }
//     $.retrieveJSON("/groups.json", function(data) {
//       var pendingGroups = $.parseJSON(localStorage["pendingGroups"]);
//       $("#groups").html($("#group_template").tmpl(data.concat(pendingGroups)));
//     });
//     $("#new_group").submit(function(e) {
//       var pendingGroups = $.parseJSON(localStorage["pendingGroups"]);
//       var group = {"data":$(this).serialize(), "group":{"group_name":$("#group_name").val()}};
//       $("#group_template").tmpl(group).appendTo("#groups");
//       pendingGroups.push(group);
//       localStorage["pendingGroups"] = JSON.stringify(pendingGroups)
//       $("#group_name").val("");
//       sendPending();
//       e.preventDefault();
//     });
//     function sendPending() {
//       if (window.navigator.onLine) {
//         var pendingGroups = $.parseJSON(localStorage["pendingGroups"]);
//         if (pendingGroups.length > 0) {
//           var group = pendingGroups[0];
//           $.post("/groups", group.data, function(data) {
//             var pendingGroups = $.parseJSON(localStorage["pendingGroups"]);
//             pendingGroups.shift();
//             localStorage["pendingGroups"] = JSON.stringify(pendingGroups)
//             setTimeout(sendPending, 100);
//           });
//         }
//       }
//     }
//     sendPending();
//     $(window).bind("online", sendPending);
//   } else {
//     alert("Try a different browser.");
//   }
  
});



