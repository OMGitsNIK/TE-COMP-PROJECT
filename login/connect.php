<?php

    include 'connect1.php';

    if (isset($_POST['login'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];

    $sql = "SELECT * FROM `login` WHERE username = '$username' AND  password_1= '$password' ";

    $r = mysqli_query($conn,$sql);

    $num = mysqli_num_rows($r);

    if ($num ==1) {
        $login = true;
        echo " YOU are logged in \n";
        echo "\n HI $username";

    }
    else {
        echo "Invalid credintial";
    }

    }

?>