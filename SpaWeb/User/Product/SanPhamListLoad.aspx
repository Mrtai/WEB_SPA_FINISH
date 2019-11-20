<%@ Page Title="Sản Phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPhamListLoad.aspx.cs" Inherits="SpaWeb.User.Product.SanPhamListLoad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../Content/Site.css" rel="stylesheet" />
    <section>
        <div>
            <h1 class="text-primary">Sản Phẩm</h1>
            <div style="font-size:large">
                <ol class="breadcrumb text-muted">
                    <li>
                        <a href="../../Contact.aspx">Trang Chủ</a>
                    </li>
                    <li>
                        <a href="SanPhamListLoad.aspx">Sản Phẩm</a>
                    </li>
                </ol>
            </div>
            <asp:ListView ID="SanPhamList" runat="server"
                DataKeyNames="Ma_SP" GroupItemCount="4"
                ItemType="DAL.SAN_PHAM"
                SelectMethod="SanPhamList_GetData">
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>Không Có Dữ Liệu Hiển Thị</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate>
                    <td runat="server">
                    <div  class="text-center text-muted text-uppercase"  
                        style="font-size:large;font-family:'Times New Roman'">
                        <div>
                            <a href="SanPhamDetail.aspx?MaSP=<%#:Item.MA_SP %>" >
                               <img class=" img-responsive" style="margin:auto"
                                   src="../../Resource/image/<%#:Item.ANH %>" width="230" height="130" />
                        </div>
                        <div>
                            <div class="center-block" >
                                <a href="SanPhamDetail.aspx?MaSP=<%#:Item.MA_SP %>">
                                    <span class="text-muted "><%#: Item.TEN_SP %></span>

                                </a>
                                <br />
                            </div>
                                <span>
                                    <b>Giá: <%#:String.Format("{0:c}",Item.GIA) %></b>
                                </span> 
                                
                                <td>&nbsp;</td>
                           </div>
                        </div>
                    
                        </td>
                </ItemTemplate>

                <LayoutTemplate>
                    <table style="width:100%">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
           
        </div>
    </section>
</asp:Content>
