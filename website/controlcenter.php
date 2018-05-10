<?php
	session_start();
	if ($_SESSION['loggedin']!=1) {
      header("location: /index.php");
   }
 ?>

<html>
	<head>
		<title></title>
		<script src="/jquery.js" type="text/javascript"></script>
    <script src="/controlcenter_script.js" type="text/javascript"></script>
		<style>
			body {background-color: rgb(51, 51, 51);}
			h1{color: Snow;
					font-size: 40px;
					background-color: rgb(64, 64, 64);}
			h2 {font-size: 20px;
					color: rgb(179, 179, 179)}
			h3 {font-family: 'Courier New';
        font-size: 20px;
					color: CadetBlue}
			p  {color: rgb(179, 179, 179);
        font-family: 'Courier New'}
      form {color: Snow;
        font-family: 'Courier New';}
      input {background-color: rgb(64, 64, 64);
        color: Snow}
      .row {display: flex;}
      .column { flex: 33.33%;
          padding: 5px;}
		</style>
		<style type="text/css">a {text-decoration: none; color: white;}</style>
	</head>
	<body>

		<h1 align='center' id='head'><a href='/index.php'>PARANOIA</a></h1>

    <div class='row'>
      <div class='column'>
        <h3 align='center'><font color=Snow font-family='Courier New'>Get Player Info</font></h3>
        <form align='center' id="search_codename">
          Code Name:<br>
          <input type="text" id="search_codename_codename" autocomplete='off'><br>
        </form>
        <div class='row' align = 'center'>
          <div class='column' align ='right'>
						<p>Codename: </p>
            <p>First Name: </p>
            <p>Last Name: </p>
            <p>Eliminations: </p>
            <p>Status: </p>
            <p>Target: </p>
						<p>Hunter: </p>
          </div>
          <div class='column' align='left'>
						<p><font color='Snow' id="results_codename"> </font></p>
            <p><font color='Snow' id="results_firstname"> </font></p>
            <p><font color='Snow' id="results_lastname">  </font></p>
            <p><font color='Snow' id="results_eliminations"> </font></p>
            <p><font color='Snow' id="results_status"> </font></p>
            <p><font color='Snow' id="results_target"> </font></p>
						<p><font color='Snow' id="results_eliminator"> </font></p>
          </div>
        </div>
      </div>

      <div class='column'>
        <h3 align='center'><font color=Snow font-family='Courier New'>Eliminate Target</font></h3>
        <form align='center' id="search_elimination">
          Eliminator Codename:<br>
          <input type="text" id="search_elimination_eliminator" autocomplete='off'><br>
          Target Codename:<br>
          <input type="text" id="search_elimination_target" autocomplete='off'>
        </form>
        <p align='center'><font color='Red' id="results2_success"><br></font></p>
        <div class='row' align = 'center'>
          <div class='column' align ='right'>
            <p>Eliminator: </p>
            <p>Eliminations: </font></p>
            <p>New Target: </p>
          </div>
          <div class='column' align='left'>
						<p><font color='Snow' id="results2_eliminator"></font></p>
						<p><font color='Snow' id="results2_eliminations"></font></p>
						<p><font color='Snow' id="results2_newtarget"></font></p>
          </div>
        </div>
      </div>

      <div class='column'>
        <h3 align='center'><font color=Snow font-family='Courier New'>Shuffle Targets</font></h3>
        <form align='center' id="shuffle">
          Type 'SHUFFLE' and hit enter:<br>
          <input type="text" id="shuffle_text" autocomplete='off'><br>
        </form>
        <p align='center'><font color='Red' id="shuffle_success"><br><br><br></font></p>
        <h3 align='center'><font color=Snow font-family='Courier New'>Reset Game</font></h3>
        <form align='center' id="reset">
          Type 'RESET' and hit enter:<br>
          <input type="text" id="reset_text" autocomplete='off'><br>
        </form>
        <p align='center'><font color='Red' id="reset_success"></font></p>
      </div>
    </div>

		<p align='center'>
		<h3 align = 'center'><a href="/leaderboards.php" hspace=20><font color=#8f9b9e>Leaderboards&emsp;</font></a>
			<a href="/rules.php" hspace=20><font color=#8f9b9e>Rules&emsp;</font></a>
		<a href="/announcements.php" hspace=20><font color=#8f9b9e>Announcements</font></a></h3>
    <h3 align = 'center'><a href="https://goo.gl/forms/O26iqcx8NF9ieQY32" hspace=20><font color=#f44336>Elimination Form&emsp;</font></a>
			<a href="/codenamefinder.php" hspace=20><font color=#a8babf>Agent Database</font></a></h3>
			<h3 align = 'center'><a href="/controlcenter.php" hspace=20><font color=#FFD700 id='controlcenter'></font></a></h3>
  </p>
	</body>
</html>
