// function for vertical progress bars
$(function verticalUserProgress() {
  if ($("#ProgressBarAdmin").length > 0){
    var current_progress_admin = 0;
    current_progress_admin = document.getElementById('goalBarAdmin').getAttribute('aria-valuenow');
    console.log("current_progress_admin is", current_progress_admin);
    $("#goalBarAdmin").css("width", current_progress_admin + "%");
    $("#adminTextMobile")
    .html(current_progress_admin + "%");
    $("#adminText")
    .html(current_progress_admin + "%");
  }
});

// $(function verticalTotalProgress() {
//   if ($("#ProgressBarAdmin").length > 0){
//     var current_progress_all = 0;
//     var interval = setInterval(function() {
//       current_progress_all = document.getElementById('goalBarAdminAll').getAttribute('aria-valuenow');
//       $("#goalBarAdminAll")
//       .css("width", current_progress_all + "%")
//       .attr("aria-valuenow", current_progress_all);
//       if (current_progress_all >= 100)

//     clearInterval(interval);
//     }, 1000);
//   }
// });
