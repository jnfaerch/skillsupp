// function for animated progress bars
$(function animatedquestionprogress() {
  var current_progress = 0;
  var interval = setInterval(function() {
    current_progress = document.getElementById('questionBar').getAttribute('aria-valuenow')
    $("#questionBar")
    .css("width", current_progress + "%")
    .attr("aria-valuenow", current_progress);
    if (current_progress >= 100)

  clearInterval(interval);
  }, 200);
});
