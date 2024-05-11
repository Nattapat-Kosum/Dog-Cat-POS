<?php
// error_reporting(0);
include("src/connect/connect.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dog & Cat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="src/css/style.css">

    <!-- Font @Google Font font.google.com -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fuzzy+Bubbles&family=Hind+Siliguri:wght@300&family=Noto+Sans+Thai:wght@300&display=swap" rel="stylesheet">

    <!-- icon -->
    <script src="https://kit.fontawesome.com/f72915bcd5.js" crossorigin="anonymous"></script>

    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>

<body>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="src/js/index.js"></script>
</body>
</html>
