<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="SpaWeb.User.Login.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <!-- Required meta tags -->
  <title>Purple Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="css/materialdesignicons.min.css"/>
  <link rel="stylesheet" href="css/vendor.bundle.base.css"/>
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
                <asp:Label ID="lbResult" runat="server" Text="" Visible="false"></asp:Label>
                <asp:HyperLink ID="hyperlink" NavigateUrl="~/User/Login/login.aspx" runat="server" Visible="false">HyperLink</asp:HyperLink>
              <h4>New here?</h4>
              <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
              <form class="pt-3" runat="server">
                  <div class="form-group">
                   <asp:TextBox CssClass="form-control form-control-lg"  ID="txt_name" runat="server" placeholder="Họ tên"></asp:TextBox>
                   <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator6" Display="Dynamic" ControlToValidate="txt_name" runat="server" ErrorMessage="Không được bỏ trống trường này"></asp:RequiredFieldValidator></div>
                 <div class="form-group">
                   <asp:TextBox CssClass="form-control form-control-lg" ID="txt_username" runat="server" placeholder="Username"></asp:TextBox>
                   <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" Display="Dynamic" ControlToValidate="txt_username" runat="server" ErrorMessage="Không được bỏ trống trường này"></asp:RequiredFieldValidator></div>
                <div class="form-group">
                   <asp:TextBox CssClass="form-control form-control-lg" TextMode="Email" ID="txt_email" runat="server" placeholder="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email"  Display="Dynamic" 
                      ErrorMessage="Bạn phải nhập đúng email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" ControlToValidate="txt_email" runat="server" ErrorMessage="Không được bỏ trống trường này" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                   <asp:TextBox CssClass="form-control form-control-lg" TextMode="Phone" ID="txt_phone" runat="server" placeholder="Phone"></asp:TextBox>
                    <asp:RegularExpressionValidator  ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_phone"  Display="Dynamic" 
                      ErrorMessage="Bạn phải nhập đúng số điện thoại" ForeColor="Red" ValidationExpression="^([0-9]{10})$"></asp:RegularExpressionValidator><br />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator5" ControlToValidate="txt_phone" runat="server" ErrorMessage="Không được bỏ trống trường này" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                   <asp:TextBox CssClass="form-control form-control-lg" TextMode="Password" ID="txt_password" runat="server" placeholder="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator  ID="RegularExpressionValidator2" runat="server" ForeColor="Red" ControlToValidate="txt_password" ValidationExpression="^[\s\S]{6,}$" ErrorMessage="Bạn phải nhập ít nhất 6 ký tự" Display="Dynamic"></asp:RegularExpressionValidator><br />
                    <asp:RequiredFieldValidator  ForeColor="Red" ID="RequiredFieldValidator4" ControlToValidate="txt_password" runat="server" ErrorMessage="Không được bỏ trống trường này" Display="Dynamic"></asp:RequiredFieldValidator></div>
                <div class="form-group">
                   <asp:TextBox CssClass="form-control form-control-lg" TextMode="Password" ID="txt_confirm" runat="server" placeholder="Confirm Password"></asp:TextBox> 
                    <asp:CompareValidator Display="Dynamic" ID="CompareValidator1" ForeColor="Red" runat="server" ControlToValidate="txt_confirm" ControlToCompare="txt_password" ErrorMessage="Mật khẩu chưa trùng "></asp:CompareValidator><br />
                    <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator3" ControlToValidate-="txt_confirm" runat="server" ErrorMessage="Không được bỏ trống trường này"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Button CssClass="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" ID="btn_dangky" runat="server" Text="Đăng ký" OnClick="btn_dangky_Click"  />
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
<script src="js/vendor.bundle.base.js"></script>
  <script src="js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
</html>
