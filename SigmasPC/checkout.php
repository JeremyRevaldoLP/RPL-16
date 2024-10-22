<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sigmaspc";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize an array to hold selected product IDs
$selectedProducts = $_POST['selected_products'] ?? [];
$budget = $_POST['budget'] ?? ''; // Get budget from POST

// Check if selected products are set and process them
if (isset($_POST['selected_products'])) {
    $selected_products = $_POST['selected_products']; // This will be a comma-separated string
    $selectedProducts = explode(',', $selected_products); // Convert it to an array
}

// Prepare an array to hold product data
$products = [];
$totalPrice = 0;

if (!empty($selectedProducts)) {
    // Create a placeholder string for the SQL query
    $placeholders = implode(',', array_fill(0, count($selectedProducts), '?'));

    // Prepare the SQL statement to fetch product details
    $sql = "SELECT name, price, link, image FROM products WHERE id IN ($placeholders)"; // Added image to select
    $stmt = $conn->prepare($sql);

    // Bind parameters
    $types = str_repeat('i', count($selectedProducts)); // 'i' for integer
    $stmt->bind_param($types, ...$selectedProducts);

    // Execute the query
    $stmt->execute();
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
        $products[] = $row;
        $totalPrice += $row['price'];
    }

    $stmt->close();
} else {
    echo "No products selected.";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout | Sigmas PC</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stylesearch.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.php">
        <img src="images/web/SigmaL.png" alt="Sigmas PC Logo" width="65" height="65">
    </a>
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="search.php">Search</a></li>
        <li class="nav-item"><a class="nav-link" href="about.php">About Us</a></li>
    </ul>
</nav>

<div class="container my-4">
    <h2>Checkout</h2>
    <?php if (!empty($products)): ?>
        <h5>You have selected the following products:</h5>
        <ul class="list-group">
            <?php foreach ($products as $product): ?>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-4">
                            <img src="images/uploads/<?php echo htmlspecialchars($product['image']); ?>" alt="<?php echo htmlspecialchars($product['name']); ?>" style="width: 100px; height: auto;">
                        </div>
                        <div class="col-8">
                            <strong><?php echo htmlspecialchars($product['name']); ?></strong> - $<?php echo htmlspecialchars($product['price']); ?>
                            <br>
                            <a href="<?php echo htmlspecialchars($product['link']); ?>" target="_blank">View Product</a>
                        </div>
                    </div>
                </li>
            <?php endforeach; ?>
        </ul>
        <h4 class="mt-4">Total Price: $<?php echo number_format($totalPrice, 2); ?></h4>

        <?php if ($budget === '' || !is_numeric($budget)): ?>
            <div class="alert alert-warning" role="alert">Please enter a valid budget!</div>
        <?php elseif ($totalPrice > $budget): ?>
            <div class="alert alert-danger" role="alert">You are over your budget by $<?php echo number_format($totalPrice - $budget, 2); ?>!</div>
        <?php elseif ($totalPrice < $budget): ?>
            <div class="alert alert-success" role="alert">You are under your budget by $<?php echo number_format($budget - $totalPrice, 2); ?>!</div>
        <?php endif; ?>
    <?php else: ?>
        <p>No products selected.</p>
    <?php endif; ?>
</div>

</body>
</html>

<?php
$conn->close();
?>
