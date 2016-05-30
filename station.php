<?PHP
  $id=$_GET['id'];
  
//create database credentials
$servername = "sql5c25d.carrierzone.com";
$username = "w42renf2sc957916";
$password = "vgy78uhb!";
// Create connection
$dsn = 'mysql:host=sql5c25d.carrierzone.com;dbname=irstationtable_w42renf2sc957916';
$options = array(
    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
); 
// connect to database
$db = new PDO($dsn, $username, $password, $options);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // throws PDOException can be caught and handled gracefully if you choose to do so.
$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

// echo "Connected successfully";
  

//-query  the database table
$sth = $db->prepare("SELECT * FROM Stationpages WHERE  ID = :id");
//-run  the query against the mysql query function
$sth->bindParam(":id",$id);
$sth->execute();

// echo "<ul>\n id = ", $id;
//Return next row as an array indexed by column name
// print("PDO::FETCH_ASSOC: ");
// print("Return next row as an array indexed by column name\n");
$station = $sth->fetch(PDO::FETCH_ASSOC);
// print_r($station);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Internet Radio Stations</title>
	<link rel="stylesheet" href="fonts.css" type="text/css" charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="styles.css">
	<style type="text/css">
	body {
		background-color:white;
		font-family:Verdana,Tahoma,Arial,Sans-Serif;
		color:black;
		font-size:12px;
	}

	header {
		font-family:'Conv_TELETYPE1945-1985',Sans-Serif;
		width:90%;
		margin:10px auto ;
		text-align:left;
		padding:10px;
	}

	article {
		font-family:'Conv_lmroman12-regular',Sans-Serif;
		width:90%;
		margin: auto;
		text-align:left;
		padding:10px;
	}
	nav {
		font-family: font-family:'Conv_LucidaTypewriterRegular',Sans-Serif;
		width:90%;
		margin:10px auto;
		text-align:left;
		padding:10px;
	}
	footer {	
		font-family:font-family:'Conv_LucidaTypewriterRegular',Sans-Serif;
	    width:90%;
		margin:10px auto;
		text-align:left;
		padding:10px;;
	}
	</style>
</head>
<body>
 
	<header style="font-size:25px">
	Internet Radio Stations 
	</header>

	<nav style="font-size:14px"><strong>Back</strong></nav>
	<article style="font-size:14px">
	
	<h1><?php echo $station['StationName'];?></h1>
	
		<p><?php echo $station['Description'];?></p>
		
		<h2><b>Streams</b></h2>
		<p><a href= "<?php echo $station ['StreamURL']?>"><?php echo "Stream";?></a></p>
		<h2><b>Location</b></h2>
		<p><?php echo $station['Location'];?></p>
		<h2><b>Timezone</b></h2>
		<p><?php echo $station['Timezone'];?></p>
	
	    <h2><b>Website</b></h2>
		<a href= "<?php echo $station ['WebURL']?>"><?php echo $station['WebURL'];?></a>
		<h2><b>Programming Schedule</b></h2>
		<p><?php echo $station['Schedule'];?></p>
		<p><a href= "<?php echo $station ['ScheduleURL']?>"><?php echo "Schedule";?></a></p>
	</article>	
	<footer style="font-size:14px">
	Copyright Warren Earle
	</footer>
</body>
</html>