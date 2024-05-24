
<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">ฟอร์มเพิ่มข้อมูลลูกค้า</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

      <form action="../../config/memberConfig.php" method="post">
        <div class="row">
            <div class="col-6">
                <div class="form-group">
                    <label for="fname">ชื่อ <span class="text-red">*</span></label>
                    <input type="text" class="form-control" id="fname" name="fname" value="" id="exampleFormControlInput1" placeholder="ชื่อ" required>
                </div>
             
            </div>

            <div class="col-6">
                <div class="form-group">
                    <label for="lname">นามสกุล <span class="text-red">*</span></label>
                    <input type="text" class="form-control" id="lname" name="lname" value="" placeholder="นามสกุล" required>
                </div>
            </div>

            <div class="col-6">
                <div class="form-group">
                    <label for="type">ประเภท <span class="text-red">*</span></label>
                    <input type="text" class="form-control" id="type" name="type" value="" placeholder="ประเภท" required>
                </div>
            </div>

            <div class="col-6">
                <div class="form-group">
                    <label for="type">เพศ <span class="text-red">*</span></label>
                        <div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="not" name="sex" value="not" class="custom-control-input" checked>
                                <label class="custom-control-label" for="not">ไม่ระบุ</label>
                            </div>

                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="female" name="sex" value="female" class="custom-control-input">
                                <label class="custom-control-label" for="female">หญิง</label>
                            </div>

                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="male" name="sex" value="male" class="custom-control-input">
                                <label class="custom-control-label" for="male">ชาย</label>
                            </div>
                        </div>
                </div>
            </div>

            <div class="col-6">
                <div class="form-group">
                    <label for="phone">เบอร์โทร <span class="text-red">*</span></label>
                    <input type="text" class="form-control" id="phone" name="phone" value="" placeholder="เบอร์โทร" required>
                </div>
            </div>

            <div class="col-6">
                <div class="form-group">
                    <label for="points">แต้มสะสม <span class="text-red">*</span></label>
                    <input type="number" class="form-control" id="points" name="points" value="" placeholder="แต้มสะสม" required>
                </div>
            </div>

            <input type="hidden" name="id" id="id">

            <div class="col-12">
                <div class="form-group">
                    <label for="address">ที่อยู่ลูกค้า</label>
                    <textarea class="form-control" id="address" name="address" value="" rows="3"></textarea>
                </div>
            </div>

        </div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">ยกเลิก</button>
        <button type="submit" class="btn btn-primary">บันทึก</button>
      </div>
      </form>
    </div>
  </div>
</div>