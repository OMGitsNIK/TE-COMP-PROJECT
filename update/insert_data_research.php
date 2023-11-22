<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $doi = $_POST["DOI"];
    $id = $_POST["ID"];
    $roll_no = $_POST["Roll_No"];
    $title = $_POST["Title"];
    $journal_name = $_POST["Journal name"];
    $volume = $_POST["Volume"];
    $series = $_POST["Series"];
    $year = $_POST["Year"];
    $domain = $_POST["Domain"];
    $activity_type = $_POST["activity_type"];

    $conn = mysqli_connect("localhost", "root", "", "dmqp_db");
    $sql = "INSERT INTO `research_paper_publication`(`DOI`, `Title`, `Journal name`, `Volume`, `Series`, `Year`, `Domain`, `activity_type`, `Roll_No`, `ID`)
            VALUES ('$doi','$title', '$journal_name', '$volume', '$series', '$year', '$domain', '$activity_type','$roll_no','$id')";
    if ($conn->query($sql) === TRUE) {
        echo "New entry added successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
}
?>