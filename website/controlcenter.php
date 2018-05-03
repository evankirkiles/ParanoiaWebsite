<html>
	<head>
		<title></title>
		<script src="/jquery.js" type="text/javascript"></script>
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
			p  {color: Snow;
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
        <form align='center'>
          Code Name:<br>
          <input type="text" name="codename"><br>
        </form>
        <div class='row' align = 'center'>
          <div class='column' align ='right'>
            <p>First Name: </p>
            <p>Last Name: </p>
            <p>Eliminations: </p>
            <p>Target: </p>
          </div>
          <div class='column'>
          </div>
        </div>
      </div>

      <div class='column'>
        <h3 align='center'><font color=Snow font-family='Courier New'>Eliminate Target</font></h3>
        <form align='center'>
          Eliminator Codename:<br>
          <input type="text" name="eliminatorcodename"><br>
          Target Codename:<br>
          <input type="text" name="targetcodename">
        </form>
        <div class='row' align = 'center'>
          <div class='column' align ='right'>
            <p>Eliminator: </p>
            <p>Eliminations: </p>
            <p>New Target: </p>
          </div>
          <div class='column'>
          </div>
        </div>
      </div>

      <div class='column'>
        <h3 align='center'><font color=Snow font-family='Courier New'>Shuffle Targets</font></h3>
        <form align='center'>
          Type 'SHUFFLE' and submit:<br>
          <input type="text" name="shuffle"><br>
        </form>
      </div>
    </div>

		<p align='center'>
		<h3 align = 'center'><a href="/leaderboards.php" hspace=20><font color=#8f9b9e>Leaderboards&emsp;</font></a>
			<a href="/rules.php" hspace=20><font color=#8f9b9e>Rules&emsp;</font></a>
		<a href="/announcements.php" hspace=20><font color=#8f9b9e>Announcements</font></a></h3>
    <h3 align = 'center'><a href="https://goo.gl/forms/O26iqcx8NF9ieQY32" hspace=20><font color=#66ddff>Elimination Form&emsp;</font></a>
    <a href="https://docs.google.com/spreadsheets/d/1ndpIGS8XWhHn84MWfjxlm6yR0COYSnLJlBkI3zt4cyY/edit#gid=0" hspace=20><font color=#a8babf>Agent Database</font></a></h3>
    <h3 align = 'center'><a href="/controlcenter.php" hspace=20><font color=#8f9b9e>Control Center</font></a></h3>
  </p>
	</body>
</html>
