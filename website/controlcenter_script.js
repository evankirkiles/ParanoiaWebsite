// Add listener for each text box
$(document).ready(function() {
  $('#search_codename').submit(function(e) {
    $('#results_codename').text('...');
    $('#results_firstname').text('...');
    $('#results_lastname').text('...');
    $('#results_eliminations').text('...');
    $('#results_status').text('...');
    $('#results_target').text('...');
    $('#results_eliminator').text('...');
    var querycodename = $('#search_codename_codename').val();
    if (querycodename == '') {
      return false;
    }
    search_with_codename(querycodename);
    return false;
  });

  $('#search_elimination').keypress(function(e) {
    var keycode = (event.keyCode ? event.keyCode : event.which);
    if(keycode == '13'){
      var eliminator = $('#search_elimination_eliminator').val();
      var target = $('#search_elimination_target').val();
      if (eliminator != '' && target != '') {
        $('#results2_success').css('color', 'blue');
        $('#results2_success').text('Elimination pending...');
        eliminate_target(eliminator, target);
      } else {
        $('#results2_success').css('color', 'red');
        $('#results2_success').text('Please fill in both fields.');
      }
      return false;
    }
  });

  $('#reset').submit(function(e) {
    if ($('#reset_text').val() == 'RESET') {
      $('#reset_success').css('color', 'blue');
      $('#reset_success').text('RESET pending...');
      reset_db();
      shuffle_living(false);
      return false;
    } else {
      $('#reset_success').css('color', 'red');
      $('#reset_success').text('Enter RESET correctly.');
      return false;
    }
  });

  $('#revive').submit(function(e) {
    if ($('#revive_text').val() != '') {
      $('#revive_success').css('color', 'blue');
      $('#revive_success').text('Revive pending...');
      revive_player($('#revive_text').val());
    }
    return false;
  });

  $('#email').submit(function(e) {
    if ($('#emailtext').val() != '') {
      slowDownEmailSending(0, 0, () => {$('#emailtext').val('') });
    }
    return false;
  })

  $('#shuffle').submit(function(e) {
    if ($('#shuffle_text').val() == 'SHUFFLE') {
      $('#shuffle_success').css('color', 'blue');
      $('#shuffle_success').text('SHUFFLE pending...');
      shuffle_living(true);
      return false;
    } else {
      $('#shuffle_success').css('color', 'red');
      $('#shuffle_success').text('Enter SHUFFLE correctly.');
      return false;
    }
  });

  $('#email input[type=radio]').on('change', function() {
    if ($('#player', '#email').prop('checked')) {
      $('#ifplayerselected').css('display', 'block');
    } else {
      $('#ifplayerselected').css('display', 'none');
    }
  });
});

// Sleeper function
function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

function slowDownEmailSending(emailCount, attempts, callback) {
  $('#successOrFailureToEmail').css('color', 'white');
  $('#successOrFailureToEmail').text('Sending...');
  send_email($('#emailtext').val(), $('.emailoption:checked').attr('id'), $('#codenameemail').val(), $('#emailsubject').val(), async (data) => {
    if (!data['continue']) {
      $('#successOrFailureToEmail').css('color', 'green');
      $('#successOrFailureToEmail').text('Sent email to ' + (data['count'] != 0 ? data['count'] : 'no') + ' players. Finished.');
      callback();
    } else {
      $('#successOrFailureToEmail').css('color', 'blue');
      $('#successOrFailureToEmail').text('Sent email to total of ' + data['count'] + ' players. Waiting to send next wave (Attempt #' + (attempts) + '), don\'t close...');
      // Wait 1 minute before sending the next wave of emails
      await sleep(0.5 * 1000 * 60);
      slowDownEmailSending(data['count'], attempts + 1, callback);
    }
  }, () => { 
    $('#successOrFailureToEmail').css('color', 'red');
    $('#successOrFailureToEmail').text('Failed to send email.');
    callback();
  }, emailCount);
}

