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

if (!empty($budget) || !empty($search_query)) {
    $sql = "SELECT * FROM products";

    if (!empty($budget) && !empty($search_query)) {
        $sql .= " WHERE price <= ? AND LOWER(name) LIKE ?";
        $stmt = $conn->prepare($sql);
        // Create new variables to hold the values of $budget and $search_query
        $budget_param = $budget;
        $search_query_param = "%" . strtolower($search_query) . "%";
        // Pass the new variables to the bind_param() function by reference
        $stmt->bind_param("ds", $budget_param, $search_query_param);
    } elseif (!empty($budget)) {
        $sql .= " WHERE price <= ?";
        $stmt = $conn->prepare($sql);
        // Create a new variable to hold the value of $budget
        $budget_param = $budget;
        // Pass the new variable to the bind_param() function by reference
        $stmt->bind_param("d", $budget_param);
    } elseif (!empty($search_query)) {
        $sql .= " WHERE LOWER(name) LIKE ?";
        $stmt = $conn->prepare($sql);
        // Create a new variable to hold the value of $search_query
        $search_query_param = "%" . strtolower($search_query) . "%";
        // Pass the new variable to the bind_param() function by reference
        $stmt->bind_param("s", $search_query_param);
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
    <title>Search | PC Component Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
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

<div class="container">
    <h2 class="my-4">Search Products by Budget/Product name</h2>
    <form action="search.php" method="get">
        <label for="budget">Enter your budget ($):</label>
        <input type="number" name="budget" class="form-control" placeholder="Enter your budget" value="<?php echo $budget; ?>">
        <label for="search_query">Search by product name:</label>
        <input type="text" name="search_query" class="form-control" placeholder="Enter product name" value="<?php echo $search_query; ?>">
        <button type="submit" class="btn btn-primary my-3">Search</button>
    </form>

    <div class="row">
        <?php
        if ($result !== null && $result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                ?>
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/uploads/<?php echo $row['image']; ?>" class="card-img-top" alt="<?php echo $row['name']; ?>">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $row['name']; ?></h5>
                            <p class="card-text">$<?php echo $row['price']; ?></p>
                            <!-- Checkbox to select product -->
                            <input type="checkbox" class="product-checkbox" data-price="<?php echo $row['price']; ?>"> Select
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
</div>

<script>
    // Select all checkboxes and the total display element
    const checkboxes = document.querySelectorAll('.product-checkbox');
    const totalDisplay = document.querySelector('.total-price');

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

    // Add an event listener to each checkbox to recalculate the total when changed
    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', updateTotal);
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