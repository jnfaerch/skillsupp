// function for animated progress bars
$(function animatedTotalProgress() {
  if ($("#competenceProgressBarPage").length > 0){
    var current_progress = 0;
    var current_progress_wrong = 0;
    var interval = setInterval(function() {
      current_progress = document.getElementById('goalBar').getAttribute('aria-valuenow');
      current_progress_wrong = document.getElementById('goalBarWrong').getAttribute('aria-valuenow') * 1;
      $("#goalBar")
      .css("width", current_progress + "%")
      .attr("aria-valuenow", current_progress);
      $("#goalBarWrong")
      .css("width", current_progress_wrong + "%")
      .attr("aria-valuenow", current_progress_wrong);
      $("#goalText")
      .html("<br>" + "<i class='far fa-check-circle text-primary'></i>" + " " + current_progress + "%" + " " + "<i class='far fa-times-circle text-danger'></i>" + " " + current_progress_wrong + "%");
      $("#goalTextMobile")
      .html("<br>" + "<i class='far fa-check-circle text-primary'></i>" + " " + current_progress + "%" + " " + "<i class='far fa-times-circle text-danger'></i>" + " " + current_progress_wrong + "%");
      if (current_progress >= 100)

    clearInterval(interval);
    }, 500);
  }
});

$(function animatedDailyProgress() {
  if ($("#competenceProgressBarPage").length > 0){
    var daily_progress = 0;
    var daily_progress_wrong = 0;
    var interval = setInterval(function() {
      daily_progress = document.getElementById('achievementBar').getAttribute('aria-valuenow');
      daily_progress_wrong = document.getElementById('achievementBarWrong').getAttribute('aria-valuenow');
      $("#achievementBar")
      .css("width", daily_progress + "%")
      .attr("aria-valuenow", daily_progress);
      $("#achievementBarWrong")
      .css("width", daily_progress_wrong + "%")
      .attr("aria-valuenow", daily_progress_wrong);
      $("#achievementText")
      .html("<br>" + "<i class='far fa-check-circle text-primary'></i>" + " " + daily_progress + "%" + " " + "<i class='far fa-times-circle text-danger'></i>" + " " + daily_progress_wrong + "%");
      $("#achievementTextMobile")
      .html("<br>" + "<i class='far fa-check-circle text-primary'></i>" + " " + daily_progress + "%" + " " + "<i class='far fa-times-circle text-danger'></i>" + " " + daily_progress_wrong + "%");
      if (daily_progress * 1 + daily_progress_wrong * 1 >= 100)

    clearInterval(interval);
    }, 1000);
  }
});

// $("#myCarousel").on("slide.bs.carousel", function(e) {
//   var $e = $(e.relatedTarget);
//   var idx = $e.index();
//   var itemsPerSlide = 3;
//   var totalItems = $(".carousel-item").length;

//   if (idx >= totalItems - (itemsPerSlide - 1)) {
//     var it = itemsPerSlide - (totalItems - idx);
//     for (var i = 0; i < it; i++) {
//       // append slides to end
//       if (e.direction == "left") {
//         $(".carousel-item")
//           .eq(i)
//           .appendTo(".carousel-inner");
//       } else {
//         $(".carousel-item")
//           .eq(0)
//           .appendTo(".carousel-inner");
//       }
//     }
//   }
// });
