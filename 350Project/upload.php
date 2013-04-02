<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Forever Home</title>

<?php
session_start();
include "miniondb_connect.php";

$query1 = "SELECT Name, Age, Sex, fixed FROM pet_info WHERE owner_id = '" . $_SESSION[owner_id] . "'";
$query2 = "SELECT color FROM color WHERE owner_id = '" . $_SESSION[owner_id] . "'";
$query3 = "SELECT vaccine FROM vaccines WHERE where owner_id = '" . $_SESSION[owner_id] . "'";

$query4 = "SELECT pi.temp FROM pet_info pi NATURAL JOIN temperment t WHERE owner_id = '" . $_SESSION[owner_id] . "'";

?>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="logo">
	<h1><a href="#">Forever <i> Home</i></a></h1>
	<h2><span>By Free CSS Templates</span></h2>
</div>
<div id="content">
	<div id="sidebar">
		<div id="menu">
			<ul>
				<li><a href="Home.php" title="">Homepage</a></li>
				<li><a href="aboutUs.php" title="About Us">About Us</a></li>
				<li><a href="RegisterOwner.php" title="">Register</a></li>
				<li><a href="adopt.php" title="">Adopt a Minion</a></li>
				<li><a href="RegisterMinion.php" title="">Place a Minion for Adoption</a></li>
			</ul>
		</div>
		</div>
<div id="main">
		<div id="Results" class="post">
			<p><img src="images/pets2.jpg" alt="" width="500" height="300" /></p>
			<table>
					<tr><td>Minion name: </td><td>
					
			</table>
			
				</div>
	</div>
<div id="footer">
	<p id="legal">Copyright &copy; 2013 Forever Home. All Rights Reserved. Designed by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
</div>
</body>
</html>