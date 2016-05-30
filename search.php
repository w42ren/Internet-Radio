<?php
if(isset($_POST['submit'])){
if(isset($_GET['go'])){
if(preg_match("/^[a-z|A-Z]+/", $_POST['name'])){  //check form input is text characters
  $name=$_POST['name'];
  
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
$sth = $db->prepare("SELECT  ID,StationName,LocalURL,StreamURL FROM Stationpages WHERE  StationName LIKE '%" . $name .  "%' OR StationType LIKE '%" . $name ."%'");
//-run  the query against the mysql query function
$sth->execute();

echo "<ul>\n Internet Radio search results";
//Return next row as an array indexed by column name
// print("PDO::FETCH_ASSOC: ");
// print("Return next row as an array indexed by column name\n");
$sth->setFetchMode(PDO::FETCH_ASSOC);

  }
  else{
  echo  "<p>Please enter a search query</p>";
  }
  }
  }	
  ?>
<!DOCTYPE html>
  <html>
  <head>
  <title> search results </title>
  </head>
<body>
<?php while ($row = $sth->fetch()):?>
<!--<p><?php // echo $row ['LocalURL'];?></p>-->
<p>
<!-- <a href= "<?php //echo $row ['LocalURL']?>"><?php //echo $row['StationName'];?></a> -->
<a href="station.php?id=<?php echo $row['ID']?>"> <?php echo $row['StationName'];?></a>
<a href= "<?php echo $row ['StreamURL']?>"><?php echo "Stream";?></a>
</p>
<?php endwhile; ?>
</body>
</html>
