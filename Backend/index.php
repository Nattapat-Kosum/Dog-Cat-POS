<?php 

session_start();
if (!isset($_SESSION['user_id'])) {
    header("location: ../login-register/login.php");
}


include "./layout/header.php"; 


?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 ml-4">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <li class="nav-item d-none d-sm-inline-block active ml-4 p-2">
        <a href="../index.php" class="nav-link btn btn-success border text-white">หน้าการขายสินค้า</a>
    </li>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<?php include "./layout/footer.php"; ?>
  