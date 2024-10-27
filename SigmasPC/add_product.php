<?php
// Define the password (you can store this in a more secure place if needed)
$admin_password = 'movementplayer';

// Check if the password is present in the URL query string
if (!isset($_GET['password']) || $_GET['password'] !== $admin_password) {
    // If the password is missing or incorrect, block access
    die("Access denied. You are not authorized to view this page.");
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sigmaspc"; // Ensure this is your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to update the SQL file
function updateSQLFile($conn) {
    $sql = "SELECT * FROM products";
    $result = $conn->query($sql);
    
    $output = "USE sigmaspc;\n\n"; // Start with the database name

    while ($row = $result->fetch_assoc()) {
        $output .= "INSERT INTO products (id, name, price, image, category) VALUES (";
        $output .= $row['id'] . ", ";
        $output .= "'" . $conn->real_escape_string($row['name']) . "', ";
        $output .= $row['price'] . ", ";
        $output .= "'" . $conn->real_escape_string($row['image']) . "', ";
        $output .= "'" . $conn->real_escape_string($row['category']) . "');\n";
        $output .= "'" . $conn->real_escape_string($row['link']) . "');\n";
    }

    // Write to the SQL file
    file_put_contents('db/sigmaspc.sql', $output);
}

// Handle product deletion
if (isset($_GET['delete_id'])) {
    $delete_id = $_GET['delete_id'];

    // Get the image path to delete it from the folder
    $sql_image = "SELECT image FROM products WHERE id = ?";
    $stmt_image = $conn->prepare($sql_image);
    $stmt_image->bind_param("i", $delete_id);
    $stmt_image->execute();
    $result_image = $stmt_image->get_result();
    $row_image = $result_image->fetch_assoc();
    $image_path = "images/uploads/" . $row_image['image'];

    // Delete the image from the folder
    if (file_exists($image_path)) {
        unlink($image_path);
    }

    // Delete the product from the database
    $sql = "DELETE FROM products WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $delete_id);

    if ($stmt->execute()) {
        echo "Product deleted successfully.";
        updateSQLFile($conn); // Update the SQL file after deletion
    } else {
        echo "Error deleting product: " . $conn->error;
    }
}

// Handle editing existing products
$edit_mode = false; // Flag to determine whether we're editing or adding a product
$edit_id = null;

if (isset($_GET['edit_id'])) {
    $edit_id = $_GET['edit_id'];
    $edit_mode = true;

    // Fetch the product data to pre-fill the form
    $sql = "SELECT * FROM products WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $edit_id);
    $stmt->execute();
    $result = $stmt->get_result();
    $edit_product = $result->fetch_assoc();
}

// Handle adding or updating products
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $price = $_POST['price'];
    $link = $_POST['link']; // Get the link input
    $image = $_FILES['image']['name'];
    $target_dir = "images/uploads/";
    $target_file = $target_dir . basename($image);

    // Retrieve selected categories
    $categories = isset($_POST['category']) ? implode(', ', $_POST['category']) : '';

    // If editing
    if ($edit_mode && $edit_id) {
        if (!empty($image)) {
            move_uploaded_file($_FILES['image']['tmp_name'], $target_file);
            $sql = "UPDATE products SET name = ?, price = ?, image = ?, category = ?, link = ? WHERE id = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sssssi", $name, $price, $image, $categories, $link, $edit_id);
        } else {
            // Update without changing the image
            $sql = "UPDATE products SET name = ?, price = ?, category = ?, link = ? WHERE id = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("ssssi", $name, $price, $categories, $link, $edit_id);
        }

        if ($stmt->execute()) {
            // Redirect back to the main add product page without the edit_id
            header("Location: add_product.php?password=movementplayer");
            exit; // Stop further script execution
        } else {
            echo "Error updating product: " . $conn->error;
        }
    }
    // If adding a new product
    else {
        if (move_uploaded_file($_FILES['image']['tmp_name'], $target_file)) {
            $sql = "INSERT INTO products (name, price, image, category, link) VALUES (?, ?, ?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sssss", $name, $price, $image, $categories, $link);
            if ($stmt->execute()) {
                echo "New product added successfully";
                updateSQLFile($conn); // Update the SQL file after adding a new product
                header("location: export.php");
            } else {
                echo "Error: " . $conn->error;
            }
        } else {
            echo "Failed to upload image.";
        }
    }
}

// Fetch all products
$sql = "SELECT * FROM products";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product(ADMIN) | Sigmas PC</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script>
        // After the page loads, remove password in the url
        window.onload = function() {
            history.replaceState(null, null, window.location.pathname);
        };
    </script>    
