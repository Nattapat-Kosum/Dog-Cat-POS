<?php  

    include "../src/db/connect.php";


    if (empty($_POST['id'])) {

        // print_r($_POST);

        if (isset($_POST['fname']) && isset($_POST['lname']) && isset($_POST['type']) && isset($_POST['sex'])
            && isset($_POST['phone']) && isset($_POST['points']) && isset($_POST['address'])) {

        // สร้าง member

        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $type = $_POST['type'];
        $sex = $_POST['sex'];
        $phone = $_POST['phone'];
        $points = $_POST['points'];
        $address = $_POST['address'];

        $stmt = $conn->prepare("INSERT INTO member (fname, lname, phone, type, points, address, sex) 
        VALUES (:fname, :lname, :phone, :type, :points, :address, :sex)");

        $stmt->bindParam(":fname", $fname, PDO::PARAM_STR);
        $stmt->bindParam(":lname", $lname, PDO::PARAM_STR);
        $stmt->bindParam(":phone", $phone, PDO::PARAM_STR);
        $stmt->bindParam(":type", $type, PDO::PARAM_STR);
        $stmt->bindParam(":points", $points, PDO::PARAM_STR);
        $stmt->bindParam(":address", $address, PDO::PARAM_STR);
        $stmt->bindParam(":sex", $sex, PDO::PARAM_STR);

        $result = $stmt->execute();

        if ($result) {
            header ("Location:" . $_SERVER['HTTP_REFERER']);
            exit();
        } else {
            echo "error";
        }

     } else {
        echo "error";
     }


    } else {
        //update member
        if (isset($_POST['id']) && (!empty($_POST['id']))) {

            $id = $_POST['id'];
            $fname = $_POST['fname'];
            $lname = $_POST['lname'];
            $phone = $_POST['phone'];
            $type = $_POST['type'];
            $points = $_POST['points'];
            $address = $_POST['address'];
            $sex = $_POST['sex'];
            
            $sql = "UPDATE member SET fname=:fname, lname=:lname, phone=:phone, type=:type, points=:points, address=:address,sex=:sex WHERE id = :id";

            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':fname', $fname);
            $stmt->bindParam(':lname', $lname);
            $stmt->bindParam(':phone', $phone);
            $stmt->bindParam(':type', $type);
            $stmt->bindParam(':points', $points);
            $stmt->bindParam(':address', $address);
            $stmt->bindParam(':sex', $sex);
            $stmt->bindParam(':id', $id);

            $result = $stmt->execute();

            if ($result) {
                header ("Location:" . $_SERVER['HTTP_REFERER']);
                exit();
            } else {
                echo "error";
            }




        }
    }


?>