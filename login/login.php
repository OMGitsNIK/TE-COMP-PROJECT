<?php 
 $servername = "localhost";
 $dusername = "root";
 $dpassword = "";
 $dbname = "try1";

 $conn = mysqli_connect($servername,$dusername,$dpassword,$dbname);
$conn = mysqli_connect("localhost","root","","try1");

if($conn) {
     echo "Connection ok";
}

else {
    echo "Connection failed".mysqli_connect_error();
}


?>