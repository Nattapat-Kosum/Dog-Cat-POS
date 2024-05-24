<?php 

  session_start();
  if (!isset($_SESSION['user_id'])) {
      header("location: ../../login-register/login.php");
  }

  include "../layout/header-create.php";

  include ("../../src/db/connect.php");

  $sql = "SELECT * FROM member Order by id DESC";
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
            <h1>ข้อมูลลูกค้า</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">หน้าแรก</a></li>
              <li class="breadcrumb-item active">ข้อมูลลูกค้า</li>
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
                    <h3 class="card-title">จัดการลูกค้า</h3>
                </div>

              <div class="p-2">
                <button href="create-employee.php" class="btn btn-block btn-primary" data-toggle="modal" data-target="#staticBackdrop" onclick="handleAdd()">เพิ่มข้อมูลลูกค้า</button>
              </div>
              
            </div>
          </div>

          <?php include "../../components/form-member.php" ?>

              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>รหัสลูกค้า</th>
                    <th>ชื่อ-นามสกุล</th>
                    <th>ประเภท</th>
                    <th>เบอร์โทร</th>
                    <th>ที่อยู่</th>
                    <th>แต้มสะสม</th>
                    <th>วันที่เพิ่ม</th>
                    <th>แก้ไขล่าสุด</th>
                    <th>Action</th>
                  </tr>
                  </thead>

                  <tbody>
                    <?php foreach ($rows as $row) { ?>
                      <tr>
                        <td><?php echo $row['id'] ?></td>
                        <td><?php echo $row['fname']; echo " "; echo $row['lname']; ?></td>
                        <td><?php echo $row['type'] ?></td>
                        <td><?php echo $row['phone'] ?></td>
                        <td><?php echo $row['address'] ?></td>
                        <td><?php echo $row['points'] ?></td>
                        <td><?php echo $row['created_at'] ?></td>
                        <td><?php echo $row['updated_at'] ?></td>
                        
                        <td>
                          <div class="d-flex flex-row bd-highlight">
                            <div class="p-2 bd-highlight">
                              <button class="btn btn-block btn-info" data-toggle="modal" data-target="#staticBackdrop" onclick="handleEdit(<?php echo $row['id'] ?>)">แก้ไข</button>
                            </div>

                            <div class="p-2 bd-highlight">
                              <a href="delete_member.php?id=<?php echo $row['id'] ?>" class="btn btn-danger" onclick="return confirmAction()">ลบ</a>
                            </div>

                            <script>
                              function confirmAction() {
                                  if(confirm("ต้องการลบข้อมูลลูกค้า?")) {
                                      return true; // ยืนยันการกระทำ
                                  } else {
                                      return false; // ยกเลิกการกระทำ
                                  }
                              }
                            </script>

                          </div>
                          
                        </td>

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

  function handleAdd() {
    // เปลี่ยนชื่อ Modal เป็น "แก้ไขข้อมูลลูกค้า"
    document.getElementById("staticBackdropLabel").innerText = "เพิ่มข้อมูลลูกค้า";

    document.getElementById('id').value = "";
    document.getElementById('fname').value = "";
    document.getElementById('lname').value = "";
    document.getElementById('type').value = "";
    document.getElementById('phone').value = "";
    document.getElementById('address').value = "";
    document.getElementById('points').value = "";

    document.getElementById('not').checked = true;
    
  }

  function handleEdit(id) {
    // เปลี่ยนชื่อ Modal เป็น "แก้ไขข้อมูลลูกค้า"
    document.getElementById("staticBackdropLabel").innerText = "แก้ไขข้อมูลลูกค้า";

    // สร้างตัวแปร JavaScript เพื่อเก็บข้อมูลสมาชิก
    var mem = <?php echo json_encode($rows); ?>;
    
    // แสดงข้อมูลใน console
    console.log(mem.find(member => member.id == id));

    const data = mem.find(member => member.id == id);

    document.getElementById('id').value = data.id;
    document.getElementById('fname').value = data.fname;
    document.getElementById('lname').value = data.lname;
    document.getElementById('type').value = data.type;
    document.getElementById('phone').value = data.phone;
    document.getElementById('address').value = data.address;
    document.getElementById('points').value = data.points;

    if (data.sex == "male") {
      document.getElementById('male').checked = true;

    } else if (data.sex == "female") {
      document.getElementById('female').checked = true;

    } else {
      document.getElementById('not').checked = true;
    }


  }

</script>

</body>
</html>
