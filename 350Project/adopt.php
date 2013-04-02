<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Forever Home</title>

<?php
session_start();
include "miniondb_connect.php";



//$query1 = "SELECT Name, Age, Sex, fixed FROM pet_info WHERE owner_id = '" . $_SESSION[owner_id] . "'";
//$result1 = mysqli_query($db, $query1)
	//		or die("Error Querying Database");
		
/*
if ($row = mysqli_fetch_array($result))
         {
		 $pword = $row['Name'];
  		 $user = $row['Age'];
		 $sex = $row['Sex'];
		 $fixed = $row['fixed'];
		 echo '<META http-equiv="refresh" content="0;URL=welcome.php">';
		}
		*/
	if (isset($_POST['animal'])) {
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
		 echo '<META http-equiv="refresh" content="0;URL=searchInfo.php">';
		}
		
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
				<li class="active"><a href="adopt.php" title="">Adopt a Minion</a></li>
				<li><a href="RegisterMinion.php" title="">Place a Minion for Adoption</a></li>
			</ul>
		</div>
		</div>
<div id="main">
		<div id="Register Your Minion" class="post">
			<p><img src="images/adopt.jpg" alt="" width="500" height="200" /></p>
			<h1 class="title">Find a Minion</h1>
			<!-- Find a Minion -->		
			
			<form method = "post" action = "searchInfo.php">
			<br/><br/>
					<table>
					
					<tr><td>Enter zipcode: </td>
					<td><input type="text" id="zipcode" name="zipcode" value="zipcode..."/></td></tr>
					
				<div id="animal_options" class="checkbox_list animal_list">
					<tr><td>Type:</td>
					<td><input class="dog_breed" id="dog-label" type="radio" name="animal" value="dog" checked="checked">
						<label for="dog-label">Dog</label>
					<input class="cat_breed" id="cat-label" type="radio" name="animal" value="cat">
						<label for="cat-label">Cat</label>
					<input class="exotic_breed" id="exotic-label" type="radio" name="animal" value="exotic">
						<label for="exotic-label">Exotic</label>
					<input class="all_breed" id="all-label" type="radio" name="animal" value="alltypes">
						<label for="all-label">Search all</label></td></tr>
				</div>
				
				<tr><td>Sex:</td><td>
				<input type="radio" name="sex" value="male">Male
				<input type="radio" name="sex" value="female">Female
				<input type="radio" name="sex" value="none">No preference
				</td></tr>
					
					<tr><td>Enter breed if known: </td>
					<td><input type="text" id="breed" name="breed" value="Enter breed..."/></td></tr>
					
					<tr><td>Select temperment: </td>
					<td><select name="temp" style="width:144px">
						<option value="">Temperment...</option>
						<option value="children">Good with Children</option>
						<option value="dogs">Good with Dogs</option>
						<option value="cats">Good with Cats</option>
						<option value="all">Good with Dogs and Cats</option>
						<option value="alloptions">Search All</option>
					</select></td></tr>
												
			<tr><td></td><td><input type="submit" value="Find me a minion, please!" /></td></tr>
					</table>
					</br>
					</form>

		</div>
	</div>
</div>
<div id="footer">
	<p id="legal">Copyright &copy; 2013 Forever Home. All Rights Reserved. Designed by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
</div>
</body>
</html>