

<?php 
 include "head.php";
 
?>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
    <?php 
 include "Header.php";
?> 
    <?php 
 include "aside.php";
?>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Quản lý
            <small>khách hàng</small>
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
      

              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Quản lý khách hàng</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>tên tài khoản</th>
                        <th>Họ tên</th>
                        <th>Trang thái tài khoản</th>
                        <th>Phân quyền</th>
                        <th>Thao Tác</th>
                       

                      </tr>
                    </thead>
                    <tbody>  
                    <?php
                         require '../inc/myconnect.php';
                         $sql="SELECT tendangnhap,matkhau,ten,trangthai,phanquyen from loginadmin";
                         $result = $conn->query($sql); 
                         if ($result->num_rows > 0) {
                          // output data of each row
                          while($row = $result->fetch_assoc()) {
                      ?>       
                        <tr>           
                        <td ><?php echo $row["tendangnhap"] ?></td>
                        <td><?php echo $row["ten"] ?></td>
                        <td><?php 
                         if($row["phanquyen"]==1) echo "Admin"; else echo "Nhân viên" ; 
                        ?>
                        <td><?php 
                         if($row["trangthai"]==1) echo "Kích hoạt"; else echo "Khóa" ; 
                        ?>
                        </td> 
                    
                        </td>   
                            <td>
                              <?php if($row["trangthai"]==1) { ?>
                                <a href="?action=trangthai=0&tendangnhap=<?php echo $row["tendangnhap"]; ?>">Khóa</a></td></tr>
                                <?php 
                              }
                              else { ?>
                                       <a href="?action=trangthai=1&tendangnhap=<?php echo $row["	tendangnhap"]; ?>">Kích hoạt</a></td>



                            </td>

                        <?php } ?>
                        </tr>
                        <?php
                          }
                        }
                         ?>
                     
                      
                    </tbody>                   
                  </table>
                  
                </div><!-- /.box-body -->
             
             
              </div><!-- /.box -->
            
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section>
        <!-- /.content -->
      </div><!-- /.content-wrapper -->
      <?php 
      include "footer.php";
     ?>
  <?php 
 
?>
      <!-- Control Sidebar -->
  
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <!-- page script -->
    <script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>
  </body>
</html>
