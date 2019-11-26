<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DanhSachKhachHang.aspx.cs" Inherits="SpaWeb.Admin.DanhSachKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
             <div class="card-body">
                <h1 class="text-primary">Danh Sách Khách Hàng</h1>
                <div>
                    <asp:Label runat="server" Text="value" ID="lb_messenger"
                        Visible="false"  CssClass="h3 text-success"></asp:Label>
                </div>
                 <div class="table table-striped">
                    <asp:GridView CssClass="table table-hover table-striped table-condensed text-center" runat="server" ID="KhachHangLoadGrid" AutoGenerateColumns="False"
                        ItemType="DAL.KHACH_HANG" SelectMethod="KhachHangLoadGrid_GetData">
                        <Columns>
                           <asp:TemplateField HeaderText="ID" HeaderStyle-CssClass="h4 text-center">
                            <ItemTemplate>
                                <div>
                                    <%# Eval("MA_KH") %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="Tên khách hàng" HeaderStyle-CssClass="h4 text-center" >
                            <ItemTemplate>
                                <div class="text-left">
                                    <%# Eval("TEN_KH") %>
                                </div>
                            </ItemTemplate>

                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Email" HeaderStyle-CssClass="h4 text-center">
                            <ItemTemplate>
                                <div>
                                    <%#Eval("EMAIL") %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Phone" HeaderStyle-CssClass="h4 text-center">
                            <ItemTemplate>
                                <div>
                                    <%#Eval("PHONE") %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
           </div>
        </div>
</asp:Content>
