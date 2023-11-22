<?php
// Replace these values with your actual database credentials
$host = "localhost";
$username = "root";
$password = "";
$database = "dmqp_db";
$table = "login";

// Establish a connection to the database
$connection = mysqli_connect($host, $username, $password, $database);

// Check if the connection is successful
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

// Retrieve user input from the login form
$user = mysqli_real_escape_string($connection, $_POST['username']);
$pass = mysqli_real_escape_string($connection, $_POST['password']);

// Query to check if the username and password match
$query = "SELECT * FROM $table WHERE username='$user' AND password_s='$pass'";
$result = mysqli_query($connection, $query);

// Check if the query was successful
if ($result) {
    // Check if there is a match in the database
    if (mysqli_num_rows($result) == 1) {
        // Redirect to index.php on successful login
        header("Location: index.php");
        exit();
    } else {
        echo "Invalid username or password.";
    }
} else {
    echo "Error: " . mysqli_error($connection);
}

// Close the database connection
mysqli_close($connection);
?>