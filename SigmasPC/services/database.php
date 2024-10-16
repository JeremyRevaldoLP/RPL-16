<?php
// Define database connection settings
$db_host = 'localhost'; // Usually 'localhost' for local servers
$db_username = 'root';  // Your database username
$db_password = ''; // Your database password (empty string for no password)
$db_name = 'sigmaspc';  // Your database name

// Create a connection to the database
$conn = new mysqli($db_host, $db_username, $db_password, $db_name);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Set character set to utf8mb4
$conn->set_charset("utf8mb4");

// Define a function to close the database connection
function close_connection() {
    global $conn;
    $conn->close();
}
?>