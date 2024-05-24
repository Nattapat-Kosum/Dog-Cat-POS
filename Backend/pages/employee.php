<?php 

  session_start();
  if (!isset($_SESSION['user_id'])) {
      header("location: ../../login-register/login.php");
  }

  include "../layout/header-create.php";

  include ("../../src/db/connect.php");

  $sql = "SELECT * FROM users";
  $stmt = $conn->prepare($sql);

  $stmt->execute();
  $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>ข้อมูลพนักงาน</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">หน้าแรก</a></li>
              <li class="breadcrumb-item active">พนักงาน</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

          
            <div class="card">
              <div class="card-header">
              <div class="d-flex">

                <div class="p-2 flex-grow-1">
                    <h3 class="card-title">จัดการพนักงาน</h3>
                </div>

              <div class="p-2">
                <a href="create-employee.php" class="btn btn-block btn-primary">เพิ่มพนักงาน</a>
              </div>
            </div>
                

              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>ชื่อจริง</th>
                    <th>นามสกุล</th>
                    <th>อีเมล์</th>
                    <th>เบอร์โทร</th>
                    <th>เงินเดือน</th>
                    <th>วันเกิด</th>
                    <th>วันที่เริ่มงาน</th>
                    <th>วันที่ออกงาน</th>
                    <th>Action</th>
                  </tr>
                  </thead>

                  <tbody>
                    <?php foreach ($rows as $row) { ?>
                      <tr>
                        <td><?php echo $row['fname'] ?></td>
                        <td><?php echo $row['lname'] ?></td>
                        <td><?php echo $row['email'] ?></td>
                        <td><?php echo $row['phone'] ?></td>
                        <td><?php echo $row['salary'] ?></td>
                        <td><?php echo $row['birthday'] ?></td>
                        <td><?php echo $row['start_date'] ?></td>
                        <td><?php echo $row['end_date'] ?></ะ>
                        <td>
                          <a href="edit_employee.php?id=<?php echo $row['id'] ?>" class="btn btn-warning">แก้ไข</a>
                          <a href="delete_employee.php?id=<?php echo $row['id'] ?>" class="btn btn-danger" onclick="return confirmAction()">ลบ</a>
                        </td>

                        <script>
                              function confirmAction() {
                                  if(confirm("ต้องการลบข้อมูลพนักงาน?")) {
                                      return true; // ยืนยันการกระทำ
                                  } else {
                                      return false; // ยกเลิกการกระทำ
                                  }
                              }
                        </script>

                      </tr>
                    <?php  } ?>

                  </tbody>


                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTabl../es  & assets/Plugins -->
<script src="../../assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../../assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../../assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../../assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../../assets/plugins/jszip/jszip.min.js"></script>
<script src="../../assets/plugins/pdfmake/pdfmake.min.js"></script>
<script src="../../assets/plugins/pdfmake/vfs_fonts.js"></script>
<script src="../../assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../../assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../../assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="../../assets/dist/js/adminlte.min.js"></script>

<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>


