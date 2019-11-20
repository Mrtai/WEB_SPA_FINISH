<%@ Page Title="Giỏ Hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="SpaWeb.User.Product.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div style="">
            <link href="../../Content/bootstrap-theme.css" rel="stylesheet" />
            <link href="../../Content/bootstrap-theme.min.css" rel="stylesheet" />
            <link href="../../Content/bootstrap.css" rel="stylesheet" />
            <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
            <link href="../../Content/Site.css" rel="stylesheet" />
            <hgroup>
                <h2 class="text-primary">Giỏ Hàng</h2>
                </hgroup>
                <asp:Label runat="server" ID="lb_notify" Visible="false" CssClass="text-success text-center" Font-Size="X-Large"></asp:Label>
            <hgroup>
            </hgroup>

             <asp:GridView runat="server" ID="CartItemGridView" CellPadding="4"
                AutoGenerateColumns="false" ShowFooter="true" GridLines="Vertical"
                ItemType="DAL.CartItem" SelectMethod="CartItemGridView_GetData" CssClass="table table-bordered table-hover">
                <Columns>
                    <asp:BoundField DataField="CartID" HeaderText="ID" SortExpression="CartID"/>
                    <asp:BoundField DataField="SAN_PHAM.TEN_SP" HeaderText="Tên Sản Phẩm" />
                    <asp:BoundField DataField="SAN_PHAM.GIA" HeaderText="Giá" />
                   <asp:TemplateField  HeaderText="Số Lượng">            
                         <ItemTemplate>
                            <asp:TextBox runat="server" Text="<%#: Item.SoLuong %>" Width="50px" TextMode="Number" ID="txt_SoLuong"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Thành Tiền">            
                         <ItemTemplate>
                             <%#:String.Format("{0:c}",(Convert.ToDouble(Item.SAN_PHAM.GIA) * Convert.ToInt32(Item.SoLuong))) %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Xóa">            
                         <ItemTemplate>
                            <asp:Button runat="server" Text="Xóa" ID="btn_xoaCartItem" 
                                CssClass="btn btn-danger" OnClick="btn_xoaCartItem_Click"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button runat="server" Text="Save"  ID="btn_save" CssClass="btn btn-primary" OnClick="btn_save_Click"/>
             <asp:Button runat="server" Text="Đặt Hàng"  ID="btn_datHang" CssClass="btn btn-danger" OnClick="btn_datHang_Click"/>
        </div>
    </section>

</asp:Content>
