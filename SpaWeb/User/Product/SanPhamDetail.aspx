<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPhamDetail.aspx.cs" Inherits="SpaWeb.User.Product.SanPhamDetail" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />

    
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
               <div style="vertical-align:baseline; height:300px; background-color:aqua">
                
                        <div style=" float:left; width:33%">
                            <img class="img-responsive" style="height:300px; margin-bottom:2em" src="../../Resource/image/<%#:Item.ANH %>"/>
                        </div>
                        <div style="float:right; margin-top:0,5em; width:66%">
                            <asp:Label runat="server" ID="label1" class="h1 text-uppercase" style="line-height: 42px; font-size: 26px"><%#: Item.TEN_SP %></asp:Label>
                            <p>
                                <asp:Label runat="server" style="font-size:35px ; color:midnightblue; font-weight:bold">
                                    <%#: String.Format("{0:c}",Item.GIA) %>
                                </asp:Label>
                            </p>
                            <div>
                               <asp:TextBox CssClass="form-control" ID="txt_soLuong" runat="server" TextMode="Number" Width="80px"></asp:TextBox>
                               <asp:Button runat="server" CssClass="btn btn-primary" Text="Thêm Vào Giỏ Hàng"
                                   ID="btn_AddCart" OnClick="btn_AddCart_Click"/>
                            </div>
                        </div>
                   <div style="float:left;width:100%">
                      <ul style="text-align:center; list-style:none">
                          <li style="display: inline-block;">
                              <a>Mô Tả</a>
                          </li>
                          <li style="display: inline-block;"><asp:Label runat="server">Đánh Giá</asp:Label></li>
                      </ul>
                   </div>
                    <%# Eval("MO_TA")%>
                </div>
                
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
