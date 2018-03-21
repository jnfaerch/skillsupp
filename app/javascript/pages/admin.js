// function for vertical progress bars
$(function verticalUserProgress() {
  if ($("#ProgressBarAdmin").length > 0){
    var current_progress_admin = 0;
    var interval = setInterval(function() {
      current_progress_admin = document.getElementById('goalBarAdmin').getAttribute('aria-valuenow');
      $("#goalBarAdmin")
      .css("width", current_progress_admin + "%")
      .attr("aria-valuenow", current_progress_admin);
      if (current_progress_admin >= 100)

    clearInterval(interval);
    }, 500);
  }
});

$(function verticalTotalProgress() {
  if ($("#ProgressBarAdmin").length > 0){
    var current_progress_all = 0;
    var interval = setInterval(function() {
      current_progress_all = document.getElementById('goalBarAdminAll').getAttribute('aria-valuenow');
      $("#goalBarAdminAll")
      .css("width", current_progress_all + "%")
      .attr("aria-valuenow", current_progress_all);
      if (current_progress_all >= 100)

    clearInterval(interval);
    }, 1000);
  }
});
