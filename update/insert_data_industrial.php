<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $auth_id = $_POST["Auth_ID"];
    $date = $_POST["Date"];
    $industry = $_POST["Industry"];
    $id = $_POST["ID"];
    $roll_no = $_POST["Roll_No"];
    $activity_type = $_POST["activity_type"];

    $conn = mysqli_connect("localhost", "root", "", "dmqp_db");

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO your_table_name (Auth_ID, Date, Industry, ID, Roll_No, activity_type)
            VALUES ('$auth_id', '$date', '$industry', '$id', '$roll_no', '$activity_type')";

    if ($conn->query($sql) === TRUE) {
        echo "New entry added successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
