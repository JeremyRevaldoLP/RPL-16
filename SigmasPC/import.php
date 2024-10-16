<?php
include 'services/database.php';

// Define the import file name and path
$backup_file = 'db/sigmaspc.sql';

// Check if the import file exists
if (!file_exists($backup_file)) {
    die("Backup file not found.");
}

// Read the import file
$sql = file_get_contents($backup_file);

// Replace charset if needed
$sql = str_replace('utf8mb4_0900_ai_ci', 'utf8mb4_unicode_ci', $sql);

// Split into queries
$queries = explode(';', $sql);

foreach ($queries as $query) {
    $query = trim($query);
    if (!empty($query)) {
        if (stripos($query, 'CREATE TABLE') === 0) {
            // Modify the query to avoid error if table exists
            if (stripos($query, 'IF NOT EXISTS') === false) {
                $query = preg_replace('/^CREATE TABLE/i', 'CREATE TABLE IF NOT EXISTS', $query);
            }

            // Execute the create table query
            if (!$conn->query($query)) {
                echo "Error creating table: " . $conn->error . "\n";
            } else {
                echo "Table created or already exists.\n";
            }
        } else if (stripos($query, 'INSERT INTO') === 0) {
            // Use INSERT IGNORE to avoid duplicate entry errors
            $query = preg_replace('/^INSERT INTO/i', 'INSERT IGNORE INTO', $query);

            // Execute the insert query
            if (!$conn->query($query)) {
                echo "Error inserting data: " . $conn->error . "\n";
            } else {
                echo "Data inserted successfully.\n";
            }
        } else {
            // Execute any other queries
            if (!$conn->query($query)) {
                echo "Error executing query: " . $conn->error . "\n";
            }
        }
    }
}

header("location: add_product.php?password=movementplayer&message=Import successful");
?>