// เมื่อมีการเลือก product แสดงผลในลิสรายการสินค้าทางขวาหน้าจอ 

var list = [];
function select_product(mid, mname, mimg, mprice) {
    // console.log("mprice: "+mprice);
    var pass = true;

    for (let i = 0; i < list.length; i++) {
        if (list[i].id == mid) {
            list[i].count++;
            pass = false;
        } else if (list[i].id == -mid) {
            list[i].count--;
            pass = false;
        }
    }

    if (pass) {
        list.push({
            id: mid,
            name: mname,
            price: mprice,
            img: mimg,
            count: 1
        })
    }
    
    var html = '';
    var sumprice = 0;
    var sumcount = 0;

    for (let i = 0; i < list.length; i++) {
        sumprice += list[i].price * list[i].count;
        sumcount += list[i].count;

        if (list[i].count == 0) {
            html += ``;
        } else {
            html += `
            <tr id="tr-count${list[i].id}">
                <td style="width:110px"><img src="src/img/${list[i].img}" class="img-list"></td>
                <td class="td-pd-name">${list[i].name}</td>
                <td class="even-td">
                    <div class="input-group">
                        <button id="count${list[i].id}" class="input-group-text fa-change" onclick="select_product(-${list[i].id}, '${list[i].name}', ${list[i].price}, '${list[i].img}')"><i class="fa fa-minus text-primary"></i></button>
                        <input type="text" class="form-control size-change" disabled value="${list[i].count}"/>
                        <button class="input-group-text fa-change" onclick="select_product(${list[i].id}, '${list[i].name}', ${list[i].price}, '${list[i].img}')"><i class="fa fa-plus text-primary"></i></button>
                    </div>
                </td>
                <td class="price-td">
                    ${numberWithCommas((list[i].price * list[i].count).toFixed(2))} บาท
                </td>
            </tr> 
            `;
        }
    }

    var item_count = document.querySelector(".js-item-count");
    item_count.innerHTML = sumcount;

    var gtotal_div = document.querySelector(".js-gtotal");
    gtotal_div.innerHTML = "รวมทั้งหมด: ฿" + numberWithCommas(sumprice.toFixed(2));
    $("#listbox").html(html);
}

// clear รายการที่อยู่ใน list ทางขวาของหน้าจอทั้งหมด
function clearlist() {
    list = [];
    var item_count = document.querySelector(".js-item-count");
    item_count.innerHTML = 0;
    $("#listbox").html(``);
    $("#total").html(`รวมทั้งหมด: ฿0.00`);
}

// comma , เพิ่ม pattern comma มาใช้กับหน่วยจำนวนเงินหลังจากคิดคำนวณเงิน
function numberWithCommas(x) {
    x = x.toString();
    var pattern = /(-?\d+)(\d{3})/;
    while (pattern.test(x))
        x = x.replace(pattern, "$1,$2");
    return x;
}

// // barcode func ตรวจจับการพิมพ์ keyborad เลขรหัสบาร์โค้ด 13 หลัก
// $("#in_barcode").on('keypress', function (kc) {
//     let keycode = kc.which || kc.keyCode;
//     let value = $(this).val();

//     if (keycode == 13) {
//         $(".col-product").filter(function () {
//             $(this).text().search(value) > -1;
//         });
//         $("#barcode" + value).click();
//         $("#in_barcode").val('');
//     };
// });

// // โฟกัสการยิง barcode หรือพิมพ์ barcode
// function rotate() {
//     $("#in_barcode").focus();
// }

// // เรียกใช้ func rotate ให้ focus ทุก 5 วิ
// setInterval(rotate, 5000);

// AutoFocus ส่วนของพิมพ์จำนวนเงินในหน้าชำระเงิน
$(document).on('shown.bs.modal', function () {
    $('#bill-please').focus();
})

