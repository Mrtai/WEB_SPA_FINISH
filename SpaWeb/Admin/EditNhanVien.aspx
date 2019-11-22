<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditNhanVien.aspx.cs" Inherits="SpaWeb.Admin.EditNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        span > label{
            margin-left: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Cập Nhật Nhân Viên</h1>
            
            <asp:Label runat="server" Text="" ID="lb_messenger"
                Visible="false"
                CssClass="text-danger h3"></asp:Label>

            <div class="forms-sample">
                <div class="form-group">
                    <asp:Label ID="la" runat="server" Text="Tên nhân viên" CssClass="control-label" for="txt_tenSP"></asp:Label>
                    
                    <asp:TextBox ID="txt_tenNV" runat="server" CssClass="form-control"></asp:TextBox>
                    
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Email"></asp:Label>
                    
                   <asp:TextBox ID="txt_email" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="Username"></asp:Label>
                    <asp:TextBox ID="txt_username" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Chi Nhánh"></asp:Label>
                    <asp:DropDownList CssClass="form-control" ID="dr_chinhanh" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label5" runat="server" CssClass="control-label" Text="Quyền"></asp:Label>
                    <asp:DropDownList CssClass="form-control"  ID="dr_quyen" runat="server">
                        <asp:ListItem  Value="0"> Chọn quyền </asp:ListItem>
                      <asp:ListItem Value="1"> Quản lý </asp:ListItem>
                      <asp:ListItem Value="2"> Nhân viên </asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Status"></asp:Label><br />
                    <asp:RadioButton CssClass="pr-2" ID="rb_active" GroupName="status" Text="Active" runat="server" /><br />
                    
                    <asp:RadioButton CssClass="pr-2" ID="rb_lock" GroupName="status" Text="Lock" runat="server" />
                </div>
            </div>
            <div>
                <asp:Button runat="server" ID="btn_Save" CssClass="btn btn-success ml-30" Text="Lưu" OnClick="btn_Save_Click" />
                <asp:Button runat="server" ID="btn_Reset" CssClass="btn btn-info"  Text="Reset" OnClick="btn_Reset_Click"/>
                <a href="DanhSachNhanVien.aspx" class="btn btn-danger">Quay Lại</a>
            </div>
          </div>

        </div>
</asp:Content>
