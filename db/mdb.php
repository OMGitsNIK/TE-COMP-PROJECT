<!-- <?php 
$servername = "localhost";
    $dusername = "root";
    $dpassword = "";
    $dbname = "dmqp_db";

    $conn = mysqli_connect($servername,$dusername,$dpassword,$dbname);
    

    if($conn) {
        // echo "Connection ok";
    }

    else {
        echo "Connection failed".mysqli_connect_error();
    }
    $sql =  "INSERT INTO 'registration' (fullname,username,email)VALUES('pranav','djdhf','naikskpapa3')";


    $data = mysqli_query($conn,$sql);

    if(!mysqli_query($conn,$sql)){
        echo "error: " .mysqli_error($conn);
    }

    else {
        echo "Inserted succesfully";
    }

    ?>