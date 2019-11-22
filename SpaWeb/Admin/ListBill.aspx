<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ListBill.aspx.cs" Inherits="SpaWeb.Admin.Bill.ListBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card">
             <div class="card-body">
                <h1 class="text-primary">Danh Sách Hóa Đơn</h1>
                <div>
                    <a class="btn btn-success text-center" href="AddSanPham.aspx" style="margin-bottom:30px; font-size:larger">Tạo Mới</a>
                    <asp:Label runat="server" Text="value" ID="lb_messenger"
                        Visible="false"  CssClass="h3 text-success"></asp:Label>
                </div>
                 <div class="table table-striped">
                    <asp:GridView CssClass="table table-hover table-striped table-condensed text-center" runat="server" ID="HoaDonLoadGrid" AutoGenerateColumns="False"
                        SelectMethod="HoaDonLoadGrid_GetData">
                        <Columns>
                          
                          <asp:TemplateField HeaderText="Mã Hóa Đơn" HeaderStyle-CssClass="h4 text-center" >
                            <ItemTemplate>
                                <div class="text-left">
                                    <%# Eval("MA_HD") %>
                                </div>
                            </ItemTemplate>

                          </asp:TemplateField>
                        
                          <asp:BoundField DataField="KHACH_HANG.TEN_KH" HeaderText="Khách Hàng"/>

                          <asp:TemplateField HeaderText="Tổng Tiền" HeaderStyle-CssClass="h4 text-center">
                            <ItemTemplate>
                                <div >
                                   <%# Eval("TONG_TIEN") %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>

                            <asp:TemplateField HeaderText="Chức Năng" HeaderStyle-CssClass="h4 text-center">
                                <ItemTemplate>
                                   <a href="#" class="btn btn-google" style="padding:10px">Xác Nhận</a>
                                   <a href="DetailBill.aspx?MaHD=<%# Eval("MA_HD") %>" class="btn btn-facebook" style="padding:10px">Chi Tiết</a>
                                    <a href="SanPhamLoad.aspx"> 
                                   <asp:LinkButton CssClass="btn btn-danger" style="padding:10px" runat ="server" Text="Xóa" 
                                        CommandArgument='<%# Eval("MA_HD") %>' OnClick="btn_Delete_Click"
                                        OnClientClick="return confirm('Bạn Có Muốn Xóa Sản Phẩm Này Không?');"/>
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
           </div>
        </div>
</asp:Content>
