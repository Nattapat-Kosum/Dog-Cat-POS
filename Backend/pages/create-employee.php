<?php 
    session_start();
    if (!isset($_SESSION['user_id'])) {
        header("location: ../../login-register/login.php");
    }

    ob_start();

    require_once "../../src/db/connect.php";

    $fname = $lname = $email = $password = $phone = $address = $salary = $birthday = $start_date = $end_date = "";

    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $phone = $_POST['phone'];
        $address = $_POST['address'];
        $salary = $_POST['salary'];
        $birthday = $_POST['birthday'];
        $start_date = $_POST['start_date'];
        $end_date = $_POST['end_date'];
        $username = $_POST['email'];

        $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

        $sql = "INSERT INTO users (fname, lname, email, username, password, phone, address, salary, birthday, start_date, end_date)
        VALUES (:fname, :lname, :email, :username, :password, :phone, :address, :salary, :birthday, :start_date, :end_date)";

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(":fname", $fname);
        $stmt->bindParam(":lname", $lname);
        $stmt->bindParam(":email", $email);
        $stmt->bindParam(":username", $username);
        $stmt->bindParam(":password", $password);
        $stmt->bindParam(":phone", $phone);
        $stmt->bindParam(":address", $address);
        $stmt->bindParam(":salary", $salary);
        $stmt->bindParam(":birthday", $birthday);
        $stmt->bindParam(":start_date", $start_date);
        $stmt->bindParam(":end_date", $end_date);

        $stmt->execute();
        header("location: employee.php");
        exit();
    }

    ob_end_flush();

    include ("../layout/header-create.php");
?>

    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mt-5 mb-3">เพิ่มพนักงาน</h2>

                <form action="create-employee.php" method="post">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="">ชื่อจริง <span class="text-red">*</span></label>
                            <input type="text" name="fname" value="" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">นามสกุล <span class="text-red">*</span></label>
                            <input type="text" name="lname" value="" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">อีเมล์ <span class="text-red">*</span></label>
                            <input type="email" name="email" value="" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">รหัสผ่าน <span class="text-red">*</span></label>
                            <input type="password" name="password" value="" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">เบอร์โทรติดต่อ <span class="text-red">*</span></label>
                            <input type="text" name="phone" value="" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">ที่อยู่ <span class="text-red">*</span></label>
                            <input type="text" name="address" value="" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">เงินเดือน <span class="text-red">*</span></label>
                            <input type="number" name="salary" value="" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">วันเกิด <span class="text-red">*</span></label>
                            <input type="date" name="birthday" value="" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">วันที่เริ่มงาน <span class="text-red">*</span></label>
                            <input type="date" name="start_date" value="" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">วันที่ออกงาน</label>
                            <input type="date" name="end_date" value="" class="form-control">
                        </div>

                        <div class="form-group mt-2">
                            <a href="./employee.php" class="btn btn-light border">ย้อนกลับ</a>
                            <button type="submit" class="btn btn-primary">ยืนยัน</button>
                        </div>

                    </div>
                </form>

            </div>
        </div>
    </div>
  </div>

  <?php include ("../layout/footer-create.php"); ?>