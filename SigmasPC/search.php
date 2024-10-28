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

$budget = $_GET['budget'] ?? '';
$search_query = $_GET['search_query'] ?? '';
$categories = $_GET['categories'] ?? []; // Get selected categories

// Define your categories
$all_categories = [
    'CPU', 
    'CPU Cooler', 
    'Motherboard', 
    'Memory', 
    'Storage', 
    'Video Card', 
    'Case', 
    'Power Supply', 
    'Operating System', 
    'Monitor',
    'Mukaku'
];

$params = []; // Initialize an array to hold parameters for bind_param
$types = ""; // String to hold type definitions

if (!empty($budget) || !empty($search_query) || !empty($categories)) {
    $sql = "SELECT * FROM products WHERE 1=1"; // Start with a true condition

    // Add budget condition
    if (!empty($budget)) {
        $sql .= " AND price <= ?";
        $params[] = $budget; // Add to params
        $types .= "d"; // 'd' for double
    }

    // Add search query condition
    if (!empty($search_query)) {
        $sql .= " AND LOWER(name) LIKE ?";
        $params[] = "%" . strtolower($search_query) . "%"; // Add to params
        $types .= "s"; // 's' for string
    }

    // Add category conditions
    if (!empty($categories)) {
        $placeholders = implode(',', array_fill(0, count($categories), '?'));
        $sql .= " AND category IN ($placeholders)";
        foreach ($categories as $category) {
            $params[] = $category; // Add categories to params
            $types .= "s"; // 's' for string for each category
        }
    }

    // Prepare statement
    $stmt = $conn->prepare($sql);

    // Bind parameters if there are any
    if (!empty($params)) {
        // Use the call_user_func_array to bind parameters
        $stmt->bind_param($types, ...$params);
    }

    $stmt->execute();
    $result = $stmt->get_result();
} else {
    $result = null;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search | Sigmas PC</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stylesearchandcheckout.css">
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
        <li class="nav-item"><a class="nav-link" href="search.php">Prasstyo Adhi</a></li>
    </ul>
</nav>

<div class="container">
    <h2 class="my-4">Search Products by Budget/Product name</h2>
    <form action="search.php" method="get">
        <label for="budget">Enter your budget ($):</label>
        <input type="number " name="budget" class="form-control" placeholder="Enter your budget" value="<?php echo htmlspecialchars($budget); ?>">
        <label for="search_query">Search by product name:</label>
        <input type="text" name="search_query" class="form-control" placeholder="Enter product name" value="<?php echo htmlspecialchars($search_query); ?>">

        <h5>Select Categories:</h5>
        <?php foreach ($all_categories as $category): ?>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" name="categories[]" value="<?php echo htmlspecialchars($category); ?>" <?php echo in_array($category, $categories) ? 'checked' : ''; ?>>
                <label class="form-check-label"><?php echo htmlspecialchars($category); ?></label>
            </div>
        <?php endforeach; ?>

        <button type="submit" class="btn btn-primary my-3">Search</button>
    </form>

    <div class="row">
        <?php
        if ($result !== null && $result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                ?>
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/uploads/<?php echo htmlspecialchars($row['image']); ?>" class="card-img-top" alt="<?php echo htmlspecialchars($row['name']); ?>">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo htmlspecialchars($row['name']); ?></h5>
                            <p class="card-text">$<?php echo htmlspecialchars($row['price']); ?></p>
                            <!-- Checkbox to select product -->
                            <input type="checkbox" class="product-checkbox" data-id="<?php echo htmlspecialchars($row['id']); ?>" data-price="<?php echo htmlspecialchars($row['price']); ?>"> Select
                        </div>
                    </div>
                </div>
                <?php
            }
        } else {
            echo "<p>Please enter a budget or search query to find products.</p>";
        }
        ?>
    </div>

    <!-- Total Price Display -->
    <div class="total-container">
        <p class="total-price">Total: $0</p>
    </div>

    <!-- Form for Checkout -->
    <form action="checkout.php" method="post">
        <input type="hidden" id="selected-products" name="selected_products" value=""> <!-- Hidden input to store selected product IDs -->
        <input type="hidden" name="budget" value="<?php echo htmlspecialchars($budget); ?>"> <!-- Hidden input for budget -->
        <button type="submit" class="btn btn-success checkout-button">Checkout</button>
    </form>

    <script>
        // Select all checkboxes, the total display element, and the hidden input
        const checkboxes = document.querySelectorAll('.product-checkbox');
        const totalDisplay = document.querySelector('.total-price');
        const selectedProductsInput = document.getElementById('selected-products');

        // Function to update the total price
        function updateTotal() {
            let total = 0;

            // Loop through all checkboxes and add the price of checked items
            checkboxes.forEach(checkbox => {
                if (checkbox.checked) {
                    total += parseFloat(checkbox.getAttribute('data-price'));
                }
            });

            // Update the total display
            totalDisplay.innerText = 'Total: $' + total.toFixed(2);
        }

        // Function to update the hidden input with selected product IDs
        function updateSelectedProducts() {
            const selectedIds = [];
            checkboxes.forEach(checkbox => {
                if (checkbox.checked) {
                    selectedIds.push(checkbox.getAttribute('data-id'));
                }
            });
            selectedProductsInput.value = selectedIds.join(','); // Join selected IDs with commas
        }

        // Add an event listener to each checkbox to recalculate the total and update the hidden input when changed
        checkboxes.forEach(checkbox => {
            checkbox.addEventListener('change', () => {
                updateTotal();
                updateSelectedProducts();
            });
        });
    </script>

</body>
</html>

<?php
if (isset($stmt)) {
    $stmt->close();
}
$conn->close();
?>
