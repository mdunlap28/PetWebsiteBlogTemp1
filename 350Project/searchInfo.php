<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Forever Home</title>
<?php
include "miniondb_connect.php";

		$type = mysqli_real_escape_string($db, trim($_POST['animal']));
		//$query2 = "SELECT pi.Name, pi.Age, pi.Sex, pi.fixed FROM pet_info pi 
		//NATURAL JOIN type t WHERE t.type = '$type';
		
		$query2 = "SELECT pet_info.Name, pet_info.Age, pet_info.Sex, pet_info.fixed FROM pet_info  
		NATURAL JOIN type WHERE type.animal = 'dog'";
		$result2 = mysqli_query($db, $query2)
			or die("Error Querying Database");
			
		if ($row = mysqli_fetch_array($result2))
         {
		 $Name = $row['Name'];
  		 $Age = $row['Age'];
		 $sex = $row['Sex'];
		 $fixed = $row['fixed'];
}


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
			<h1 class="title">Results</h1>
			<!-- Results -->		
			<?php
			echo "<h1>Name: " . $Name  . " </h1>\n";
			echo "<h1>Age: " . $Age  . " </h1>\n";
			echo "<h1>Sex: " . $Sex  . " </h1>\n";
			echo "<h1>Spayed/Neutered: " . $fixed  . " </h1>\n";
			?>
			
			</div>
	</div>
<div id="footer">
	<p id="legal">Copyright &copy; 2013 Forever Home. All Rights Reserved. Designed by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
</div>
</body>
</html>