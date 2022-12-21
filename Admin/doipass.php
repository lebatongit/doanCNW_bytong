<?php 
include "head.php";
?>
<div class="modal fade" id="fdoimatkhau" role="dialog">
    <div class="modal-dialog">
       <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Đổi mật khẩu</h3>
          <?php if (isset($message)) { ?>
            <div class="alert alert-danger alert-dismissible fade in">
              <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
              <?php echo $message; ?>
        </div>
        <?php } ?>
        <div class="modal-body">

          <form method="post" name="f" action="../ktnguoidung/index.php">
          <div class="form-group">
                <label>Tài khoản</label>
                <input class="form-control" type="hidden" name="txtid" value="<?php echo $_SESSION["nguoidung"]["id"]; ?>">
                <input class="form-control" type="text" name="txtTaiKhoan" value="<?php echo $_SESSION["nguoidung"]["username"]; ?>" disabled>
              </div>

              <div class="form-group">
                <label>Mật khẩu cũ</label>
                <input class="form-control" type="password" name="txtoldpass">
              </div>
              <div class="form-group">
                <label>Mật khẩu mới</label>
                <input class="form-control" type="password" name="txtnewpass">
              </div>
              <div class="form-group">
                <label>Xác nhận mật khẩu</label>
                <input class="form-control" type="password" name="txtconfirmpass">
              </div>


              <div class="form-group">
                <input type="hidden" name="action" value="doiMatKhau">
                <input class="btn btn-primary" type="submit" value="Lưu">
                <input class="btn btn-warning" type="reset" value="Hủy">
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
        </div>
      </div>
    </div>
  </div>