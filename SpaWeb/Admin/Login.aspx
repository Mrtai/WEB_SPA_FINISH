<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SpaWeb.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <!-- Required meta tags -->
  <title>Purple Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.css"/>
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css"/>
  <link rel="stylesheet" href="css/style.css"/>
  <!-- endinject -->
</head>
<body>
    <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left p-5">
              <div class="brand-logo">
                <img src="https://gaspa.vn/wp-content/uploads/2019/05/logo-ngang.png" />
              </div>
                
              <h2>Spa Management</h2>
              
              <form class="pt-3" runat="server">
                <div class="form-group">
                   <asp:TextBox CssClass="form-control form-control-lg" ID="txt_email" runat="server" placeholder="Username"></asp:TextBox>
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" ControlToValidate="txt_email" runat="server" ErrorMessage="Không được bỏ trống trường này"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                   <asp:TextBox CssClass="form-control form-control-lg" TextMode="Password" ID="txt_password" runat="server" placeholder="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" ControlToValidate="txt_password" ValidationExpression="^[\s\S]{6,}$" ErrorMessage="Bạn phải nhập ít nhất 6 ký tự"></asp:RegularExpressionValidator><br/>
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" ControlToValidate="txt_password" runat="server" ErrorMessage="Không được bỏ trống trường này"></asp:RequiredFieldValidator></div>
                <div class="form-group">
                    <asp:Button CssClass="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" ID="btn_dangnhap" runat="server" Text="Đăng nhập" OnClick="btn_dangnhap_Click"  />
                </div>
                
                
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
</body>
<script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
</html>
