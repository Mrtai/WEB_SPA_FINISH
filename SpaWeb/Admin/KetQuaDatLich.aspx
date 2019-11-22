<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="KetQuaDatLich.aspx.cs" Inherits="SpaWeb.Admin.KetQuaDatLich" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="KetQua" SelectMethod="KetQua_GetItem" RenderOuterTable="false" runat="server" ItemType="DAL.LICH_HEN">
        <ItemTemplate>
            <div class="card">
                <div class="card-body">
                <h1 class="card-title">Thông tin chi tiết </h1>

                <div class=" row">
                    <div class="col-lg-6">
                        <asp:Label ID="la" runat="server" Text="Mã lịch hẹn" CssClass="control-label" for="txt_tenSP"></asp:Label>
                        <h4 class="page-title"><%# Item.MA_LH %></h4>
                    
                    </div>
                    <div class="col-lg-6 has-success has-feedback">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Dịch vụ"></asp:Label>
                        <h4 class="page-title"><%# Item.DICH_VU.TEN_DICH_VU %></h4>
                    </div>
                    <div class="col-lg-6 has-success has-feedback">
                        <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Chi nhánh"></asp:Label>
                        <h4 class="page-title"><%# Item.CHI_NHANH.TEN_CHI_NHANH %></h4>
                    </div>
                    <div class="col-lg-6 has-success has-feedback">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Khách hàng"></asp:Label>
                        <h4 class="page-title"><%# Item.KHACH_HANG.TEN_KH %></h4>
                    </div> 
                    <div class="col-lg-6 has-success has-feedback">
                        <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="Email"></asp:Label>
                        <h4 class="page-title"><%# Item.KHACH_HANG.EMAIL %></h4>
                    </div>
                    <div class="col-lg-6 has-success has-feedback">
                        <asp:Label ID="Label5" runat="server" CssClass="control-label" Text="Phone"></asp:Label>
                        <h4 class="page-title"><%# Item.KHACH_HANG.PHONE %></h4>
                    </div>
                    <div class="col-lg-6 has-success has-feedback">
                        <asp:Label ID="Label6" runat="server" CssClass="control-label" Text="Giờ"></asp:Label>
                        <h4 class="page-title"><%# Item.GIO %></h4>
                    </div>
                    <div class="col-lg-6 has-success has-feedback">
                        <asp:Label ID="Label7" runat="server" CssClass="control-label" Text="Ngày"></asp:Label>
                        <h4 class="page-title"><%# Item.NGAY %></h4>
                    </div>
                </div>
                <div>
                    <asp:Button runat="server" ID="btn_Process" CssClass="btn btn-success ml-30" Text="Xử lý" OnClick="btn_Process_Click"/>
                    <a href="DanhSachDatLich.aspx" class="btn btn-danger">Quay Lại</a>
                </div>
              </div>
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
