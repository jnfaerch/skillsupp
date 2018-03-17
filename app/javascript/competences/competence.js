// function for animated progress bars
$(function() {
  var current_progress = 0;
  var interval = setInterval(function() {
    current_progress = 35;
    $("#goalBar")
    .css("width", current_progress + "%")
    .attr("aria-valuenow", current_progress);
    $("#goalText")
    .text(current_progress + "%");
    $("#goalTextMobile")
    .text(current_progress + "%");
    if (current_progress >= 35)

  clearInterval(interval);
  }, 500);
});

$(function() {
  var current_progress = 0;
  var interval = setInterval(function() {
    current_progress = 100;
    $("#achievementBar")
    .css("width", current_progress + "%")
    .attr("aria-valuenow", current_progress);
    $("#achievementText")
    .text(current_progress + "%");
    $("#achievementTextMobile")
    .text(current_progress + "%");
    if (current_progress >= 100)

  clearInterval(interval);
  }, 1000);
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
