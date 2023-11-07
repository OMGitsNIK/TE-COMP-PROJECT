<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $academic_year = $_POST["Academic_year"];
    $type_of_event = $_POST["Type_of_event"];
    $level_of_event = $_POST["Level_of_event"];
    $date = $_POST["Date"];
    $organized_by = $_POST["Organized_by"];
    $no_of_students = $_POST["No_of_students"];
    $prizes_won = $_POST["Prizes_won"];
    $roll_no = $_POST["Roll_No"];
    $activity_type = $_POST["activity_type"];

    $conn = mysqli_connect("localhost", "root", "", "dmqp_db"); // Replace 'your_database_name' with your actual database name

    $sql = "INSERT INTO cultural_activities (Academic_year, Type_of_event, Level_of_event, Date, Organized_by, No_of_students, Prizes_won, Roll_No, activity_type)
            VALUES ('$academic_year', '$type_of_event', '$level_of_event', '$date', '$organized_by', '$no_of_students', '$prizes_won', '$roll_no', '$activity_type')";

    if ($conn->query($sql) === TRUE) {
        echo "New entry added successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
