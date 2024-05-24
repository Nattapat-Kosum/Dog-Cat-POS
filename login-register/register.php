<?php include ("./header-login.php");

if (!empty($_POST['username']) && !empty($_POST['password']) && !empty($_POST['confirm_password'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    if($password != $confirm_password) {
        echo "<script>alert('รหัสผ่านไม่ตรงกัน')</script>";
    } else {

        $password = password_hash($password, PASSWORD_DEFAULT);

        $sql = "INSERT INTO users (username, password) VALUES (:username, :password)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':password', $password);
        
        if($stmt->execute()) {
            echo "<script>alert('ลงทะเบียนสำเร็จ')</script>";
            header("location:login.php");
            exit();
        } else {
            echo "<script>alert('ลงทะเบียนล้มเหลว')</script>";
        }
    }
}
?>

<title>Register</title>

    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="row border rounded-5 p-3 bg-white shadow box-area">
            <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box">
                <div class="login-image mb-3">
                    <img src="../src/img/pet-shop.jpg" class="img-fluid rounded-circle" alt="">
                </div>
                <p class="text-white fs-2" style="font-weight: 600;">ยินดีต้อนรับ</p>
                <small class="text-white">Lorem ipsum dolor sit amet consectetur adipisicing elit.</small>
            </div>
            
            <div class="col-md-6 right-box">
                <div class="row algin-items-center">

                    <form action="./register.php" method="">
                        <div class="header-text mb-3">
                            <h2>หน้าสมัครสมาชิก</h2>
                            <p>กรอกข้อมูลเพื่อสมัครสมาชิก</p>
                        </div>

                        <div class="input-group mb-3">
                            <input class="form-control" type="email" name="username" placeholder="Email" aria-label="default input example" required>
                        </div>

                        <div class="input-group mb-3">
                            <input class="form-control" type="password" name="password" placeholder="Password" aria-label="default input example" required>
                        </div>

                        <div class="input-group mb-3">
                            <input class="form-control" type="password" name="confirm_password" placeholder="Confirm Password" aria-label="default input example" required>
                        </div>

                        <div class="input-group mb-3">
                            <button type="submit" class="btn btn-lg btn-primary w-100 fs-6">สมัครสมาชิก</button>
                        </div>

                        <div class="row">
                            <small>Have account? <a href="./login.php">Sign In</a></small>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    

<?php include ("../footer.php") ?>