// print list ส่วนหน้าชำระเงิน
function printlist() {
    var html = '';
    var sumprice = 0;
    var sumcount = 0;
    
    html += `
    <center>
        <h3>Dog & Cat</h3>
        วันที่ออกใบเสร็จ: <span id="date_now"></span>
        * <span id="time_now"></span>
        <input type="hidden" id="date_now_sql" name="date_now_sql" value="" />
        <input type="hidden" id="time_now_sql" name="time_now_sql" value=""  />
    </center>
    <table class="table">
        <tr>
            <th class="w-25">จำนวน</th>
            <th class="container-fluid">ชื่อสินค้า</th>
            <th>ราคา(บาท)</th>
        </tr>
    `;

    for (var i = 0; i < list.length; i++) {
        sumprice += list[i].price * list[i].count;
        sumcount += list[i].count;

        if (list[i].count > 0) {
            html += `
            <tr id="check${i}">
                <td>${list[i].count}</td>
                <td>${list[i].name}</td>
                <td>${numberWithCommas (list[i].price * list[i].count)}</td>
                <input type="hidden" name="id_product[]" value="${list[i].id}" />
                <input type="hidden" name="idArr[]" value="${list[i].id}" />
                <input type="hidden" name="pd_name[]" value="${list[i].name}" />
                <input type="hidden" name="price[]" value="${list[i].price}" />
                <input type="hidden" name="count[]" value="${list[i].count}" />
                <input type="hidden" name="countArr[]" value="${list[i].count}" />
                <input type="hidden" name="sumprice" value="${sumprice}" />
                <input type="hidden" name="sumcount" value="${sumcount}" />
                </tr>
                `;
            }
        }

    html += `
        <hr>
            <tr>
                <td><p>รวม</p></td>
                <td><p></p></td>
                <td><p>${numberWithCommas(sumprice)}</p></td>
                <input type="hidden" name="sum" value="${sumprice}" />
            </tr>
            <tr>
                <td><p>รับเงิน</p></td>
                <td><p></p></td>
                <td><input type="number" id="bill-please" name="money_input" class="w-100"></td>
            </tr>
            <tr>
                <td><p>เงินทอน</p></td>
                <td><p></p></td>
                <td><input type="text" class="bill-please border border-white" id="bill-please-hid" name="money_change"></td>
            </tr>
        </hr>
    </table>
    <center><h5>Thank you for supporting!</h5></center>
    `;

    $("#print").html(html);

    var date = new Date();
    document.getElementById("time_now").innerHTML = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds() + ", ";
    document.getElementById("date_now").innerHTML = date.getDate() + "-" + (date.getMonth() + 1) + "-" + date.getFullYear();
    document.getElementById("time_now_sql").value = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
    document.getElementById("date_now_sql").value = date.getDate() + "-" + (date.getMonth() + 1) + "-" + date.getFullYear();


    // bill Section เช็คจำนวนเงินในการชำระสินค้า (เงินชำระไม่พอ === font สีแดง + กดชำระเงินไม่ได้ || เงินชำระถูกต้อง === font สีเขียว + กดชำระเงินได้)
    var billPlease = document.getElementById('bill-please');
    billPlease.addEventListener('input', e => {
        var currentBill = e.target.value;

        if (currentBill === '' || currentBill <= 0) {
            // ถ้าค่าของ 'bill-please' เป็นค่าว่าง
            document.getElementById("bill-please-hid").value = "";
        }
        
        else {
            if (sumprice > currentBill) {
            document.getElementById("bill-please-hid").value = ((sumprice - currentBill) * -1).toFixed(2) + " ฿";
            document.querySelector('.bill-please').style.color = 'red';
            document.getElementById("confirm-bill").disabled = true;
        } else {
            document.getElementById("bill-please-hid").value =  Math.abs(sumprice - currentBill).toFixed(2) + " ฿";
            document.querySelector('.bill-please').style.color = 'green';
            document.getElementById("confirm-bill").disabled = false;
        }
    }
    });

    billPlease.addEventListener('keyup', e => {
        var currentBill = e.target.value;
        
        if (currentBill === '' || currentBill <= 0) {
            // ถ้าค่าของ 'bill-please' เป็นค่าว่าง
            document.getElementById("bill-please-hid").value = "";
        }
        
        else {
            if (sumprice > currentBill) {
            document.getElementById("bill-please-hid").value = ((sumprice - currentBill) * -1).toFixed(2) + " ฿";
            document.querySelector('.bill-please').style.color = 'red';
            document.getElementById("confirm-bill").disabled = true;
        } else {
            document.getElementById("bill-please-hid").value =  Math.abs(sumprice - currentBill).toFixed(2) + " ฿";
            document.querySelector('.bill-please').style.color = 'green';
            document.getElementById("confirm-bill").disabled = false;
        }
    }
    });
}

