<?php 

session_start();
if (!isset($_SESSION['user_id'])) {
    header("location:login-register/login.php");
}

include './header.php'; 

?>

<title>Dog & Cat</title>
    <div class="modal fade" id="type_pet" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row slider-type ps-3 pe-3">
                        <div class="col-md-6 dog slider-dog" id="dog" data-bs-dismiss="modal">
                            <img src="src/img/icoo-type-dog.png" class="doglogo" alt="">
                        </div>

                        <div class="col-md-6 cat slider-cat" id="cat" data-bs-dismiss="modal">
                            <img src="src/img/icon-type-cat.png" class="catlogo" alt="">
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section>
        <!-- navbar -->
        <nav class="navbar fixed-bottom navbar-light bg-light no-print">
            <div class="container-fluid">
                    <div class="col-md-8 pad-nav">
                        <ul class="navbar-nav mx-auto mb-2 mb-lg-0" id="animal_type_product"></ul>
                    </div>
            </div>
        </nav>

        <!-- product -->
        <div class="container-fluid mt-0 no-print">
            <div class="row">
                <div class="col-md-8" style="background-color:#F0EEED;">
                    <div id="productbox" class="row row-cols-md-3 row-cols-xxl-5 row-cols-sm-1 g-2 overflow-auto product-height mt-auto mb-auto"></div>
                </div>

                <!-- List -->
                <div class="col-md-4 no-print pt-2 bg-list">
                    <div class="container">

                        <div class="row mt-3">
                            <h3 class="text-center">จำนวนรายการสินค้าที่เลือก
                                <div class="js-item-count badge bg-primary rounded-circle">0</div>
                            </h3>

                            <div class="list-box overflow-auto list-height">
                                <table class="table table-striped table-hover">
                                    <tr>
                                        <th>รูปภาพ</th>
                                        <th>รายละเอียด</th>
                                        <th class="fa-count"></th>
                                        <th>ราคา</th>
                                        <tbody id="listbox"></tbody>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="container-fluid">
                            <div class="row mt-1">
                                <div class="js-gtotal alert alert-danger total mb-3" id="total">รวมทั้งหมด: ฿0.00</div>
                            </div>

                            <div class="row">
                                <div class="col-md">
                                    <button onclick="clearlist()" class="btn-clear my-1 w-100">
                                        <i class="fa-solid fa-trash-arrow-up fa-lg"></i><span class="font-confirm"> ลบรายการ</span>
                                    </button>
                                </div>

                                <div class="col-md">
                                    <button onclick="printlist()" class="btn-confirm my-1 w-100" data-bs-toggle="modal" data-bs-target="#modal_print">
                                        <i class="fa-solid fa-money-bill fa-lg"></i><span class="font-confirm"> ชำระเงิน</span>
                                    </button>
                                </div>

                                <input type="text" name="barcode" id="in_barcode" class="in_barcode" value="" onfocus="this.value=''">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Print -->
        <form action="stockCut.php?action=list" method="post">
            <div class="modal fade" id="modal_print" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="form-wrapper">
                                <div id="print"></div>
                            </div>
                        </div>

                        <div class="modal-footer no-print">
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">ยกเลิก</button>
                            <button onclick="window.print();" type="submit" class="btn btn-primary" id="confirm-bill" disabled>ยืนยัน</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <?php include "info_event.php"; ?>
    </section>

    <?php include "./footer.php" ?>