</head>
<body>
    <div class="admin-container mt-5">
        <h1>ADMINS PAGE</h1>
        <h2><?php echo $edit_mode ? "Edit Product" : "Add New Product"; ?></h2>
        <form action="add_product.php<?php echo $edit_mode ? '?edit_id=' . $edit_id . '&password=movementplayer' : '?password=movementplayer'; ?>" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="name" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="name" name="name" value="<?php echo $edit_mode ? $edit_product['name'] : ''; ?>" required>
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Product Price ($)</label>
                <input type="number" class="form-control" id="price" name="price" step="0.01" value="<?php echo $edit_mode ? $edit_product['price'] : ''; ?>" required>
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">Product Image</label>
                <input type="file" class="form-control" id="image" name="image" <?php echo $edit_mode ? '' : 'required'; ?>>
                <?php if ($edit_mode): ?>
                    <img src="images/uploads/<?php echo $edit_product['image']; ?>" alt="Current Image" width="100">
                <?php endif; ?>
            </div>
            <div class="mb-3">
                <label for="link" class="form-label">Product Link</label>
                <input type="url" class="form-control" id="link" name="link" value="<?php echo $edit_mode ? $edit_product['link'] : ''; ?>" required>
            </div>

            <!-- Add this section for product categories -->
            <div class="mb-3">
                <label for="category" class="form-label">Product Category</label><br>
                <input type="checkbox" id="cpu" name="category[]" value="CPU" <?php echo ($edit_mode && strpos($edit_product['category'], 'CPU') !== false) ? 'checked' : ''; ?>>
                <label for="cpu">CPU</label><br>
                <input type="checkbox" id="cooler" name="category[]" value="CPU Cooler" <?php echo ($edit_mode && strpos($edit_product['category'], 'CPU Cooler') !== false) ? 'checked' : ''; ?>>
                <label for="cooler">CPU Cooler</label><br>
                <input type="checkbox" id="motherboard" name="category[]" value="Motherboard" <?php echo ($edit_mode && strpos($edit_product['category'], 'Motherboard') !== false) ? 'checked' : ''; ?>>
                <label for="motherboard">Motherboard</label><br>
                <input type="checkbox" id="memory" name="category[]" value="Memory" <?php echo ($edit_mode && strpos($edit_product['category'], 'Memory') !== false) ? 'checked' : ''; ?>>
                <label for="memory">Memory</label><br>
                <input type="checkbox" id="storage" name="category[]" value="Storage" <?php echo ($edit_mode && strpos($edit_product['category'], 'Storage') !== false) ? 'checked' : ''; ?>>
                <label for="storage">Storage</label><br>
                <input type="checkbox" id="video_card" name="category[]" value="Video Card" <?php echo ($edit_mode && strpos($edit_product['category'], 'Video Card') !== false) ? 'checked' : ''; ?>>
                <label for="video_card">Video Card</label><br>
                <input type="checkbox" id="case" name="category[]" value="Case" <?php echo ($edit_mode && strpos($edit_product['category'], 'Case') !== false) ? 'checked' : ''; ?>>
                <label for="case">Case</label><br>
                <input type="checkbox" id="power_supply" name="category[]" value="Power Supply" <?php echo ($edit_mode && strpos($edit_product['category'], 'Power Supply') !== false) ? 'checked' : ''; ?>>
                <label for="power_supply">Power Supply</label><br>
                <input type="checkbox" id="operating_system" name="category[]" value="Operating System" <?php echo ($edit_mode && strpos($edit_product['category'], 'Operating System') !== false) ? 'checked' : ''; ?>>
                <label for="operating_system">Operating System</label><br>
                <input type="checkbox" id="monitor" name="category[]" value="Monitor" <?php echo ($edit_mode && strpos($edit_product['category'], 'Monitor') !== false) ? 'checked' : ''; ?>>
                <label for="monitor">Monitor</label>
            </div>

            <button type="submit" class="btn btn-primary"><?php echo $edit_mode ? "Update Product" : "Add Product"; ?></button>
        </form>

        <form action="import.php?password=movementplayer" method="post">
                <button type="submit" class="btn btn-success">Import Data</button>
        </form>

        <h2 class="mt-5">Existing Products</h2>
        <table class="table" id="productTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Category</th>
                    <th>Link</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($product = $result->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo $product['id']; ?></td>
                        <td><?php echo $product['name']; ?></td>
                        <td><?php echo $product['price']; ?></td>
                        <td><img src="images/uploads/<?php echo $product['image']; ?>" alt="Product Image" width="100"></td>
                        <td><?php echo $product['category']; ?></td>
                        <td class="link-column"><a href="<?php echo $product['link']; ?>" target="_blank"><?php echo $product['link']; ?></a></td>
                        <td>
                            <a href="add_product.php?edit_id=<?php echo $product['id']; ?>&password=<?php echo $admin_password; ?>" class="btn btn-warning btn-sm">Edit</a>
                            <a href="add_product.php?delete_id=<?php echo $product['id']; ?>&password=<?php echo $admin_password; ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                        </td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script>
    $(document).ready(function() {
        $('.table').DataTable({
            paging: true,  // Enables pagination
            searching: true,  // Enables search functionality
            order: [[0, 'asc']],  // Sorts by the first column by default
            columnDefs: [
                { orderable: false, targets: [3, 4, 6] }  // Disable sorting for image and action columns
            ]
        });
    });
    </script>
</body>
</html>

<?php
$conn->close();
?>
