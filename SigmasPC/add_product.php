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
    $image = $_FILES['image']['name'];
    $target_dir = "images/uploads/";
    $target_file = $target_dir . basename($image);

    // If editing
    if ($edit_mode && $edit_id) {
        if (!empty($image)) {
            move_uploaded_file($_FILES['image']['tmp_name'], $target_file);
            $sql = "UPDATE products SET name = ?, price = ?, image = ? WHERE id = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sssi", $name, $price, $image, $edit_id);
        } else {
            // Update without changing the image
            $sql = "UPDATE products SET name = ?, price = ? WHERE id = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("ssi", $name, $price, $edit_id);
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
            $sql = "INSERT INTO products (name, price, image) VALUES ('$name', '$price', '$image')";
            if ($conn->query($sql) === TRUE) {
                echo "New product added successfully";
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
    <title>Add Product | PC Component Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
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
            <button type="submit" class="btn btn-primary"><?php echo $edit_mode ? "Update Product" : "Add Product"; ?></button>
        </form>

        <h2 class="mt-5">Existing Products</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row['id'] . "</td>";
                        echo "<td>" . $row['name'] . "</td>";
                        echo "<td>$" . $row['price'] . "</td>";
                        echo "<td><img src='images/uploads/" . $row['image'] . "' alt='" . $row['name'] . "' width='100'></td>";
                        echo "<td>
                                <a href='add_product.php?edit_id=" . $row['id'] . "&password=movementplayer' class='btn btn-primary'>Edit</a>
                                <a href='add_product.php?delete_id=" . $row['id'] . "&password=movementplayer' class='btn btn-danger' onclick='return confirm(\"Are you sure you want to delete this product?\");'>Delete</a>
                              </td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='5'>No products found.</td></tr>";
                }
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>

<?php
$conn->close();
?>
