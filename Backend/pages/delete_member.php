<?php 
session_start();
if (!isset($_SESSION['user_id'])) {
    header("location: ../../login-register/login.php");
}

include ("../../src/db/connect.php");

if (isset($_GET['id']) && !empty($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "DELETE FROM member WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(":id", $id);

    $stmt->execute();

    header("location: member.php");
    exit();

}


?>