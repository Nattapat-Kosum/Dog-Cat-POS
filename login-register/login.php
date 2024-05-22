<?php 

session_start();
include ("./header-login.php");

if (!empty($_POST['username']) && !empty($_POST['password'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE username = :username";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':username', $username);
    $stmt->execute();

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {

    if( password_verify($password, $user['password'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $user['username'];
        $_SESSION['role'] = $user['role'];
        echo "<script>window.location.href = '../index.php';</script>";

    } else {
        echo "<script>alert('รหัสผ่านไม่ถูกต้อง')</script>";
    }
    } else {
        // ถ้าผู้ใช้ไม่มีอยู่ในฐานข้อมูล
        echo "<script>alert('ไม่พบชื่อผู้ใช้นี้')</script>";
    }
}

?>
<title>Login</title>

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

                    <form action="./login.php" method="post">
                        <div class="header-text mb-3">
                            <h2>หน้าเข้าสู่ระบบ</h2>
                            <p>กรอกข้อมูลเพื่อเข้าสู่ระบบ</p>
                        </div>

                        <div class="input-group mb-3">
                            <input class="form-control" type="text" name="username" placeholder="Username" aria-label="default input example" required>
                        </div>

                        <div class="input-group mb-1">
                            <input class="form-control" type="password" name="password" placeholder="Password" aria-label="default input example" required>
                        </div>

                        <div class="mb-4 input-group d-flex justify-content-between">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="formCheck">
                                <label for="formCheck" class="form-check-label text-secondary"><small>Remember Me</small></label>
                            </div>

                            <div class="forgot">
                                <small><a href="#">Forgot Password?</a></small>
                            </div>
                        </div>

                        <div class="input-group mb-3">
                            <button type="submit" class="btn btn-lg btn-primary w-100 fs-6">เข้าสู่ระบบ</button>
                        </div>

                        <div class="row">
                            <small>Don't have account? <a href="./register.php">Sign Up</a></small>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    

<?php include ("../footer.php") ?>