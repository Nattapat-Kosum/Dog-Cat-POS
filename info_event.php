<?php include("src/db/connect.php"); ?>
<script>

// Navbar ด้านล่างหน้าจอ ถ้ามีการ get action?homepage จะให้แสดงผลที่หน้าจอ ถ้าไม่จะให้แสดง Modal เลือกประเภทสินค้าของสัตว์เลี้ยง

document.addEventListener("DOMContentLoaded", () => {
    var home = window.location.search.substr(1);
    if (home == "homepage") {
        var html_dog = '';
        html_dog += `
            <div class="row custom-bg-dog">
                <div class="col p-0" data-bs-toggle="modal" data-bs-target="#type_pet">
                    <li class="text-center pro-type border-start border-end border-1">
                        <img src="src/img/icon-dog&cat.png" style="height:45px; margin:0px;">
                        <br><span>ประเภทสัตว์</span></br>
                    </li>
                </div>
            <?php
            $sql = $conn->query("SELECT * FROM product_type");
            $rows = $sql->fetchAll(PDO::FETCH_ASSOC);

            foreach ($rows as $row) { ?>
            
                <div class="col p-0">
                    <li class="text-center pro-type border-start border-end border-1" onclick="select_product_type_dog(<?php echo $row['id']; ?>)">
                        <img src="src/img/<?php echo $row['icon_img']; ?>" alt="" style="height:45px; margin:0px;">
                        <br><span><?php echo $row['product_type']; ?></span></br>
                    </li>
                </div>
            <?php } ?>
            </div>
            `;
        $("#animal_type_product").html(html_dog);
        dogProduct();
        $("section").css("display", "block");
        $("section").css("background", "white");
    } else {
        $(window).on('load', function() {
            $('#type_pet').modal('show');
            $("section").css("display", "none");
        });
    }
});

// ส่วนของหน้าประเภทสินค้าของ - สุนัข

var animal = '';
document.querySelector('#dog').addEventListener('click', function() {
    var html_dog = '';
    html_dog += `
            <div class="row custom-bg-dog">
                <div class="col p-0" data-bs-toggle="modal" data-bs-target="#type_pet">
                    <li class="text-center pro-type border-start border-end border-1">
                        <img src="src/img/icon-dog&cat.png" style="height:45px; margin:0px;">
                        <br><span>ประเภทสัตว์</span></br>
                    </li>
                </div>
            <?php
             $sql = $conn->query("SELECT * FROM product_type");
             $rows = $sql->fetchAll(PDO::FETCH_ASSOC);

             foreach ($rows as $row) { ?>

                <div class="col p-0">
                    <li class="text-center pro-type border-start border-end border-1" onclick="select_product_type_dog(<?php echo $row['id']; ?>)">
                        <img src="src/img/<?php echo $row['icon_img']; ?>" alt="" style="height:45px; margin:0px;">
                        <br><span><?php echo $row['product_type']; ?></span></br>
                    </li>
                </div>
            <?php } ?>
            </div>
        `;
    $("#animal_type_product").html(html_dog);
    dogProduct();
    $("section").css("display", "block");
    $("section").css("background", "white");
});

// ส่วนหน้าประเภทสินค้าของ - แมว

document.querySelector('#cat').addEventListener('click', function() {
    var html_cat = '';
    html_cat += `
            <div class="row custom-bg-cat">
                <div class="col p-0" data-bs-toggle="modal" data-bs-target="#type_pet">
                    <li class="text-center pro-type border-start border-end border-1">
                        <img src="src/img/icon-dog&cat.png" style="height:45px; margin:0px;">
                        <br><span>ประเภทสัตว์</span></br>
                    </li>
                </div>
            <?php
             $sql = $conn->query("SELECT * FROM product_type");
             $rows = $sql->fetchAll(PDO::FETCH_ASSOC);

             foreach ($rows as $row) { ?>

                <div class="col p-0">
                    <li class="text-center pro-type border-start border-end border-1" onclick="select_product_type_cat(<?php echo $row['id']; ?>)">
                        <img src="src/img/<?php echo $row['icon_img']; ?>" alt="" style="height:45px; margin:0px;">
                        <br><span><?php echo $row['product_type']; ?></span></br>
                    </li>
                </div>
            <?php } ?>
            </div>
        `;
    $("#animal_type_product").html(html_cat);
    catProduct();
    $("section").css("display", "block");
    $("section").css("background", "white");
});

// ส่วนแสดงผลสินค้าทั้งหมดของ - สุนัข

