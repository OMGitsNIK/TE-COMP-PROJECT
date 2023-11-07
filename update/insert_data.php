<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $doi = $_POST["doi"];
    $id = $_POST["id"];
    $roll_no = $_POST["roll_no"];
    $title = $_POST["title"];
    $journal_name = $_POST["journal_name"];
    $volume = $_POST["volume"];
    $series = $_POST["series"];
    $year = $_POST["year"];
    $domain = $_POST["domain"];
    $activity_type = $_POST["activity_type"];

    $conn = mysqli_connect("localhost", "root", "", "dmqp_db");
    $sql = "INSERT INTO research_paper_publication (DOI, ID, Roll_No, Title, `Journal name`, Volume, Series, Year, Domain, activity_type)
            VALUES ('$doi', '$id', '$roll_no', '$title', '$journal_name', '$volume', '$series', '$year', '$domain', '$activity_type')";
    if ($conn->query($sql) === TRUE) {
        echo "New entry added successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
}
?>
