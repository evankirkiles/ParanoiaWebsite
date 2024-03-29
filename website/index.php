<?php
session_start();
 ?>

<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<script src="/jquery.js" type="text/javascript"></script>
		<script src='/login_script.js' type='text/javascript'></script>
		<style>
			body {background-color: rgb(51, 51, 51);}
			h1{color: Snow;
					font-size: 40px;
					background-color: rgb(64, 64, 64);}
			h2 {font-size: 20px;
					color: rgb(179, 179, 179)}
			h3 {font-size: 20px;
					font-family: 'Courier New'}
			p  {text-align: center;
          list-style-position: outside;
          max-width:550px;
          text-indent: 0px;
          margin: 10px 0;}
		</style>
		<link rel='stylesheet' type='text/css' href='loginstyle.css'>
		<style type="text/css">a {text-decoration: none; color: white;}</style>
	</head>
	<body>

		<h1 align='center' id='head'><a href='/index.php'>PARANOIA</a></h1>

		<center><p><font color=white style="font-family:'Courier New'">
			Paranoia is a school-wide game running from April 29th until May 13th which
requires players (“agents”) to systematically tag assigned targets while
avoiding being tagged by another agent. Each agent will receive the codename
of the target they need to tag and each agent will also have someone assigned
to tag them. Agents will tag their targets by putting a sticker onto their
target’s person. Upon successfully tagging their target, an agent will
complete an elimination report. Agents will receive a new target within 24
hours from the report submission. Agents are not allowed to tag a new target
until they are sent one by the Paranoia commissioner or assistants. Agents
may find it difficult to identify their targets by codename alone, and may
search the Agent Database to aid them.
</font></p></center>

	<p align='center'>
		<h3 align = 'center'><a href="/leaderboards.php" hspace=20><font color=#8f9b9e>Leaderboards&emsp;</font></a>
			<a href="/rules.php" hspace=20><font color=#8f9b9e>Rules&emsp;</font></a>
			<a href="/announcements.php" hspace=20><font color=#8f9b9e>Announcements</font></a></h3>
    <h3 align = 'center'><a href="https://goo.gl/forms/O26iqcx8NF9ieQY32" hspace=20><font color=#f44336>Elimination Form&emsp;</font></a>
			<a href="/codenamefinder.php" hspace=20><font color=#a8babf>Agent Database</font></a></h3>
		<h3 align = 'center'><a href="/controlcenter.php" hspace=20><font color=#FFD700 id='controlcenter'></font></a></h3>
		<h3 align = 'center'><button onclick="document.getElementById('id01').style.display='block'" hspace=20 style="width: auto;"><font color=#8f9b9e size='2px'><b>Control Center</b></font></button></h3>
	</p>
	</body>

	<div id="id01" class="modal">

	  <form class="modal-content animate" action="/action_page.php" id='login_modal'>

	    <div class="container" text-align='center'>
		      <label for="uname"><b><font color=white style="font-family:'Courier New'">Username</font></b></label>
		      <input type="text" id="username" name="uname" required>

		      <label for="psw"><b><font color=white style="font-family:'Courier New'">Password</font></b></label>
		      <input type="password" id="password" name="psw" required>

	      	<button type="submit" id='submitbutton'><b>Login</b></button>
	    </div>

	    <div class="container" style="background-color:rgb(64, 64, 64)">
	      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
				<font color='white' id='loginsuccessfield' style="font-family:'Courier New'; margin-left: 20px"></font>
			</div>
	  </form>
	</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</html>
