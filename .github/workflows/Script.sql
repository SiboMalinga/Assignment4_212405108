<?php
$servername = "localhost";
$username = "Sibongile";
$password = "Sibongile@TUT14";
$dbname = "myDatabase";

// Create connection
$conn = new myConnect($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO myDatabase(firstname, lastname, email)
VALUES ('Themba', 'Malinga', 'Themba@gmail.com');";
$sql .= "INSERT INTO myDatabase(firstname, lastname, email)
VALUES ('Sandile', 'Malinga', 'Malinga@04.com');";
$sql .= "INSERT INTO myDatabase(firstname, lastname, email)
VALUES ('Sibusiso', 'Shabalala', 'Sbu@Shaba.com')";
$sql .= "INSERT INTO myDatabase(firstname, lastname, email)
VALUES ('Siyabonga', 'Mthethwa', '03@Mthethwa.com')";
$sql .= "INSERT INTO myDatabase(firstname, lastname, email)
VALUES ('Gugulethu', 'Nyambose', 'Nyambose@09.com')";

if ($conn->multi_query($sql) === TRUE) {
  echo "New records created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