function dogProduct() {
    var html = '';
    var list = [];
    html += `
            <?php
            $stmt = $conn->query("SELECT * FROM product WHERE animal = 'dog' ORDER BY `pd_name` ASC");
            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($rows as $row) {

            ?>
                <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                        <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                        <div class="card-body product-info">
                            <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                        </div>
                    </div>
                </div>

 
            <?php } ?>
        `;
    $("#productbox").html(html)
}

// ส่วนแสดงผลสินค้าทั้งหมดของ - แมว

function catProduct() {
    var html = '';
    var list = [];
    html += `
            <?php
            $stmt = $conn->query("SELECT * FROM product WHERE animal = 'cat' ORDER BY `pd_name` ASC");
            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($rows as $row) {

            ?>
                <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                        <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                        <div class="card-body product-info">
                            <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                        </div>
                    </div>
                </div>
            <?php } ?>
        `;
    $("#productbox").html(html)
}

// กำหนดสินค้า และประเภทสินค้าให้ตรงกับชนิดรายการสินค้าของชนิดสัตว์เลี้ยงนั้น ๆ

function select_product_type_dog(idpd_type) {
    var html = ``;
    if (idpd_type == 1) {
        html += `
                <?php
                $stmt = $conn->query("SELECT * FROM product WHERE animal = 'dog' ORDER BY `pd_name` ASC");
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach ($rows as $row) {
                ?>
                    <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                            <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                            <div class="card-body product-info">
                                <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col col-product">
                <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                    <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                    <div class="card-body product-info">
                        <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                    </div>
                </div>
            </div>
                <?php } ?>
            `
    } else if (idpd_type == 2) {
        html += `
                <?php
                $stmt = $conn->query("SELECT * FROM product WHERE animal = 'dog' and `id_type` = '2' ORDER BY `pd_name` ASC");
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach ($rows as $row) {
    
                ?>
                    <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                            <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                            <div class="card-body product-info">
                                <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            `;
    } else if (idpd_type == 3) {
        html += `
                <?php
                $stmt = $conn->query("SELECT * FROM product WHERE animal = 'dog' and `id_type` = '3' ORDER BY `pd_name` ASC");
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach ($rows as $row) {
                ?>
                    <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                            <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                            <div class="card-body product-info">
                                <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            `
    } else if (idpd_type == 4) {
        html += `
                <?php
                $stmt = $conn->query("SELECT * FROM product WHERE animal = 'dog' and `id_type` = '4' ORDER BY `pd_name` ASC");
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach ($rows as $row) {
                ?>
                    <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                            <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                            <div class="card-body product-info">
                                <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            `
    }
    $("#productbox").html(html)
}

function select_product_type_cat(idpd_type) {
    var html = ``;
    if (idpd_type == 1) {
        html += `
                <?php
                $stmt = $conn->query("SELECT * FROM product WHERE animal = 'cat' ORDER BY `pd_name` ASC");
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach ($rows as $row) {
                ?>
                    <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', 
                        '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                            <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                            <div class="card-body product-info">
                                <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            `
    } else if (idpd_type == 2) {
        html += `
                <?php
                $stmt = $conn->query("SELECT * FROM product WHERE animal = 'cat' and `id_type` = '2' ORDER BY `pd_name` ASC");
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach ($rows as $row) {
                ?>
                    <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                            <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                            <div class="card-body product-info">
                                <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            `
    } else if (idpd_type == 3) {
        html += `
                <?php
                $stmt = $conn->query("SELECT * FROM product WHERE animal = 'cat' and `id_type` = '3' ORDER BY `pd_name` ASC");
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach ($rows as $row) {
                ?>
                    <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                            <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                            <div class="card-body product-info">
                                <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            `
    } else if (idpd_type == 4) {
        html += `
                <?php
                $stmt = $conn->query("SELECT * FROM product WHERE animal = 'cat' and `id_type` = '4' ORDER BY `pd_name` ASC");
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach ($rows as $row) {
                ?>
                    <div class="col col-product">
                    <div class="card product-items menu-item overflow-hidden" id="barcode<?php echo $row['barcode'] ?>" onclick="select_product('<?php echo $row['id']; ?>', '<?php echo $row['pd_name']; ?>', '<?php echo $row['img']; ?>', <?php echo str_replace(',', '', number_format($row['price'], 2)); ?>)">
                            <img src="src/img/<?php echo $row['img']; ?>" class="card-img-top me-auto ms-auto card-product">
                            <div class="card-body product-info">
                                <h5 class="line-clamp" style="color:#393646"><?php echo $row['pd_name']; ?></h5>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            `
    }

    $("#productbox").html(html)
}
</script>