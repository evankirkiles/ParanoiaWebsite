$(window).on('load',
  LoadLeaderboardRanks(1)
);

$(document).ready(function() {
  $('#deadoralive').change(function(e) {
    if (document.getElementById("deadoralive").checked == true) {
      LoadLeaderboardRanks(0);

    } else if (document.getElementById("deadoralive").checked == false) {
      LoadLeaderboardRanks(1);
    }
  });
});

function LoadLeaderboardRanks(alive) {
  $.ajax({
    type: "POST",
    url: '/php_handlers/php_handler_leaderboard.php',
    data: {alive: alive},
    dataType: 'json',
    success: function(data) {
      $("#numberone").text(data[0]);
      $("#numbertwo").text(data[1]);
      $("#numberthree").text(data[2]);
      $("#numberfour").text(data[3]);
      $("#numberfive").text(data[4]);
      $("#elimsone").text(data[5]);
      $("#elimstwo").text(data[6]);
      $("#elimsthree").text(data[7]);
      $("#elimsfour").text(data[8]);
      $("#elimsfive").text(data[9]);
    }
  });
  if (alive == 1){
    $('#active').css('color', '#80ff80')
    $('#active').css('fontWeight', 700)
    $('#all').css('color', 'rgb(179, 179, 179)')
    $('#all').css('fontWeight', 400)
  } else if (alive == 0) {
    $('#all').css('color', '#ff3333')
    $('#all').css('fontWeight', 700)
    $('#active').css('color', 'rgb(179, 179, 179)')
    $('#active').css('fontWeight', 400)
  }
};
