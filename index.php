<html>
<head>
<link rel="stylesheet" href="style.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>

<body>


   <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.php">Proiect MSOA</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.php">Home</a></li>
      <li><a href="insert.html">Insert</a></li>
      <li><a href="iss.html">ISS Live</a></li>
    </ul>
  </div>
</nav>


<?php
$con=mysqli_connect("localhost","root","","msoa");
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$query = "SELECT a.*, b.city, b.street, b.number, c.name as hobby, c.glyph FROM persons a LEFT JOIN adresses b ON a.addressId=b.Id LEFT JOIN hobby c ON a.hobbyId=c.Id";
$result = mysqli_query($con,$query);


echo "<table class='table table-striped table-hover'>
<tr>
<th>Firstname</th>
<th>Lastname</th>
<th>City</th>
<th>Street</th>
<th>Number</th>
<th>Hobby</th>
<th></th>
</tr>";
while($row = mysqli_fetch_array($result)){
	$Id=$row['Id'];
	echo "<tr>";
echo "<td><a href='details.php?id=$Id'>" . $row['FirstName'] . "</a></td>";
echo "<td>" . $row['LastName'] . "</td>";
echo "<td>".$row['city']."</td>";
echo "<td>".$row['street']."</td>";
echo "<td>".$row['number']."</td>";
echo "<td>".$row['hobby']."</td>";
echo "<td><span class='heart ".$row['glyph']."'></span></td>";
echo "</tr>";

    }




/*


while($row = mysqli_fetch_array($result))
{
echo "<tr>";
$Id=$row['Id'];
echo "<td><span class='heart glyphicon glyphicon-heart'></span></td><td> <a href='details.php?id=$Id'>" . $row['FirstName'] . "</a></td>";
echo "<td>" . $row['LastName'] . "</td>";
echo "</tr>";
}*/
echo "</table>";

mysqli_close($con);
?>