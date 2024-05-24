<?php 

    include ("../../src/db/connect.php");

    if (isset($_GET['id']) && !empty($_GET['id'])) {
        $id = $_GET['id'];
    
        $sql = "SELECT * FROM users WHERE id = :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(":id", $id);

        $stmt->execute();
        
        // ถ้าไม่เจอ id ให้วิ่งกลับไปที่หน้า employee.php
        if ($stmt->rowCount() == 0) {
            header("location: employee.php");
            exit();
        }

        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt = null;
        $conn = null;
    } else {
        header("location: error.php");
        exit();
    }

?>

<?php include "../layout/header-create.php"; ?>

<div class="content-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mt-5 mb-3">แก้ไขข้อมูลพนักงาน</h2>

                <form action="update_employee.php" method="post">
                <div class="row">
                        <div class="form-group col-md-6">
                            <label for="">ชื่อจริง</label>
                            <input type="text" name="fname" value="<?php echo $row['fname'] ?>" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">นามสกุล</label>
                            <input type="text" name="lname" value="<?php echo $row['lname'] ?>" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">อีเมล์</label>
                            <input type="email" name="email" value="<?php echo $row['email'] ?>" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">เบอร์โทรติดต่อ</label>
                            <input type="text" name="phone" value="<?php echo $row['phone'] ?>" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">ที่อยู่</label>
                            <input type="text" name="address" value="<?php echo $row['address'] ?>" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">เงินเดือน</label>
                            <input type="number" name="salary" value="<?php echo $row['salary'] ?>" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">วันเกิด</label>
                            <input type="date" name="birthday" value="<?php echo $row['birthday'] ?>" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">วันที่เริ่มงาน</label>
                            <input type="date" name="start_date" value="<?php echo $row['start_date'] ?>" class="form-control" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">วันที่ออกงาน</label>
                            <input type="date" name="end_date" value="<?php echo $row['end_date'] ?>" class="form-control">
                        </div>

                        <input type="hidden" name="id" value="<?php echo $row['id'] ?>">

                    </div>

                    <div class="form-group mt-2">
                        <a href="./employee.php" class="btn btn-light border">ย้อนกลับ</a>
                        <button type="submit" class="btn btn-primary">ยืนยัน</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>