<html>
	<head>
		<title></title>
		<script src="/jquery.js" type="text/javascript"></script>
		<script src="/leaderboard_script.js" type="text/javascript"></script>
		<style>
			body {background-color: rgb(51, 51, 51);}
			h1{color: Snow;
					font-size: 40px;
					background-color: rgb(64, 64, 64);}
			h2 {font-size: 20px;
					color: rgb(179, 179, 179)}
			h3 {font-size: 20px;
					font-family: 'Courier New'}
			p  {color: rgb(179, 179, 179);
				font-family: "Courier New";}
			.row {display: flex;}
      .column { flex: 33.33%;
          padding: 10px;
				color: rgb(179, 179, 179);
				font-family: "Courier New";}}
		</style>
		<link rel='stylesheet' type='text/css' href='leaderboardstyle.css'>
		<style type="text/css">a {text-decoration: none; color: white;}</style>
	</head>
	<body>

		<h1 align='center' id='head'><a href='/index.php'>PARANOIA</a></h1>

		<h2 align = 'center' style="font-family:'Courier New'">Leaderboards</h2>

		<p align='center'>
			<div class='row' align='center'>
				<div class='column' align='right'>
					<font color=#ffcc00>#1: </font><font color='Snow' id="numberone">Loading...</font> <br> <br>
					<font color=#ffcc99>#2: </font><font color='Snow' id="numbertwo">Loading...</font> <br> <br>
					<font color=#ffcccc>#3: </font><font color='Snow' id="numberthree">Loading...</font> <br> <br>
					#4: <font color='Snow' id="numberfour">Loading...</font> <br> <br>
					#5: <font color='Snow' id="numberfive">Loading...</font> <br>
				</div>
				<div class='column' align='left'>
					<font color=#ffcc00> with </font> <font color='Snow' id="elimsone">0</font> <font color=#ffcc00> eliminations </font> <br> <br>
					<font color=#ffcc99> with </font> <font color='Snow' id="elimstwo">0</font> <font color=#ffcc99> eliminations </font> <br> <br>
					<font color=#ffcccc> with </font> <font color='Snow' id="elimsthree">0</font> <font color=#ffcccc> eliminations </font> <br> <br>
					with <font color='Snow' id="elimsfour">0</font> eliminations <br> <br>
					with <font color='Snow' id="elimsfive">0</font> eliminations <br>
				</div>
			</div>

			<div class='row' align='center'>
				<div class='column' align='center'>
					<font style="position: relative; bottom: 10px; font-weight: 700; color: #80ff80;" id="active">ACTIVE</font>
					<label class="switch">
					  <input type="checkbox"  id="deadoralive">
					  <span class="slider round"></span>
					</label>
					<font style="position: relative; bottom: 10px;" id='all'>ALL</font>
				</div>
			</div>
		</p>

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
