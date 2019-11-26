<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPhamDetail.aspx.cs" Inherits="SpaWeb.User.Product.SanPhamDetail" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
    
    <asp:FormView ID="sanPhamDetail" SelectMethod="sanPhamDetail_GetItem" RenderOuterTable="false" runat="server" ItemType="DAL.SAN_PHAM">
        <ItemTemplate>
            <div style="height:800px; width:100%">
                <h1 style="background-color:whitesmoke"><%#: Item.TEN_SP %></h1>
                
                <div style="font-size:large">
                    <ol class="breadcrumb text-muted">
                        <li>
                            <a href="../../Contact.aspx">Trang Chủ</a>
                        </li>
                        <li>
                            <a href="SanPhamListLoad.aspx">Sản Phẩm</a>
                        </li>
                        <li>
                            <a href="SanPhamListLoad.aspx?MaSP=<%#:Item.TEN_SP %>"><%#: Item.TEN_SP %></a>
                        </li>
                    </ol>
                </div>
               <div class="row" style="vertical-align:baseline; height:300px;">
                
                        <div class="col-lg-4">
                            <img class="img-responsive" style="height:300px; margin-bottom:2em" src="../../Resource/image/<%#:Item.ANH %>"/>
                        </div>
                        <div class="col-lg-8">
                            <asp:Label runat="server" ID="label1" class="" style="line-height: 42px; font-size: 26px"><%#: Item.TEN_SP %></asp:Label>
                            <div class="form-group">
                              <asp:Label runat="server" style="font-size:35px ; color:midnightblue; font-weight:bold">
                                        <%#: String.Format("{0:c}",Item.GIA) %>
                              </asp:Label>
                            </div>
                            <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="txt_soLuong" runat="server" Text="1"  Width="80px"></asp:TextBox>
                                </div>
                            <div class="form-group">
                              <asp:Button runat="server" CssClass="btn btn-primary" Text="Thêm Vào Giỏ Hàng"
                                       ID="btn_AddCart" OnClick="btn_AddCart_Click"/>
                           </div>    
                        </div>
                </div>

                <div class="row container">
                   <h2 class="text-center">Mô tả</h2>
                    <div >
                        <%# Eval("MO_TA")%>
                    </div>
                   
                </div>
                <div class="row">
                    <h2 class="text-center">Đánh giá</h2>
                </div>
                
            </div>
        </ItemTemplate>
    </asp:FormView>
    <script>
        $("#btn_AddCart_Click").click(function{
            var sl = $("$lb_count_cart").html();
            $("$lb_count_cart").html(sl + 1);
        });
    </script>
</asp:Content>
