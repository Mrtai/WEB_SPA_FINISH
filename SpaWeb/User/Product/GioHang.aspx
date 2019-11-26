<%@ Page Title="Giỏ Hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="SpaWeb.User.Product.GioHang" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div style="">
            <hgroup>
                <h2 class="text-primary">Giỏ Hàng</h2>
                </hgroup>
                <asp:Label runat="server" ID="lb_notify" Visible="false" CssClass="text-success text-center" Font-Size="X-Large"></asp:Label>
            <hgroup>
            </hgroup>

             <asp:GridView runat="server" ID="CartItemGridView" CellPadding="4"
                AutoGenerateColumns="false" ShowFooter="true" GridLines="Vertical"
                ItemType="DAL.Model.CartModel" SelectMethod="CartItemGridView_GetData" CssClass="table table-bordered table-hover">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="MA_SP" HeaderText="Mã sản phẩm" />
                    <asp:BoundField DataField="TEN_SP" HeaderText="Tên Sản Phẩm" />
                    <%--<asp:BoundField DataField="DON_GIA" HeaderText="Giá" ID="sp<%# Item. %>"/>--%>
                    <asp:TemplateField  HeaderText="Đơn giá">            
                         <ItemTemplate>
                            <asp:Label runat="server" CssClass="price" Text="<%#: Item.DON_GIA %>" Width="50px" ID="txt_gia"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   <asp:TemplateField  HeaderText="Số Lượng">            
                         <ItemTemplate>
                            <asp:TextBox runat="server" CssClass="form-control quality" Text="<%#: Item.SO_LUONG %>" Width="50px" TextMode="Number" ID="txt_SoLuong"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Thành Tiền">            
                         <ItemTemplate>
                             <span class="sub_total" id="sub_total_<%# Item.id%>"><%#:Convert.ToDouble(Item.DON_GIA) * Convert.ToInt32(Item.SO_LUONG) %></span>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Xóa">            
                         <ItemTemplate>
                            <asp:Button runat="server" Text="Xóa" ID="btn_xoaCartItem" 
                                CssClass="btn btn-danger" OnClick="btn_xoaCartItem_Click"
                                OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?');"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div class="container text-right">
                <asp:Label ID="lb_title" Visible="false" runat="server" Text="Tổng tiền là: $"></asp:Label><asp:Label style="margin-right:22px" Visible="false" ID="lb_tongtien" runat="server" Text="0"></asp:Label>
            </div>
            <div class="container text-right">
             <asp:Button style="margin-right:22px" runat="server" Text="Đặt Hàng" Visible ="false"  ID="btn_datHang" CssClass="btn btn-danger" OnClick="btn_datHang_Click"/>
                </div>
        </div>
    </section>
    <script>
        $(".quality").on("change",function(){ 

            var q = $(this).val();
            var id = $(this).attr('id').substring(41);

            var price = $("#MainContent_CartItemGridView_txt_gia_" + id).html();

            $("#sub_total_" + id).html(q * price);

            count_sub_total();

        });
        function count_sub_total(){

            var total = 0;
            

            $(".sub_total").each(function(){

                total += parseFloat($(this).html());
            });
            
            $("#MainContent_lb_tongtien").html(total);
    }

    </script>
</asp:Content>
