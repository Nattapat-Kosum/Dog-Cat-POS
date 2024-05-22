<?php
include 'src/db/connect.php';
if ($_GET['action'] == "list") {
    $id_product = implode(",", $_POST['id_product']);
    $pd_name = implode(",", $_POST['pd_name']);
    $price = implode(",", $_POST['price']);
    $count = implode(",", $_POST['count']);
    $sumprice = $_POST['sumprice'];
    $sumcount = $_POST['sumcount'];
    $date_now_sql = $_POST['date_now_sql'];
    $time_now_sql = $_POST['time_now_sql'];
    $money_input = $_POST['money_input'];
    $money_change = $_POST['money_change'];

    $idArr = $_POST['idArr'];
    $countArr = $_POST['countArr'];

    // เก็บรายละเอียดข้อมูลการขายแต่ละฟิลล์ของบิลนั้น ๆ  แล้วจะไปลบอัพเดทข้อมูลจำนวนสต๊อกของสินค้าที่มีอยู่ในฐานข้อมูล
    $sql = $conn->query("INSERT INTO receipt_list (id_product, pd_name,  price, count, date, time, sumprice, sumcount, money_input, money_change)
    VALUES ('$id_product', '$pd_name', ' $price', '$count', '$date_now_sql', '$time_now_sql', '$sumprice', '$sumcount', '$money_input', '$money_change')");

    for ($i = 0; $i < count($idArr); $i++) {
        $sql = $conn->query("UPDATE product SET stock = stock - $countArr[$i]
        WHERE id = $idArr[$i]");
    }
    header("location: index.php?homepage");
};
?>