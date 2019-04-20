$(document).ready(function() {
  $('#search_codename').keypress(function(e) {
    var keyCode = (e.which) ? e.which : event.keyCode
    if (keyCode == 34 || keyCode == 39)
      return false;
  });

  $('#search_codename').submit(function(e) {
    $('#results_codename').text('...');
    $('#results_firstname').text('...');
    $('#results_lastname').text('...');
    $('#results_eliminations').text('...');
    $('#results_status').text('...');
    var querycodename = $('#search_codename_codename').val();
    if (querycodename == '') {
      return false;
    }
    querycodename.replace(/(['"])/g, '');
    search_with_codename(querycodename);
    return false;
  });
});

function search_with_codename(codename) {
  $.ajax({
    type: "POST",
    url: '/php_handlers/php_handler_searchwithcodename.php',
    data: {user_codename: codename},
    dataType: 'json',
    success: function(response) {
      $('#results_firstname').text(response[0]);
      $('#results_lastname').text(response[1]);
      $('#results_eliminations').text(response[2]);
      $('#results_status').text(response[3]);
      $('#results_codename').text(response[6]);
    }
  });
};
