<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="SpaWeb.Admin.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Thay đổi password</h1>
            
            <asp:Label runat="server" Text="" ID="lb_messenger"
                Visible="false"
                CssClass="text-danger h3"></asp:Label>

            <div class="forms-sample">
                <div class="form-group">
                    <asp:Label ID="la" runat="server" Text="Mật khẩu cũ" CssClass="control-label"></asp:Label>
                    <asp:TextBox ID="txt_old_pass" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label2" runat="server"  CssClass="control-label" Text="Mật khẩu mới"></asp:Label>
                   <asp:TextBox ID="txt_new_password" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" ControlToValidate="txt_new_password" ValidationExpression="^[\s\S]{6,}$" ErrorMessage="Bạn phải nhập ít nhất 6 ký tự"></asp:RegularExpressionValidator><br/>
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Nhập lại mật khẩu"></asp:Label>
                   <asp:TextBox ID="txt_confirm" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txt_confirm" ControlToCompare="txt_new_password" runat="server" ErrorMessage="Mật khẩu không trùng khớp"></asp:CompareValidator>
                </div>
                
            </div>
            <div>
                <asp:Button runat="server" ID="btn_Save" CssClass="btn btn-success ml-30" Text="Lưu" OnClick="btn_Save_Click" />
                
                <a href="DanhSachNhanVien.aspx" class="btn btn-danger">Quay Lại</a>
            </div>
          </div>

        </div>
</asp:Content>
