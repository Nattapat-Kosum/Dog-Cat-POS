<?php 

    include ("../../src/db/connect.php");

    if (isset($_POST['id']) && !empty($_POST['id'])) {
        $id = $_POST['id'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $address = $_POST['address'];
        $salary = $_POST['salary'];
        $birthday = $_POST['birthday'];
        $start_date = $_POST['start_date'];
        $end_date = $_POST['end_date'];


        $sql = "UPDATE users SET fname = :fname, lname = :lname, email = :email, phone = :phone, address = :address,
        salary = :salary, birthday = :birthday, start_date = :start_date, end_date = :end_date WHERE id = :id";

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(":fname", $fname);
        $stmt->bindParam(":lname", $lname);
        $stmt->bindParam(":email", $email);
        $stmt->bindParam(":phone", $phone);
        $stmt->bindParam(":address", $address);
        $stmt->bindParam(":salary", $salary);
        $stmt->bindParam(":birthday", $birthday);
        $stmt->bindParam(":start_date", $start_date);
        $stmt->bindParam(":end_date", $end_date);
        $stmt->bindParam(":id", $id);

        if ($stmt->execute()) {
            header("location: employee.php");
            exit();
        } else {
            echo "Error updating recrd";
            header("location: error.php");
            exit();
        }
    } else {
        header("location: error.php");
        exit();
    }

?>