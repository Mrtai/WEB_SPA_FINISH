<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DetailBill.aspx.cs" Inherits="SpaWeb.Admin.DetailBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
             <div class="card-body">
                <h1 class="text-primary">Chi Tiết Hóa Đơn</h1>
                <div>
                    <asp:Label runat="server" Text="value" ID="lb_messenger"
                        Visible="false"  CssClass="h3 text-success"></asp:Label>
                </div>
                 <div class="table table-striped">
                    <asp:GridView CssClass="table table-hover table-striped table-condensed text-center" runat="server" ID="ChiTietHoaDonLoadGrid" AutoGenerateColumns="False"
                        SelectMethod="ChiTietHoaDonLoadGrid_GetData">
                        <Columns>
                           <asp:BoundField DataField="SAN_PHAM.TEN_SP" HeaderText="Tên Sản Phẩm"/>
                           <asp:BoundField DataField="SO_LUONG" HeaderText="Số Lượng"/>
                           <asp:BoundField DataField="THANH_TIEN" HeaderText="Thành Tiền" />
                           
                        </Columns>
                    </asp:GridView>
                </div>
           </div>
        </div>
</asp:Content>
