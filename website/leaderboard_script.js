$(window).on('load',
  loadLeaderboardPictures()
);

function loadLeaderboardPictures() {
  $.get('php_handler_leaderboard.php', function(data) {
      $("#ldpic1").attr("src", data[0]);
      $("#ldpic2").attr("src", data[1]);
      $("#ldpic3").attr("src", data[2]);
      $("#ldpic4").attr("src", data[3]);
      $("#ldpic5").attr("src", data[4]);
    }, "json");
};
