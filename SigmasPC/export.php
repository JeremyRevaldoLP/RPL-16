<?php
include 'services/database.php';

// Function to update the SQL file
function updateSQLFile($conn) {
    $backup_file = 'db/sigmaspc.sql';
    $file = fopen($backup_file, 'w');

    // Get the existing table structure
    $result = $conn->query("SHOW CREATE TABLE products");
    $row = $result->fetch_row();
    fwrite($file, $row[1] . ";\n\n");

    // Get the existing products
    $data = $conn->query("SELECT * FROM products");
    while ($row = $data->fetch_assoc()) {
        $values = array();
        foreach ($row as $value) {
            $values[] = "'" . $conn->real_escape_string($value) . "'";
        }
        fwrite($file, "INSERT INTO products VALUES (" . implode(",", $values) . ");\n");
    }

    fclose($file);
}

// Call the function to update the SQL file
updateSQLFile($conn);

header("location: add_product.php?password=movementplayer");
?>