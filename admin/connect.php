<?php
$user = "root";
$pass = "";
$host = "localhost";
$db = "courseinfo";

$conn = mysqli_connect($host,$user,$pass,$db);

if (!$conn) {
    echo 'sumpin done busted!';
    exit;
}
//echo "connected!";

//select all of the data from the table
$myquery = "SELECT * FROM courseinfo";
$result = mysqli_query($conn, $myquery);
$rows = array();

while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
};

echo json_encode($rows);

?>
