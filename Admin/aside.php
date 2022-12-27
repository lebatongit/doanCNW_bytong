<?php 

 include "head.php";
 
?>
<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="../images/login.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
          
              <?php if(isset($_SESSION['phanquyen'])){
              	echo '<li><span class="glyphicon glyphicon-user"></span> Xin chào ' ; echo '<span style="color:Tomato;"><b>' . $_SESSION['tendangnhap'] . '</b></span></li>' ;
              }
              else{
                echo '<li><span class="glyphicon glyphicon-user"></span> Đăng nhập';               }
              ?>
         
            </div>
          </div>
       
          <ul class="sidebar-menu">
            <li class="header"></li>
            <li class="active treeview">
                <li class="active"><a href="index.php"><i class=""></i>Phần quản lý trang</a></li>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Quản lý</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="qlysanpham.php"><i class=""></i> Quản lý Sách</a></li>
                <li><a href="qlynhasx.php"><i class=""></i> Quản lý Nhà xuất bản</a></li>
                <li><a href="quanlydv.php"><i class=""></i> Quản lý dịch vụ</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-external-link"></i> <span>Danh Sách</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="quanlyhoadon.php"><i class=""></i> Danh Sách hóa đơn</a></li>
                <li><a href="qlykhachhang.php"><i class="glyphicon glyphicon-oil"></i> Danh Sách khách hàng</a></li>
                
                <li> 
               
              <?php if(isset($_SESSION['phanquyen']) && $_SESSION['phanquyen']==1){ ?>
            <li><a href="qlyadmin.php"><span class="glyphicon glyphicon-list-alt"></span> Quản lý người dùng</a></li>
                                     <?php }?>
                        
                         
               
                  </li>
                
        </section>
        <!-- /.sidebar -->
      </aside>