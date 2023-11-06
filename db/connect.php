<?php

$conn = mysqli_connect("localhost","root","","dmqp_db");

if($conn) {
// echo "Connection ok";
}

else {
echo "Connection failed".mysqli_connect_error();
}


?>