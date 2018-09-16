$(document).ready(function() {

  // Prevent SQL injections by not allowing quotation marks
  $('#username').keypress(function(e) {
    var keyCode = (e.which) ? e.which : event.keyCode
    if (keyCode == 34 || keyCode == 39)
      return false;
  });
  $('#password').keypress(function(e) {
    var keyCode = (e.which) ? e.which : event.keyCode
    if (keyCode == 34 || keyCode == 39)
      return false;
  });

  $('#login_modal').submit(function() {
    $('#loginsuccessfield').css('color', 'white');
    $('#loginsuccessfield').text('...');
    var username = $('#username').val();
    var password = $('#password').val();
    validate_login(username, password);
    return false;
  })
});

function validate_login(usernumber, password) {
  var login_success=3;
  $.ajax({
    type: "POST",
    url: '/php_handlers/php_handler_login.php',
    data: {usernumber: usernumber,
            password: password},
    dataType: 'json',
    success: function(response) {
      if (response == 3) {
        $('#loginsuccessfield').css('color', 'green');
        $('#loginsuccessfield').text('Login succeeded.');
        $.ajax({
          type: "POST",
          url: "/php_handlers/php_handler_sessionlogin.php",
          data: {loginsuccess: 1}
        });
        document.location.href = "/controlcenter.php";
      } else {
        $('#loginsuccessfield').css('color', 'red');
        $('#loginsuccessfield').text('Login failed.');
        $.ajax({
          type: "POST",
          url: "/php_handlers/php_handler_sessionlogin.php",
          data: {loginsuccess: 0}
        });
      }
    }
  });
};