function eliminate_target(eliminator, target) {
  $.ajax({
    type: "POST",
    url: '/php_handlers/php_handler_eliminatetarget.php',
    data: {
      eliminatorname: eliminator,
      targetname: target},
    dataType: 'json',
    success: function(response) {
      if (response === 1) {
        $('#results2_success').css('color', 'red');
        $('#results2_success').text('Target and eliminator do not match.');
      } else if (response === 0) {
        $('#results2_success').css('color', 'red');
        $('#results2_success').text('Elimination failed.');
      } else if (response === 2) {
        $('#results2_success').css('color', 'red');
        $('#results2_success').text('Eliminator not found.');
      } else {
        $('#results2_eliminator').text(response[0]);
        $('#results2_eliminations').text(response[1]);
        $('#results2_newtarget').text(response[2]);
        $('#results2_success').css('color', 'green');
        $('#results2_success').text('Elimination succeeded.');

        // If the elimination succeeds, email the target and the eliminator
        // ELIMINATOR EMAIL
        send_email('Greetings ' + response[0] + ',\n\nYour elimination on ' + target + 
          ' was a success.\n Your elimination count: ' + response[1] + '\nYour new target: ' + response[2] + 
          '\n\nHappy hunting.', 'player', eliminator, 'Confirmed Elimination', () => {}, () => {}, 0);

        // TARGET EMAIL
        send_email('Greetings ' + target + ',\n\nWe regret to inform you that you have been eliminated by ' + 
          response[0] + '\n\nBetter luck next time.', 'player', target, 'Paranoia Elimination', () => {}, () => {}, 0);
      }
    }
  });
};

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
      $('#results_target').text(response[4]);
      $('#results_eliminator').text(response[5]);
      $('#results_codename').text(response[6]);
    }
  });
};

function shuffle_living(update) {
  $.get('/php_handlers/php_handler_shuffleplayers.php', function(data) {
  if (data == 1 & update) {
    $('#shuffle_success').css('color', 'green');
    $('#shuffle_success').text('Shuffle succeeded.');
  } else if (update) {
    $('#shuffle_success').css('color', 'red');
    $('#shuffle_success').text('Shuffle failed.');
  }
  });
}

function reset_db() {
  $.get('/php_handlers/php_handler_resetdatabase.php', function(data) {
  if (data == 1) {
    $('#reset_success').css('color', 'green');
    $('#reset_success').text('Reset succeeded.');
  } else {
    $('#reset_success').css('color', 'red');
    $('#reset_success').text('Reset failed.');
  }
  });
}

function revive_player(codename) {
  $.ajax({
    type: "POST",
    url: '/php_handlers/php_handler_revivetarget.php',
    data: { codename: codename },
    dataType: 'json',
    success: function(data) {
      if (data != 0 && data['revived_index'] != undefined) {
        $('#revive_success').css('color', 'green');
        $('#revive_success').text('Revived ' + codename + '! Sent notification emails.');

        // Send email to the revived and the hunter of the old target
        send_email('You have been revived...\nYour target remains ~(TARGET)~.\nHappy hunting.', 'player', codename, 'The Lord of Light Smiles Upon You', () => {}, () => {}, 0);
        send_email('Your target has been changed to ~(TARGET)~, back from the dead.\nHappy hunting.', 'player', data['hunter_name'], 'Target Change', () => {}, () => {}, 0);   
      } else {
        $('#revive_success').css('color', 'red');
        $('#revive_success').text('Revive failed. Error code 0.');
      }
    },
    error: function(something, err) {
      $('#revive_success').css('color', 'red');
      $('#revive_success').text('Revive failed. Error code 1.');
      console.log(something.responseText);
    }
  });
}

function send_email(email, setting, codename, subject, onSuccess, onFail, emailCount) {
  $.ajax({
    type: "POST",
    url: '/php_handlers/php_handler_email.php',
    data: {emailtext: email,
           emailsubject: subject,
           setting: setting,
           codename: codename,
           countOfEmails: emailCount},
    dataType: 'json',
    success: function(response) {
      onSuccess(response);
    },
    error: function(something, err) {
      onFail();
      console.log(something.responseText);
    }
  });
};
