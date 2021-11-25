<?php

$con=mysqli_connect("localhost","root","","msoa");
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$sql = "INSERT INTO Persons (firstname, lastname, addressId, hobbyId) VALUES ('".$_POST["firstname"]."', '".$_POST["lastname"]."', 1, 1)";
echo $sql;

if ($con->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "<hr>Error";
}



mysqli_close($con);
?>